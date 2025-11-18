# HookPayment Configuration Examples

This document provides configuration examples for various payment gateways.

## CMI Morocco Configuration

### Production Settings

```
Gateway Type: cmi
Merchant ID: [Your CMI Merchant ID]
API Key: [Your CMI API Key]
API Secret: [Your CMI API Secret]
Sandbox Mode: Off
Production URL: https://payment.cmi.co.ma/fim/api
```

### Field Mappings

```
Payment Endpoint: /payment/create
Status Endpoint: /payment/status
Refund Endpoint: /payment/refund

Payment URL Field: payment_url
Transaction ID Field: transaction_id
Status Field: status
Completed Value: completed
Failed Value: failed
Amount Field: amount
Currency Field: currency
Metadata Field: metadata
```

### Webhook Configuration

```
Verify Webhook Signature: On
Webhook Signature Header: X-CMI-Signature
Webhook Event Field: event_type
Success Events: payment.success,payment.completed
Failure Events: payment.failed,payment.declined
```

### Signature Settings

```
Signature Method: sha256
```

### Currency Support

```
Supported Currencies: MAD,EUR,USD
```

---

## Generic Webhook Gateway Example

This example shows how to configure a generic payment gateway.

### Basic Settings

```
Gateway Type: generic
Merchant ID: [Your Merchant/Store ID]
API Key: [Your API Key]
API Secret: [Your API Secret]
Sandbox Mode: On (for testing)
Sandbox URL: https://sandbox.paymentgateway.com/api/v1
Production URL: https://api.paymentgateway.com/v1
```

### API Endpoints

Adjust these based on your gateway's documentation:

```
Payment Endpoint: /payments/initiate
Status Endpoint: /payments/query
Refund Endpoint: /payments/refund
```

### Response Field Mappings

Map these to match your gateway's API response structure:

```
Payment URL Field: checkout_url
Transaction ID Field: payment_id
Status Field: payment_status
Completed Value: success
Failed Value: failure
Amount Field: total_amount
Currency Field: currency_code
Metadata Field: custom_data
```

### Webhook Configuration

```
Verify Webhook Signature: On
Webhook Signature Header: X-Payment-Signature
Webhook Event Field: event
Success Events: payment.completed,transaction.success
Failure Events: payment.failed,transaction.declined,transaction.cancelled
```

### Signature Settings

Choose based on your gateway's requirements:

```
Signature Method: sha256 (or sha512, sha1, md5)
```

### Custom Fields

If your gateway requires additional fields in the payment request:

```json
{
  "return_method": "POST",
  "callback_method": "POST",
  "language": "en",
  "store_name": "My Store"
}
```

---

## Testing Checklist

Before going live, test the following:

- [ ] Payment initiation creates a valid payment URL
- [ ] Successful payment redirects to success page
- [ ] Failed/cancelled payment redirects to error page
- [ ] Webhook receives payment notifications
- [ ] Webhook signature verification works
- [ ] Order status updates correctly
- [ ] Payment details are logged properly
- [ ] Currency conversion works (if needed)
- [ ] Refunds work (if supported)

---

## Troubleshooting

### Webhook Not Receiving Data

1. Check webhook URL is configured in gateway dashboard
2. Verify signature header name matches gateway
3. Check gateway dashboard for webhook delivery logs
4. Review Laravel logs: `storage/logs/laravel.log`

### Payment Status Not Updating

1. Verify field mappings match gateway API response
2. Check completed/failed values match gateway statuses
3. Review webhook event names
4. Check database for payment record

### Signature Verification Failing

1. Verify API secret is correct
2. Check signature method (SHA-256, etc.)
3. Ensure gateway type matches (CMI vs Generic)
4. Review gateway documentation for signature format

### Currency Not Supported

1. Add currency code to supported currencies list
2. Configure currency conversion if needed
3. Check gateway's supported currencies documentation

---

## Advanced Configuration

### Multiple Gateway Support

You can configure the same plugin for different gateways by:

1. Creating separate payment method instances
2. Using different merchant IDs for each gateway
3. Configuring different endpoints per gateway

### Custom Request/Response Handling

For complex gateways that require special handling:

1. Use the Custom Fields (JSON) setting to add required fields
2. Map all response fields accurately
3. Configure webhook events based on gateway documentation
4. Test thoroughly in sandbox mode

### Logging and Debugging

Enable detailed logging by checking Laravel logs:

```bash
tail -f storage/logs/laravel.log
```

Look for entries with `HookPayment` prefix to debug issues.

---

## Security Best Practices

1. **Always use HTTPS** in production
2. **Enable webhook signature verification**
3. **Keep API credentials secure** - never commit to version control
4. **Use environment variables** for sensitive data
5. **Test in sandbox** before going live
6. **Monitor webhook deliveries** for anomalies
7. **Regularly rotate API keys** as per gateway policies
8. **Set up rate limiting** if your gateway supports it

---

## Common Gateway Patterns

### Pattern 1: Redirect Flow (Most Common)

1. Customer initiates payment
2. API returns payment URL
3. Customer redirected to gateway
4. Customer completes payment
5. Gateway redirects back to success/error URL
6. Webhook confirms payment status

### Pattern 2: Direct Charge

1. Customer initiates payment
2. API processes payment immediately
3. Transaction ID returned
4. Webhook confirms final status

### Pattern 3: Async Processing

1. Customer initiates payment
2. Payment marked as pending
3. Webhook updates status when processed
4. Multiple webhook events possible

Choose appropriate field mappings based on your gateway's flow.

