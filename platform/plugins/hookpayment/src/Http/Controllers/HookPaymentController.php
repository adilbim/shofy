<?php

namespace Botble\HookPayment\Http\Controllers;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\HookPayment\Http\Requests\HookPaymentCallbackRequest;
use Botble\HookPayment\Services\Gateways\HookPaymentService;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Models\Payment;
use Botble\Payment\Supports\PaymentHelper;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;

class HookPaymentController extends BaseController
{
    /**
     * Handle webhook notifications from payment gateway
     */
    public function webhook(Request $request, HookPaymentService $hookPaymentService)
    {
        $payload = $request->getContent();

        // Get signature header name from configuration
        $signatureHeader = get_payment_setting('webhook_signature_header', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'X-Signature');
        $signature = $request->header($signatureHeader);

        if (! $hookPaymentService->setClient()) {
            Log::error('HookPayment Webhook: Invalid configuration');

            return response()->json(['error' => 'Invalid configuration'], 400);
        }

        // Verify webhook signature if enabled
        $verifySignature = get_payment_setting('verify_webhook_signature', HOOKPAYMENT_PAYMENT_METHOD_NAME, true);

        if ($verifySignature && $signature) {
            if (! $hookPaymentService->verifyWebhookSignature($payload, $signature)) {
                Log::error('HookPayment Webhook: Invalid signature', [
                    'signature' => $signature,
                    'header' => $signatureHeader,
                ]);

                return response()->json(['error' => 'Invalid signature'], 401);
            }
        }

        try {
            $data = json_decode($payload, true);

            if (json_last_error() !== JSON_ERROR_NONE) {
                Log::error('HookPayment Webhook: Invalid JSON payload');

                return response()->json(['error' => 'Invalid JSON'], 400);
            }

            do_action('payment_webhook_received', HOOKPAYMENT_PAYMENT_METHOD_NAME, $data);

            // Get field mappings from configuration
            $eventField = get_payment_setting('webhook_event_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'event_type');
            $transactionField = get_payment_setting('transaction_id_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'transaction_id');
            $statusField = get_payment_setting('status_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'status');

            $event = Arr::get($data, $eventField);
            $transactionId = Arr::get($data, $transactionField);
            $status = Arr::get($data, $statusField);

            if (! $transactionId) {
                Log::warning('HookPayment Webhook: No transaction ID found', ['data' => $data]);

                return response()->json(['status' => 'ignored'], 200);
            }

            // Get success and failure event values from configuration
            $successEvents = get_payment_setting('webhook_success_events', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'payment.success,payment.completed');
            $failureEvents = get_payment_setting('webhook_failure_events', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'payment.failed,payment.declined');

            $successEventsList = array_map('trim', explode(',', $successEvents));
            $failureEventsList = array_map('trim', explode(',', $failureEvents));

            // Find payment in database
            $payment = Payment::query()
                ->where('charge_id', $transactionId)
                ->first();

            // Handle success events
            if (in_array($event, $successEventsList) || $status === 'success' || $status === 'completed' || $status === 'paid') {
                if ($payment && $payment->status !== PaymentStatusEnum::COMPLETED) {
                    $payment->status = PaymentStatusEnum::COMPLETED;
                    $payment->save();

                    do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                        'charge_id' => $payment->charge_id,
                        'order_id' => $payment->order_id,
                        'status' => PaymentStatusEnum::COMPLETED,
                    ]);

                    Log::info('HookPayment Webhook: Payment completed', [
                        'transaction_id' => $transactionId,
                        'event' => $event,
                    ]);
                }

                return response()->json(['status' => 'success'], 200);
            }

            // Handle failure events
            if (in_array($event, $failureEventsList) || $status === 'failed' || $status === 'declined') {
                if ($payment && $payment->status !== PaymentStatusEnum::FAILED) {
                    $payment->status = PaymentStatusEnum::FAILED;
                    $payment->save();

                    Log::info('HookPayment Webhook: Payment failed', [
                        'transaction_id' => $transactionId,
                        'event' => $event,
                    ]);
                }

                return response()->json(['status' => 'failed'], 200);
            }

            // Unknown or unhandled event
            Log::info('HookPayment Webhook: Unhandled event', [
                'event' => $event,
                'status' => $status,
                'transaction_id' => $transactionId,
            ]);

            return response()->json(['status' => 'received'], 200);
        } catch (Exception $exception) {
            Log::error('HookPayment Webhook Error: ' . $exception->getMessage(), [
                'payload' => $payload,
                'exception' => $exception->getTraceAsString(),
            ]);

            return response()->json(['error' => 'Processing failed'], 500);
        }
    }

    /**
     * Handle success callback from payment gateway
     */
    public function success(
        HookPaymentCallbackRequest $request,
        HookPaymentService $hookPaymentService,
        BaseHttpResponse $response
    ) {
        try {
            // Get transaction ID field name from configuration
            $transactionField = get_payment_setting('transaction_id_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'transaction_id');
            $transactionId = $request->input($transactionField) ?? $request->input('transaction_id') ?? $request->input('charge_id');

            if (! $transactionId) {
                Log::error('HookPayment Success: No transaction ID found', [
                    'request' => $request->all(),
                ]);

                return $response
                    ->setError()
                    ->setNextUrl(PaymentHelper::getCancelURL())
                    ->setMessage(__('Invalid payment response'));
            }

            $hookPaymentService->setClient();

            do_action('payment_before_making_api_request', HOOKPAYMENT_PAYMENT_METHOD_NAME, ['id' => $transactionId]);

            // Get payment details from gateway
            $paymentDetails = $hookPaymentService->getPaymentDetails($transactionId);

            do_action('payment_after_api_response', HOOKPAYMENT_PAYMENT_METHOD_NAME, ['id' => $transactionId], $paymentDetails ?? []);

            if (! $paymentDetails) {
                Log::error('HookPayment Success: Could not retrieve payment details', [
                    'transaction_id' => $transactionId,
                ]);

                return $response
                    ->setError()
                    ->setNextUrl(PaymentHelper::getCancelURL())
                    ->setMessage(__('Could not verify payment. Please contact support.'));
            }

            // Check payment status
            $statusField = get_payment_setting('status_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'status');
            $completedValue = get_payment_setting('completed_value', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'completed');

            $status = $paymentDetails[$statusField] ?? null;

            if ($status === $completedValue || $status === 'success' || $status === 'paid') {
                // Get metadata
                $metadataField = get_payment_setting('metadata_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'metadata');
                $metadata = $paymentDetails[$metadataField] ?? [];

                if (is_string($metadata)) {
                    $metadata = json_decode($metadata, true) ?? [];
                }

                $orderIds = $metadata['order_id'] ?? [];
                if (is_string($orderIds)) {
                    $orderIds = json_decode($orderIds, true) ?? [];
                }

                // Get amount and currency fields
                $amountField = get_payment_setting('amount_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'amount');
                $currencyField = get_payment_setting('currency_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'currency');

                do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                    'amount' => $paymentDetails[$amountField] ?? 0,
                    'currency' => strtoupper($paymentDetails[$currencyField] ?? 'USD'),
                    'charge_id' => $transactionId,
                    'order_id' => $orderIds,
                    'customer_id' => Arr::get($metadata, 'customer_id'),
                    'customer_type' => Arr::get($metadata, 'customer_type'),
                    'payment_channel' => HOOKPAYMENT_PAYMENT_METHOD_NAME,
                    'status' => PaymentStatusEnum::COMPLETED,
                    'payment_fee' => Arr::get($metadata, 'payment_fee', 0),
                ]);

                return $response
                    ->setNextUrl(PaymentHelper::getRedirectURL() . '?charge_id=' . $transactionId)
                    ->setMessage(__('Checkout successfully!'));
            }

            Log::warning('HookPayment Success: Payment not completed', [
                'transaction_id' => $transactionId,
                'status' => $status,
            ]);

            return $response
                ->setError()
                ->setNextUrl(PaymentHelper::getCancelURL())
                ->setMessage(__('Payment verification failed!'));
        } catch (Exception $exception) {
            Log::error('HookPayment Success Callback Error: ' . $exception->getMessage(), [
                'exception' => $exception->getTraceAsString(),
            ]);

            return $response
                ->setError()
                ->setNextUrl(PaymentHelper::getCancelURL())
                ->setMessage($exception->getMessage() ?: __('Payment failed!'));
        }
    }

    /**
     * Handle error/cancel callback from payment gateway
     */
    public function error(BaseHttpResponse $response)
    {
        return $response
            ->setError()
            ->setNextUrl(PaymentHelper::getCancelURL())
            ->setMessage(__('Payment cancelled or failed!'));
    }
}

