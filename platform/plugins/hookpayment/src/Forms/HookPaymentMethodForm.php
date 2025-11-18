<?php

namespace Botble\HookPayment\Forms;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Payment\Concerns\Forms\HasAvailableCountriesField;
use Botble\Payment\Forms\PaymentMethodForm;

class HookPaymentMethodForm extends PaymentMethodForm
{
    use HasAvailableCountriesField;

    public function setup(): void
    {
        parent::setup();

        $this
            ->paymentId(HOOKPAYMENT_PAYMENT_METHOD_NAME)
            ->paymentName('HookPayment')
            ->paymentDescription('Flexible webhook-based payment gateway (CMI Morocco, and others)')
            ->paymentLogo(url('vendor/core/plugins/hookpayment/images/hookpayment.svg'))
            ->paymentFeeField(HOOKPAYMENT_PAYMENT_METHOD_NAME)
            ->paymentUrl('https://www.cmi.co.ma')
            ->paymentInstructions(view('plugins/hookpayment::instructions')->render())

            // Gateway Type Selection
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_gateway_type',
                SelectField::class,
                SelectFieldOption::make()
                    ->label('Gateway Type')
                    ->choices([
                        'cmi' => 'CMI Morocco',
                        'generic' => 'Generic Webhook Gateway',
                    ])
                    ->selected(get_payment_setting('gateway_type', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'cmi'))
                    ->helperText('Select the type of payment gateway you are integrating')
            )

            // Basic Authentication
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_merchant_id',
                TextField::class,
                TextFieldOption::make()
                    ->label('Merchant ID')
                    ->value(BaseHelper::hasDemoModeEnabled() ? '***********' : get_payment_setting('merchant_id', HOOKPAYMENT_PAYMENT_METHOD_NAME))
                    ->placeholder('Enter your Merchant ID')
                    ->helperText('Your unique merchant identifier from the payment gateway')
                    ->attributes(['data-counter' => 200])
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_api_key',
                'password',
                TextFieldOption::make()
                    ->label('API Key')
                    ->value(BaseHelper::hasDemoModeEnabled() ? '***********' : get_payment_setting('api_key', HOOKPAYMENT_PAYMENT_METHOD_NAME))
                    ->placeholder('Enter your API Key')
                    ->helperText('Your API key for authentication')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_api_secret',
                'password',
                TextFieldOption::make()
                    ->label('API Secret (Optional)')
                    ->value(BaseHelper::hasDemoModeEnabled() ? '***********' : get_payment_setting('api_secret', HOOKPAYMENT_PAYMENT_METHOD_NAME))
                    ->placeholder('Enter your API Secret')
                    ->helperText('API secret for signature generation (if different from API Key)')
            )

            // Environment Settings
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_sandbox_mode',
                OnOffCheckboxField::class,
                CheckboxFieldOption::make()
                    ->label('Enable Sandbox Mode')
                    ->value(get_payment_setting('sandbox_mode', HOOKPAYMENT_PAYMENT_METHOD_NAME, false))
                    ->helperText('Use test environment for development')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_sandbox_url',
                TextField::class,
                TextFieldOption::make()
                    ->label('Sandbox API URL')
                    ->value(get_payment_setting('sandbox_url', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'https://testpayment.cmi.co.ma/fim/api'))
                    ->placeholder('https://testpayment.cmi.co.ma/fim/api')
                    ->helperText('API endpoint for sandbox/test environment')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_production_url',
                TextField::class,
                TextFieldOption::make()
                    ->label('Production API URL')
                    ->value(get_payment_setting('production_url', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'https://payment.cmi.co.ma/fim/api'))
                    ->placeholder('https://payment.cmi.co.ma/fim/api')
                    ->helperText('API endpoint for production environment')
            )

            // API Configuration
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_payment_endpoint',
                TextField::class,
                TextFieldOption::make()
                    ->label('Payment Creation Endpoint')
                    ->value(get_payment_setting('payment_endpoint', HOOKPAYMENT_PAYMENT_METHOD_NAME, '/payment/create'))
                    ->placeholder('/payment/create')
                    ->helperText('API endpoint to create/initiate payment')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_status_endpoint',
                TextField::class,
                TextFieldOption::make()
                    ->label('Payment Status Endpoint')
                    ->value(get_payment_setting('status_endpoint', HOOKPAYMENT_PAYMENT_METHOD_NAME, '/payment/status'))
                    ->placeholder('/payment/status')
                    ->helperText('API endpoint to check payment status')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_refund_endpoint',
                TextField::class,
                TextFieldOption::make()
                    ->label('Refund Endpoint (Optional)')
                    ->value(get_payment_setting('refund_endpoint', HOOKPAYMENT_PAYMENT_METHOD_NAME, '/payment/refund'))
                    ->placeholder('/payment/refund')
                    ->helperText('API endpoint for refunds (if supported)')
            )

            // Signature Configuration
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_signature_method',
                SelectField::class,
                SelectFieldOption::make()
                    ->label('Signature Hash Method')
                    ->choices([
                        'sha256' => 'SHA-256',
                        'sha512' => 'SHA-512',
                        'sha1' => 'SHA-1',
                        'md5' => 'MD5',
                    ])
                    ->selected(get_payment_setting('signature_method', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'sha256'))
                    ->helperText('Hash algorithm for signature generation')
            )

            // Response Field Mappings
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_payment_url_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Payment URL Field Name')
                    ->value(get_payment_setting('payment_url_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'payment_url'))
                    ->placeholder('payment_url')
                    ->helperText('Field name in API response containing the payment redirect URL')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_transaction_id_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Transaction ID Field Name')
                    ->value(get_payment_setting('transaction_id_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'transaction_id'))
                    ->placeholder('transaction_id')
                    ->helperText('Field name in API response containing the transaction ID')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_status_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Status Field Name')
                    ->value(get_payment_setting('status_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'status'))
                    ->placeholder('status')
                    ->helperText('Field name in API response containing the payment status')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_completed_value',
                TextField::class,
                TextFieldOption::make()
                    ->label('Completed Status Value')
                    ->value(get_payment_setting('completed_value', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'completed'))
                    ->placeholder('completed')
                    ->helperText('Status value indicating successful payment (e.g., "completed", "success", "paid")')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_failed_value',
                TextField::class,
                TextFieldOption::make()
                    ->label('Failed Status Value')
                    ->value(get_payment_setting('failed_value', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'failed'))
                    ->placeholder('failed')
                    ->helperText('Status value indicating failed payment (e.g., "failed", "declined")')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_amount_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Amount Field Name')
                    ->value(get_payment_setting('amount_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'amount'))
                    ->placeholder('amount')
                    ->helperText('Field name in API response containing the amount')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_currency_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Currency Field Name')
                    ->value(get_payment_setting('currency_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'currency'))
                    ->placeholder('currency')
                    ->helperText('Field name in API response containing the currency code')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_metadata_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Metadata Field Name')
                    ->value(get_payment_setting('metadata_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'metadata'))
                    ->placeholder('metadata')
                    ->helperText('Field name in API response containing metadata/custom data')
            )

            // Webhook Configuration
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_verify_webhook_signature',
                OnOffCheckboxField::class,
                CheckboxFieldOption::make()
                    ->label('Verify Webhook Signature')
                    ->value(get_payment_setting('verify_webhook_signature', HOOKPAYMENT_PAYMENT_METHOD_NAME, true))
                    ->helperText('Enable signature verification for webhook security')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_webhook_signature_header',
                TextField::class,
                TextFieldOption::make()
                    ->label('Webhook Signature Header')
                    ->value(get_payment_setting('webhook_signature_header', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'X-Signature'))
                    ->placeholder('X-Signature')
                    ->helperText('HTTP header name containing the webhook signature')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_webhook_event_field',
                TextField::class,
                TextFieldOption::make()
                    ->label('Webhook Event Field')
                    ->value(get_payment_setting('webhook_event_field', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'event_type'))
                    ->placeholder('event_type')
                    ->helperText('Field name in webhook payload containing the event type')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_webhook_success_events',
                TextField::class,
                TextFieldOption::make()
                    ->label('Success Event Values')
                    ->value(get_payment_setting('webhook_success_events', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'payment.success,payment.completed'))
                    ->placeholder('payment.success,payment.completed')
                    ->helperText('Comma-separated list of event values indicating successful payment')
            )
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_webhook_failure_events',
                TextField::class,
                TextFieldOption::make()
                    ->label('Failure Event Values')
                    ->value(get_payment_setting('webhook_failure_events', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'payment.failed,payment.declined'))
                    ->placeholder('payment.failed,payment.declined')
                    ->helperText('Comma-separated list of event values indicating failed payment')
            )

            // Currency Support
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_supported_currencies',
                TextField::class,
                TextFieldOption::make()
                    ->label('Supported Currencies')
                    ->value(get_payment_setting('supported_currencies', HOOKPAYMENT_PAYMENT_METHOD_NAME, 'MAD,EUR,USD,GBP'))
                    ->placeholder('MAD,EUR,USD,GBP')
                    ->helperText('Comma-separated list of supported currency codes')
            )

            // Custom Fields (JSON)
            ->add(
                'payment_' . HOOKPAYMENT_PAYMENT_METHOD_NAME . '_custom_fields',
                TextareaField::class,
                TextareaFieldOption::make()
                    ->label('Custom Fields (JSON)')
                    ->value(get_payment_setting('custom_fields', HOOKPAYMENT_PAYMENT_METHOD_NAME, ''))
                    ->placeholder('{"custom_field": "value"}')
                    ->helperText('Additional custom fields to send in payment request (JSON format)')
                    ->rows(3)
            )

            ->addAvailableCountriesField(HOOKPAYMENT_PAYMENT_METHOD_NAME);
    }
}

