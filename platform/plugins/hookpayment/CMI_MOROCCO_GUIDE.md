# CMI Morocco Integration Guide

This guide provides specific instructions for integrating CMI Morocco payment gateway using HookPayment plugin.

## About CMI Morocco

CMI (Centre Monétique Interbancaire) is Morocco's leading payment gateway provider, enabling secure online payments for Moroccan businesses.

## Prerequisites

Before starting, ensure you have:

1. **CMI Merchant Account**: Contact CMI to create a merchant account
2. **API Credentials**: Obtain from CMI dashboard
   - Merchant ID
   - API Key
   - API Secret
3. **Test Account**: Request sandbox credentials for testing
4. **Bank Account**: Linked to your CMI merchant account
5. **Business Documents**: Required for CMI merchant verification

## Step-by-Step Configuration

### 1. Access HookPayment Settings

1. Login to your Botble admin panel
2. Navigate to **Settings** → **Payment**
3. Scroll to **HookPayment** section
4. Click to expand the configuration form

### 2. Basic Configuration

Configure the following fields:

**Gateway Type:**
```
Select: CMI Morocco
```

**Merchant ID:**
```
Enter your CMI Merchant ID (provided by CMI)
Example: 123456789
```

**API Key:**
```
Enter your CMI API Key
Example: pk_live_xxxxxxxxxxxxx (for production)
       pk_test_xxxxxxxxxxxxx (for sandbox)
```

**API Secret:**
```
Enter your CMI API Secret Key
Example: sk_live_xxxxxxxxxxxxx (for production)
       sk_test_xxxxxxxxxxxxx (for sandbox)
```

### 3. Environment Configuration

**For Testing (Sandbox Mode):**

```
Sandbox Mode: ON
Sandbox URL: https://testpayment.cmi.co.ma/fim/api
Production URL: https://payment.cmi.co.ma/fim/api
```

**For Production:**

```
Sandbox Mode: OFF
Production URL: https://payment.cmi.co.ma/fim/api
```

### 4. API Endpoints Configuration

CMI uses the following endpoints:

```
Payment Endpoint: /payment/create
Status Endpoint: /payment/status
Refund Endpoint: /payment/refund
```

### 5. Response Field Mappings

Configure these to match CMI's API response structure:

```
Payment URL Field: payment_url
Transaction ID Field: transaction_id
Status Field: status
Completed Value: completed
Failed Value: failed
Amount Field: amount
Currency Field: currency
Metadata Field: metadata
```

### 6. Signature Configuration

CMI uses SHA-256 for signature generation:

```
Signature Method: sha256
```

### 7. Webhook Configuration

**Webhook URL:**
```
https://yourdomain.com/payment/hookpayment/webhook
```

**Important:** Configure this URL in your CMI merchant dashboard under "Webhook Settings"

**Webhook Settings:**
```
Verify Webhook Signature: ON
Webhook Signature Header: X-CMI-Signature
Webhook Event Field: event_type
Success Events: payment.success,payment.completed
Failure Events: payment.failed,payment.declined
```

### 8. Currency Support

CMI Morocco supports the following currencies:

```
Supported Currencies: MAD,EUR,USD
```

**Primary Currency:** MAD (Moroccan Dirham)

### 9. Additional Settings

**Payment Description:**
```
Enter a description that will appear on customer's payment page
Example: Payment for Order #{order_id} at YourStore.com
```

**Available Countries:**
```
Configure which countries can use this payment method
Default: All countries or select specific ones
```

## CMI-Specific Features

### 1. Payment Flow

CMI uses a redirect flow:

1. Customer clicks "Pay Now"
2. System creates payment request
3. Customer redirected to CMI payment page
4. Customer enters card details on CMI's secure page
5. CMI processes payment
6. Customer redirected back to your site
7. Webhook confirms payment status

### 2. Supported Card Types

CMI accepts:
- Visa
- Mastercard
- Maestro
- American Express (if enabled)
- Local Moroccan cards

### 3. 3D Secure

CMI enforces 3D Secure authentication for enhanced security. This is handled automatically.

### 4. Transaction Limits

Check with CMI for:
- Minimum transaction amount
- Maximum transaction amount
- Daily/monthly limits

## Testing in Sandbox

### 1. Use Test Credentials

Request test credentials from CMI:
- Test Merchant ID
- Test API Keys
- Test card numbers

### 2. CMI Test Cards

CMI provides test card numbers for different scenarios:

**Successful Payment:**
```
Card Number: 4111111111111111
Expiry: Any future date
CVV: 123
3D Secure Code: 123456
```

**Failed Payment:**
```
Card Number: 4000000000000002
(Check CMI documentation for specific test cards)
```

### 3. Test Scenarios

Test the following scenarios:

- [ ] Successful payment
- [ ] Declined payment
- [ ] Cancelled payment
- [ ] 3D Secure authentication
- [ ] Webhook reception
- [ ] Refund (if enabled)
- [ ] Different currencies
- [ ] Different amounts

## Common CMI-Specific Issues

### Issue 1: Signature Mismatch

**Problem:** Webhook signature verification fails

**Solution:**
- Verify API Secret is correct
- Ensure signature method is SHA-256
- Check that webhook URL uses HTTPS
- Contact CMI support to verify webhook configuration

### Issue 2: Payment Not Processing

**Problem:** Payment stuck in pending state

**Solution:**
- Check CMI dashboard for transaction status
- Verify webhook URL is accessible
- Review CMI webhook delivery logs
- Check Laravel logs for errors

### Issue 3: Currency Conversion

**Problem:** Payment amount differs from order amount

**Solution:**
- Verify currency is set to MAD
- Check exchange rates if using other currencies
- Review CMI's currency conversion settings

### Issue 4: 3D Secure Redirect Loop

**Problem:** Customer stuck in authentication loop

**Solution:**
- Verify return URLs are correct
- Check success/error URLs are accessible
- Review CMI 3D Secure settings
- Clear browser cache and cookies

## Going Live Checklist

Before switching to production:

- [ ] Obtain production CMI credentials
- [ ] Update Merchant ID with production value
- [ ] Update API Keys with production values
- [ ] Set Sandbox Mode to OFF
- [ ] Configure production webhook URL in CMI dashboard
- [ ] Verify webhook is receiving events
- [ ] Test with small real transaction
- [ ] Verify bank settlement configuration
- [ ] Review CMI fee structure
- [ ] Set up transaction monitoring
- [ ] Configure email notifications
- [ ] Review refund policy with CMI
- [ ] Test customer support flow

## CMI Dashboard Configuration

In your CMI merchant dashboard, configure:

### 1. Webhook URL
```
https://yourdomain.com/payment/hookpayment/webhook
```

### 2. Return URLs

CMI may require you to configure return URLs:

**Success URL:**
```
https://yourdomain.com/payment/hookpayment/success
```

**Error URL:**
```
https://yourdomain.com/payment/hookpayment/error
```

### 3. Allowed IPs (if required)

Add your server IP to CMI's whitelist if IP restriction is enabled.

### 4. Webhook Events

Enable the following events in CMI dashboard:
- payment.success
- payment.completed
- payment.failed
- payment.declined
- refund.completed (if using refunds)

## Moroccan Regulations

### 1. Currency Regulations

- MAD is the official currency
- Currency conversion must comply with Moroccan central bank regulations
- Keep records of all currency conversions

### 2. Data Protection

- Comply with Moroccan data protection laws
- Store customer payment data securely
- Do NOT store card details (CMI handles this)
- Implement proper data retention policies

### 3. Tax Compliance

- Configure tax rates according to Moroccan law
- Issue proper invoices for all transactions
- Maintain transaction records

## Support and Resources

### CMI Support

**Technical Support:**
- Email: support.technique@cmi.co.ma
- Phone: +212 5XX-XXX-XXX (check CMI website)
- Business Hours: 9:00 AM - 6:00 PM (Morocco time)

**Merchant Support:**
- Email: support.commercial@cmi.co.ma
- Portal: https://merchant.cmi.co.ma

### Documentation

- CMI API Documentation: Request from CMI support
- Integration Guide: Available in merchant portal
- Technical Specifications: Provided during onboarding

### Useful Links

- CMI Official Website: https://www.cmi.co.ma
- Merchant Portal: https://merchant.cmi.co.ma
- Status Page: (check with CMI)

## Advanced Features

### 1. Recurring Payments

If your CMI account supports recurring payments:
- Contact CMI to enable
- Configure additional parameters
- Test subscription flows

### 2. Split Payments

For marketplace scenarios:
- Requires special CMI account
- Contact CMI for marketplace integration
- Configure commission splits

### 3. Multi-Currency

While MAD is primary:
- EUR and USD may be supported
- Check with CMI for availability
- Verify exchange rate settings

## Troubleshooting Tips

### Enable Debug Mode

In Laravel `.env`:
```
APP_DEBUG=true (only for testing!)
LOG_LEVEL=debug
```

### Check Logs

```bash
tail -f storage/logs/laravel.log | grep -i hookpayment
tail -f storage/logs/laravel.log | grep -i cmi
```

### Test Webhook Manually

Use tools like:
- Postman
- cURL
- Webhook testing services

### Common Error Codes

| Code | Meaning | Solution |
|------|---------|----------|
| 001  | Invalid credentials | Check API keys |
| 002  | Signature mismatch | Verify signature method |
| 003  | Invalid amount | Check amount format |
| 004  | Currency not supported | Use MAD, EUR, or USD |
| 005  | Transaction declined | Contact CMI |

## Best Practices

1. **Security**
   - Always use HTTPS
   - Never log full card numbers
   - Rotate API keys regularly
   - Monitor for suspicious activity

2. **Performance**
   - Cache CMI responses when appropriate
   - Implement proper timeout handling
   - Use queue for webhook processing

3. **User Experience**
   - Show loading indicators
   - Provide clear error messages
   - Enable multiple payment methods
   - Optimize mobile experience

4. **Compliance**
   - Follow PCI DSS guidelines
   - Comply with Moroccan regulations
   - Maintain proper documentation
   - Regular security audits

## Frequently Asked Questions

**Q: How long does CMI settlement take?**
A: Typically 2-3 business days. Check with CMI for exact timing.

**Q: Can I use CMI outside Morocco?**
A: CMI primarily serves Moroccan businesses. International payments depend on your agreement with CMI.

**Q: What are CMI transaction fees?**
A: Fees vary by merchant agreement. Contact CMI for your specific rates.

**Q: How do I handle refunds?**
A: Enable refund endpoint and configure refund policy with CMI. Process through admin panel.

**Q: Is test mode free?**
A: Yes, sandbox testing is free and doesn't incur transaction fees.

---

For additional help, contact CMI support or refer to the main HookPayment documentation.

