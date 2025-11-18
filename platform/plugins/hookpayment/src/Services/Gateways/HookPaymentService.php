<?php

namespace Botble\HookPayment\Services\Gateways;

use Botble\HookPayment\Services\Abstracts\HookPaymentAbstract;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Payment\Supports\PaymentHelper;
use Exception;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;

class HookPaymentService extends HookPaymentAbstract
{
    public function makePayment(array $data): ?string
    {
        $this->amount = $data['amount'];
        $this->currency = strtoupper($data['currency']);

        if (! $this->setClient()) {
            $this->setErrorMessage(trans('plugins/payment::payment.payment_configuration_error'));

            return null;
        }

        $request = request();

        // Build payment request data
        $paymentData = [
            'merchant_id' => $this->merchantId,
            'amount' => $this->amount,
            'currency' => $this->currency,
            'order_id' => implode('_', $data['order_id']),
            'description' => trans('plugins/payment::payment.payment_description', [
                'order_id' => implode(', #', $data['order_id']),
                'site_url' => $request->getHost(),
            ]),
            'success_url' => route('payments.hookpayment.success'),
            'cancel_url' => route('payments.hookpayment.error'),
            'webhook_url' => route('payments.hookpayment.webhook'),
            'customer_email' => Arr::get($data, 'customer_email', ''),
            'customer_name' => Arr::get($data, 'customer_name', ''),
            'customer_phone' => Arr::get($data, 'customer_phone', ''),
        ];

        // Add custom fields if configured
        $customFields = get_payment_setting('custom_fields', $this->gatewayName, '');
        if ($customFields) {
            $fields = json_decode($customFields, true);
            if (is_array($fields)) {
                $paymentData = array_merge($paymentData, $fields);
            }
        }

        // Add metadata
        $paymentData['metadata'] = json_encode([
            'order_id' => $data['order_id'],
            'customer_id' => Arr::get($data, 'customer_id'),
            'customer_type' => Arr::get($data, 'customer_type'),
            'return_url' => Arr::get($data, 'return_url'),
            'callback_url' => Arr::get($data, 'callback_url'),
            'payment_fee' => Arr::get($data, 'payment_fee', 0),
        ]);

        // Generate signature
        $signatureParams = $paymentData;
        unset($signatureParams['metadata']); // Don't include metadata in signature
        $paymentData['signature'] = $this->generateSignature($signatureParams);

        do_action('payment_before_making_api_request', HOOKPAYMENT_PAYMENT_METHOD_NAME, $paymentData);

        try {
            // Get payment creation endpoint
            $endpoint = get_payment_setting('payment_endpoint', $this->gatewayName, '/payment/create');

            // Make API request
            $response = $this->sendRequest($endpoint, $paymentData, 'POST');

            do_action('payment_after_api_response', HOOKPAYMENT_PAYMENT_METHOD_NAME, $paymentData, $response);

            // Get field names from configuration
            $urlField = get_payment_setting('payment_url_field', $this->gatewayName, 'payment_url');
            $transactionField = get_payment_setting('transaction_id_field', $this->gatewayName, 'transaction_id');

            // Check if response contains payment URL (redirect flow)
            if (isset($response[$urlField]) && filter_var($response[$urlField], FILTER_VALIDATE_URL)) {
                return $response[$urlField];
            }

            // Check if response contains transaction ID (direct charge)
            if (isset($response[$transactionField])) {
                $this->chargeId = $response[$transactionField];
                $this->afterMakePayment($this->chargeId, $data);

                return $this->chargeId;
            }

            // Payment initiation failed
            $errorMessage = $response['message'] ?? $response['error'] ?? 'Payment initiation failed';
            $this->setErrorMessage($errorMessage);

            Log::error('HookPayment: Payment initiation failed', [
                'response' => $response,
                'data' => $data,
            ]);

            return null;
        } catch (Exception $exception) {
            Log::error(
                'HookPayment Error: ' . $exception->getMessage(),
                PaymentHelper::formatLog($data, __LINE__, __FUNCTION__, __CLASS__)
            );
            $this->setErrorMessage($exception->getMessage());

            return null;
        }
    }

    public function afterMakePayment(string $chargeId, array $data): string
    {
        try {
            do_action('payment_before_making_api_request', HOOKPAYMENT_PAYMENT_METHOD_NAME, ['id' => $chargeId]);

            // Get payment details to verify status
            $paymentDetails = $this->getPaymentDetails($chargeId);

            do_action('payment_after_api_response', HOOKPAYMENT_PAYMENT_METHOD_NAME, ['id' => $chargeId], $paymentDetails ?? []);

            $paymentStatus = PaymentStatusEnum::PENDING;

            if ($paymentDetails) {
                // Get status field from configuration
                $statusField = get_payment_setting('status_field', $this->gatewayName, 'status');
                $completedValue = get_payment_setting('completed_value', $this->gatewayName, 'completed');
                $failedValue = get_payment_setting('failed_value', $this->gatewayName, 'failed');

                $status = $paymentDetails[$statusField] ?? null;

                if ($status === $completedValue || $status === 'success' || $status === 'paid') {
                    $paymentStatus = PaymentStatusEnum::COMPLETED;
                } elseif ($status === $failedValue || $status === 'failed' || $status === 'declined') {
                    $paymentStatus = PaymentStatusEnum::FAILED;
                }
            }

            do_action(PAYMENT_ACTION_PAYMENT_PROCESSED, [
                'amount' => $data['amount'],
                'currency' => $data['currency'],
                'charge_id' => $chargeId,
                'order_id' => (array) $data['order_id'],
                'customer_id' => Arr::get($data, 'customer_id'),
                'customer_type' => Arr::get($data, 'customer_type'),
                'payment_channel' => HOOKPAYMENT_PAYMENT_METHOD_NAME,
                'status' => $paymentStatus,
                'payment_fee' => Arr::get($data, 'payment_fee', 0),
            ]);

            return $chargeId;
        } catch (Exception $exception) {
            Log::error('HookPayment After Payment Error: ' . $exception->getMessage());

            return $chargeId;
        }
    }

    /**
     * Supported currencies - configurable per gateway
     */
    public function supportedCurrencyCodes(): array
    {
        // Get supported currencies from settings
        $currencies = get_payment_setting('supported_currencies', $this->gatewayName, '');

        if (empty($currencies)) {
            // Default currencies for CMI Morocco and common gateways
            return [
                'MAD', // Moroccan Dirham
                'EUR',
                'USD',
                'GBP',
            ];
        }

        // Parse comma-separated list
        return array_map('trim', explode(',', strtoupper($currencies)));
    }
}

