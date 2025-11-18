<?php

namespace Botble\HookPayment\Services\Abstracts;

use Botble\Payment\Services\Traits\PaymentErrorTrait;
use Exception;
use Illuminate\Support\Facades\Log;

abstract class HookPaymentAbstract
{
    use PaymentErrorTrait;

    protected float $amount;

    protected string $currency;

    protected string $chargeId;

    protected bool $supportRefundOnline = false;

    // Configurable properties for any webhook-based gateway
    protected ?string $merchantId = null;

    protected ?string $apiKey = null;

    protected ?string $apiSecret = null;

    protected ?string $apiEndpoint = null;

    protected bool $sandboxMode = false;

    protected array $config = [];

    protected string $gatewayName = HOOKPAYMENT_PAYMENT_METHOD_NAME;

    public function getSupportRefundOnline(): bool
    {
        return $this->supportRefundOnline;
    }

    /**
     * Initialize payment gateway client/connection
     */
    public function setClient(): bool
    {
        $this->merchantId = get_payment_setting('merchant_id', $this->gatewayName);
        $this->apiKey = get_payment_setting('api_key', $this->gatewayName);
        $this->apiSecret = get_payment_setting('api_secret', $this->gatewayName);
        $this->sandboxMode = get_payment_setting('sandbox_mode', $this->gatewayName, false);

        // Set API endpoint based on sandbox mode
        if ($this->sandboxMode) {
            $this->apiEndpoint = get_payment_setting('sandbox_url', $this->gatewayName);
        } else {
            $this->apiEndpoint = get_payment_setting('production_url', $this->gatewayName);
        }

        // Load additional configuration
        $this->config = [
            'gateway_type' => get_payment_setting('gateway_type', $this->gatewayName, 'cmi'),
            'signature_method' => get_payment_setting('signature_method', $this->gatewayName, 'sha256'),
            'request_method' => get_payment_setting('request_method', $this->gatewayName, 'POST'),
            'response_format' => get_payment_setting('response_format', $this->gatewayName, 'json'),
        ];

        if (! $this->apiKey || ! $this->apiEndpoint) {
            return false;
        }

        return true;
    }

    /**
     * Execute payment with error handling
     */
    public function execute(array $data): ?string
    {
        try {
            return $this->makePayment($data);
        } catch (Exception $exception) {
            $this->setErrorMessageAndLogging($exception, 1);

            return null;
        }
    }

    /**
     * Make payment - to be implemented by specific gateway
     */
    abstract public function makePayment(array $data): ?string;

    /**
     * After payment callback - to be implemented by specific gateway
     */
    abstract public function afterMakePayment(string $chargeId, array $data);

    /**
     * Generate payment signature based on gateway type
     */
    protected function generateSignature(array $params): string
    {
        $gatewayType = $this->config['gateway_type'] ?? 'cmi';
        $signatureMethod = $this->config['signature_method'] ?? 'sha256';

        // Sort parameters for consistent signature
        ksort($params);

        // Build signature string based on gateway type
        switch ($gatewayType) {
            case 'cmi':
                // CMI Morocco specific signature
                $signatureString = implode('|', array_values($params));
                $signatureString .= '|' . $this->apiSecret ?? $this->apiKey;
                break;

            case 'generic':
            default:
                // Generic webhook gateway signature
                $signatureString = http_build_query($params) . $this->apiSecret ?? $this->apiKey;
                break;
        }

        // Generate hash based on method
        switch ($signatureMethod) {
            case 'md5':
                return md5($signatureString);
            case 'sha1':
                return sha1($signatureString);
            case 'sha512':
                return hash('sha512', $signatureString);
            case 'sha256':
            default:
                return hash('sha256', $signatureString);
        }
    }

    /**
     * Verify webhook signature
     */
    public function verifyWebhookSignature(string $payload, string $signature): bool
    {
        $secret = $this->apiSecret ?? $this->apiKey;
        $signatureMethod = $this->config['signature_method'] ?? 'sha256';

        $calculatedSignature = hash_hmac($signatureMethod, $payload, $secret);

        return hash_equals($calculatedSignature, $signature);
    }

    /**
     * Send HTTP request to payment gateway API
     */
    protected function sendRequest(string $endpoint, array $data, string $method = 'POST'): array
    {
        $url = rtrim($this->apiEndpoint, '/') . '/' . ltrim($endpoint, '/');

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);

        // Build headers
        $headers = [
            'Content-Type: application/json',
            'Accept: application/json',
        ];

        // Add authentication headers
        if ($this->merchantId) {
            $headers[] = 'Merchant-Id: ' . $this->merchantId;
        }

        if ($this->apiKey) {
            $headers[] = 'Authorization: Bearer ' . $this->apiKey;
        }

        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        // Set request method and data
        if (strtoupper($method) === 'POST') {
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        } elseif (strtoupper($method) === 'GET' && ! empty($data)) {
            curl_setopt($ch, CURLOPT_URL, $url . '?' . http_build_query($data));
        }

        $response = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $error = curl_error($ch);
        curl_close($ch);

        if ($error) {
            Log::error('HookPayment API cURL Error: ' . $error);
            throw new Exception('Payment gateway connection error: ' . $error);
        }

        if ($httpCode >= 400) {
            Log::error('HookPayment API HTTP Error: ' . $httpCode, ['response' => $response]);
            throw new Exception("Payment gateway error: HTTP {$httpCode}");
        }

        $responseFormat = $this->config['response_format'] ?? 'json';

        if ($responseFormat === 'json') {
            $decoded = json_decode($response, true);
            if (json_last_error() !== JSON_ERROR_NONE) {
                throw new Exception('Invalid JSON response from payment gateway');
            }

            return $decoded;
        }

        // For XML or other formats, return as-is (can be extended)
        return ['raw' => $response];
    }

    public function setCurrency(string $currency): static
    {
        $this->currency = $currency;

        return $this;
    }

    /**
     * Get payment details from gateway
     */
    public function getPaymentDetails(string $transactionId): ?array
    {
        if (! $this->setClient()) {
            return null;
        }

        try {
            $endpoint = get_payment_setting('status_endpoint', $this->gatewayName, '/payment/status');

            return $this->sendRequest($endpoint, [
                'transaction_id' => $transactionId,
                'merchant_id' => $this->merchantId,
            ], 'POST');
        } catch (Exception $exception) {
            Log::error('HookPayment Get Payment Details Error: ' . $exception->getMessage());

            return null;
        }
    }

    /**
     * Refund order if supported by gateway
     */
    public function refundOrder(string $paymentId, float|string $totalAmount, array $options = []): array
    {
        if (! $this->setClient()) {
            return [
                'error' => true,
                'message' => trans('plugins/payment::payment.invalid_settings', ['name' => 'HookPayment']),
            ];
        }

        if (! $this->supportRefundOnline) {
            return [
                'error' => true,
                'message' => trans('plugins/payment::payment.refund_not_supported'),
            ];
        }

        try {
            $endpoint = get_payment_setting('refund_endpoint', $this->gatewayName, '/payment/refund');

            $response = $this->sendRequest($endpoint, [
                'transaction_id' => $paymentId,
                'amount' => $totalAmount,
                'currency' => $this->currency,
                'merchant_id' => $this->merchantId,
                'metadata' => $options,
            ], 'POST');

            // Check for success based on gateway response
            $successField = get_payment_setting('success_field', $this->gatewayName, 'status');
            $successValue = get_payment_setting('success_value', $this->gatewayName, 'success');

            if (isset($response[$successField]) && $response[$successField] === $successValue) {
                return [
                    'error' => false,
                    'message' => $response['message'] ?? 'Refund successful',
                    'data' => $response,
                ];
            }

            return [
                'error' => true,
                'message' => $response['message'] ?? trans('plugins/payment::payment.status_is_not_completed'),
            ];
        } catch (Exception $exception) {
            return [
                'error' => true,
                'message' => $exception->getMessage(),
            ];
        }
    }
}

