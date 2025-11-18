<?php

namespace Botble\HookPayment\Providers;

use Botble\Base\Facades\Html;
use Botble\HookPayment\Forms\HookPaymentMethodForm;
use Botble\HookPayment\Services\Gateways\HookPaymentService;
use Botble\Payment\Enums\PaymentMethodEnum;
use Botble\Payment\Facades\PaymentMethods;
use Botble\Payment\Supports\PaymentFeeHelper;
use Illuminate\Http\Request;
use Illuminate\Support\ServiceProvider;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        // Register payment method
        add_filter(PAYMENT_FILTER_ADDITIONAL_PAYMENT_METHODS, [$this, 'registerHookPaymentMethod'], 16, 2);

        // Handle checkout
        $this->app->booted(function (): void {
            add_filter(PAYMENT_FILTER_AFTER_POST_CHECKOUT, [$this, 'checkoutWithHookPayment'], 16, 2);
        });

        // Add settings page
        add_filter(PAYMENT_METHODS_SETTINGS_PAGE, [$this, 'addPaymentSettings'], 16);

        // Register enum
        add_filter(BASE_FILTER_ENUM_ARRAY, function ($values, $class) {
            if ($class == PaymentMethodEnum::class) {
                $values['HOOKPAYMENT'] = HOOKPAYMENT_PAYMENT_METHOD_NAME;
            }

            return $values;
        }, 16, 2);

        add_filter(BASE_FILTER_ENUM_LABEL, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == HOOKPAYMENT_PAYMENT_METHOD_NAME) {
                $value = 'HookPayment';
            }

            return $value;
        }, 16, 2);

        add_filter(BASE_FILTER_ENUM_HTML, function ($value, $class) {
            if ($class == PaymentMethodEnum::class && $value == HOOKPAYMENT_PAYMENT_METHOD_NAME) {
                $value = Html::tag(
                    'span',
                    PaymentMethodEnum::getLabel($value),
                    ['class' => 'label-success status-label']
                )->toHtml();
            }

            return $value;
        }, 16, 2);

        // Register service class
        add_filter(PAYMENT_FILTER_GET_SERVICE_CLASS, function ($data, $value) {
            if ($value == HOOKPAYMENT_PAYMENT_METHOD_NAME) {
                $data = HookPaymentService::class;
            }

            return $data;
        }, 16, 2);

        // Payment details
        add_filter(PAYMENT_FILTER_PAYMENT_INFO_DETAIL, function ($data, $payment) {
            if ($payment->payment_channel == HOOKPAYMENT_PAYMENT_METHOD_NAME) {
                $paymentService = new HookPaymentService();
                $paymentDetail = $paymentService->getPaymentDetails($payment->charge_id);
                $data = view('plugins/hookpayment::detail', ['payment' => $paymentDetail])->render();
            }

            return $data;
        }, 16, 2);
    }

    public function addPaymentSettings(?string $settings): string
    {
        return $settings . HookPaymentMethodForm::create()->renderForm();
    }

    public function registerHookPaymentMethod(?string $html, array $data): string
    {
        PaymentMethods::method(HOOKPAYMENT_PAYMENT_METHOD_NAME, [
            'html' => view('plugins/hookpayment::methods', $data)->render(),
        ]);

        return $html;
    }

    public function checkoutWithHookPayment(array $data, Request $request): array
    {
        if ($data['type'] !== HOOKPAYMENT_PAYMENT_METHOD_NAME) {
            return $data;
        }

        $hookPaymentService = $this->app->make(HookPaymentService::class);
        $currentCurrency = get_application_currency();

        $paymentData = apply_filters(PAYMENT_FILTER_PAYMENT_DATA, [], $request);

        $orderAmount = $paymentData['amount'] ?? 0;
        $paymentFee = 0;

        if (is_plugin_active('payment')) {
            $paymentFee = PaymentFeeHelper::calculateFee(HOOKPAYMENT_PAYMENT_METHOD_NAME, $orderAmount);
        }

        $paymentData['payment_fee'] = $paymentFee;
        $paymentData['amount'] = $orderAmount + $paymentFee;

        if (! isset($paymentData['currency'])) {
            $paymentData['currency'] = strtoupper(get_application_currency()->title);
        }

        $supportedCurrencies = $hookPaymentService->supportedCurrencyCodes();

        // Check currency support
        if (! in_array($paymentData['currency'], $supportedCurrencies)) {
            // Try to convert to a supported currency
            $currencyModel = $currentCurrency->replicate();
            $supportedCurrency = null;

            // Try to find USD first, then EUR
            foreach (['USD', 'EUR', 'MAD'] as $fallbackCurrency) {
                if (in_array($fallbackCurrency, $supportedCurrencies)) {
                    $supportedCurrency = $currencyModel->query()->where('title', $fallbackCurrency)->first();
                    if ($supportedCurrency) {
                        break;
                    }
                }
            }

            if ($supportedCurrency) {
                $paymentData['currency'] = strtoupper($supportedCurrency->title);
                if ($currentCurrency->is_default) {
                    $paymentData['amount'] = $paymentData['amount'] * $supportedCurrency->exchange_rate;
                } else {
                    $paymentData['amount'] = format_price(
                        $paymentData['amount'] / $currentCurrency->exchange_rate,
                        $currentCurrency,
                        true
                    );
                }
            }
        }

        // Final currency check
        if (! in_array($paymentData['currency'], $supportedCurrencies)) {
            $data['error'] = true;
            $data['message'] = __(
                ":name doesn't support :currency. Supported currencies: :currencies.",
                [
                    'name' => 'HookPayment',
                    'currency' => $paymentData['currency'],
                    'currencies' => implode(', ', $supportedCurrencies),
                ]
            );

            return $data;
        }

        $result = $hookPaymentService->execute($paymentData);

        if ($hookPaymentService->getErrorMessage()) {
            $data['error'] = true;
            $data['message'] = $hookPaymentService->getErrorMessage();
        } elseif ($result) {
            // If result is a URL, redirect to it
            if (filter_var($result, FILTER_VALIDATE_URL)) {
                $data['checkoutUrl'] = $result;
            } else {
                // Direct charge - charge ID returned
                $data['charge_id'] = $result;
            }
        }

        return $data;
    }
}

