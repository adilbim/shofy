# HookPayment - Flexible Webhook Payment Gateway Plugin

A powerful and flexible payment gateway plugin for Botble CMS that supports webhook-based payment gateways including CMI Morocco and other custom payment gateways.

## Features

- **Universal Webhook Support**: Works with any webhook-based payment gateway
- **Highly Configurable**: Map API endpoints, field names, and response structures
- **CMI Morocco Ready**: Pre-configured for CMI payment gateway
- **Secure Webhooks**: Signature verification for webhook security
- **Multi-Currency**: Support for multiple currencies
- **Sandbox Mode**: Test integration before going live
- **Flexible Signature Generation**: Support for SHA-256, SHA-512, SHA-1, and MD5
- **Custom Field Mapping**: Configure field names to match any gateway's API
- **Refund Support**: Optional refund functionality (if supported by gateway)

## Installation

1. Extract the plugin to `platform/plugins/hookpayment`
2. Run: `php artisan plugin:activate hookpayment`
3. Navigate to **Payment Settings** in your admin panel
4. Configure HookPayment settings

## Configuration

### Basic Setup

1. **Gateway Type**: Choose between CMI Morocco or Generic Webhook Gateway
2. **Merchant ID**: Your unique merchant identifier
3. **API Key**: Your API authentication key
4. **API Secret**: (Optional) Separate secret for signature generation

### Environment

- **Sandbox Mode**: Enable for testing
- **Sandbox URL**: Test environment API endpoint
- **Production URL**: Live environment API endpoint

### API Endpoints

Configure the endpoints for:
- Payment Creation: `/payment/create`
- Payment Status: `/payment/status`
- Refund: `/payment/refund` (optional)

### Field Mappings

Map your gateway's response fields:
- **Payment URL Field**: Field containing redirect URL (e.g., `payment_url`)
- **Transaction ID Field**: Field containing transaction ID (e.g., `transaction_id`)
- **Status Field**: Field containing payment status (e.g., `status`)
- **Completed Value**: Value indicating success (e.g., `completed`, `success`, `paid`)
- **Failed Value**: Value indicating failure (e.g., `failed`, `declined`)

### Webhook Configuration

Configure webhook handling:
- **Verify Signature**: Enable/disable signature verification
- **Signature Header**: HTTP header name for signature (e.g., `X-Signature`)
- **Event Field**: Field containing event type
- **Success Events**: Comma-separated list of success events
- **Failure Events**: Comma-separated list of failure events

### Webhook URL

Configure this URL in your payment gateway dashboard:
```
https://yourdomain.com/payment/hookpayment/webhook
```

## CMI Morocco Configuration

For CMI Morocco, use these settings:

- **Gateway Type**: CMI Morocco
- **Production URL**: `https://payment.cmi.co.ma/fim/api`
- **Sandbox URL**: `https://testpayment.cmi.co.ma/fim/api`
- **Signature Method**: SHA-256
- **Supported Currencies**: MAD, EUR, USD

## Generic Gateway Configuration

For other webhook-based gateways:

1. Select "Generic Webhook Gateway"
2. Configure API endpoints according to your gateway's documentation
3. Map response fields to match your gateway's API structure
4. Set up webhook signature verification
5. Configure supported currencies

## Custom Fields

Add additional fields to payment requests using JSON format:

```json
{
  "custom_field_1": "value1",
  "custom_field_2": "value2"
}
```

## Testing

1. Enable **Sandbox Mode**
2. Configure sandbox credentials
3. Process a test payment
4. Verify webhook reception in logs
5. Check payment status updates

## Security

- All API credentials are encrypted
- Webhook signatures are verified
- HTTPS required for production
- Secure token handling

## Support

For issues or questions:
- Check logs in `storage/logs/laravel.log`
- Review webhook payload in payment gateway dashboard
- Verify field mappings match gateway documentation

## License

MIT License

## Version

1.0.0

