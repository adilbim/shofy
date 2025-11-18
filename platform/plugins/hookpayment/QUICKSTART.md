# HookPayment Quick Start Guide

Get up and running with HookPayment in 5 minutes!

## For CMI Morocco Users

### 1. Install and Activate

```bash
cd /home/adilbim/projects/e-com/shofy
php artisan plugin:activate hookpayment
php artisan vendor:publish --tag=cms-public --force
php artisan cache:clear
```

### 2. Configure Basic Settings

Go to **Admin Panel** → **Settings** → **Payment** → **HookPayment**

**Essential Fields:**
```
Gateway Type: CMI Morocco
Merchant ID: [your_cmi_merchant_id]
API Key: [your_cmi_api_key]
API Secret: [your_cmi_api_secret]
Sandbox Mode: ON (for testing)
Sandbox URL: https://testpayment.cmi.co.ma/fim/api
Production URL: https://payment.cmi.co.ma/fim/api
```

### 3. Configure Webhook

Copy your webhook URL:
```
https://yourdomain.com/payment/hookpayment/webhook
```

Add it to your CMI dashboard under webhook settings.

### 4. Set Currency

```
Supported Currencies: MAD,EUR,USD
```

### 5. Test

- Enable the payment method at checkout
- Place a test order
- Use CMI test card: 4111111111111111
- Verify payment completes successfully

### 6. Go Live

When ready:
- Set Sandbox Mode to OFF
- Update to production credentials
- Test with a small real transaction

**Done!** 🎉

---

## For Other Payment Gateways

### 1. Install and Activate

```bash
cd /home/adilbim/projects/e-com/shofy
php artisan plugin:activate hookpayment
php artisan vendor:publish --tag=cms-public --force
php artisan cache:clear
```

### 2. Gather Gateway Information

You'll need:
- [ ] API Base URL (sandbox and production)
- [ ] Authentication credentials (API Key, Merchant ID, etc.)
- [ ] Payment creation endpoint
- [ ] Payment status endpoint
- [ ] Response field names (transaction_id, status, etc.)
- [ ] Webhook configuration details

### 3. Configure Settings

Go to **Admin Panel** → **Settings** → **Payment** → **HookPayment**

**Basic Authentication:**
```
Gateway Type: Generic Webhook Gateway
Merchant ID: [your_merchant_id]
API Key: [your_api_key]
API Secret: [your_api_secret]
Sandbox Mode: ON
Sandbox URL: [gateway_test_url]
Production URL: [gateway_live_url]
```

**API Endpoints:**
```
Payment Endpoint: [e.g., /payment/create]
Status Endpoint: [e.g., /payment/status]
Refund Endpoint: [e.g., /payment/refund]
```

**Field Mappings:**
```
Payment URL Field: [e.g., checkout_url]
Transaction ID Field: [e.g., payment_id]
Status Field: [e.g., status]
Completed Value: [e.g., success]
Failed Value: [e.g., failed]
```

**Webhook Configuration:**
```
Webhook Signature Header: [e.g., X-Signature]
Webhook Event Field: [e.g., event]
Success Events: [e.g., payment.completed,payment.success]
Failure Events: [e.g., payment.failed,payment.declined]
```

### 4. Configure Webhook in Gateway

```
https://yourdomain.com/payment/hookpayment/webhook
```

### 5. Test

- Enable at checkout
- Place test order
- Verify payment flow
- Check webhook delivery

### 6. Go Live

- Disable sandbox mode
- Update to production credentials
- Test with real transaction

**Done!** 🎉

---

## Common Configuration Patterns

### Pattern 1: CMI-Style Gateway
```
Gateway Type: cmi
Signature Method: sha256
Payment URL Field: payment_url
Transaction ID Field: transaction_id
Status Field: status
```

### Pattern 2: REST API Gateway
```
Gateway Type: generic
Signature Method: sha256
Payment Endpoint: /api/v1/payments
Status Endpoint: /api/v1/payments/{id}
```

### Pattern 3: Custom Webhook Gateway
```
Webhook Event Field: type
Success Events: charge.succeeded,payment.completed
Failure Events: charge.failed,payment.failed
```

---

## Troubleshooting Quick Fixes

### Payment Not Appearing at Checkout
```bash
php artisan cache:clear
php artisan config:clear
php artisan view:clear
```

### Webhook Not Working
1. Check webhook URL is accessible: `curl -X POST https://yourdomain.com/payment/hookpayment/webhook`
2. Verify HTTPS is enabled
3. Check Laravel logs: `tail -f storage/logs/laravel.log`
4. Disable signature verification temporarily to test

### Configuration Not Saving
```bash
chmod -R 775 storage/
chmod -R 775 bootstrap/cache/
php artisan cache:clear
```

---

## Quick Reference

### Important URLs

**Webhook URL:**
```
https://yourdomain.com/payment/hookpayment/webhook
```

**Success Callback:**
```
https://yourdomain.com/payment/hookpayment/success
```

**Error Callback:**
```
https://yourdomain.com/payment/hookpayment/error
```

### Commands

**Activate Plugin:**
```bash
php artisan plugin:activate hookpayment
```

**Deactivate Plugin:**
```bash
php artisan plugin:deactivate hookpayment
```

**Clear Cache:**
```bash
php artisan cache:clear && php artisan config:clear && php artisan route:clear
```

**Publish Assets:**
```bash
php artisan vendor:publish --tag=cms-public --force
```

**View Logs:**
```bash
tail -f storage/logs/laravel.log | grep -i hookpayment
```

### Default Values

| Setting | Default Value |
|---------|--------------|
| Payment Endpoint | /payment/create |
| Status Endpoint | /payment/status |
| Refund Endpoint | /payment/refund |
| Payment URL Field | payment_url |
| Transaction ID Field | transaction_id |
| Status Field | status |
| Completed Value | completed |
| Failed Value | failed |
| Amount Field | amount |
| Currency Field | currency |
| Metadata Field | metadata |
| Signature Method | sha256 |
| Webhook Event Field | event_type |

---

## Next Steps

After quick setup:

1. 📖 Read [CONFIGURATION_EXAMPLES.md](CONFIGURATION_EXAMPLES.md) for detailed examples
2. 🔧 Review [CMI_MOROCCO_GUIDE.md](CMI_MOROCCO_GUIDE.md) if using CMI
3. 📋 Check [README.md](README.md) for complete feature list
4. 🚀 Go through [INSTALLATION.md](INSTALLATION.md) for production setup
5. 📝 Keep [CHANGELOG.md](CHANGELOG.md) for updates

---

## Getting Help

**Documentation Files:**
- `README.md` - Feature overview and general info
- `INSTALLATION.md` - Detailed installation steps
- `CONFIGURATION_EXAMPLES.md` - Real-world configuration examples
- `CMI_MOROCCO_GUIDE.md` - CMI-specific guide
- `CHANGELOG.md` - Version history and updates

**Logs to Check:**
- `storage/logs/laravel.log` - Application logs
- Payment gateway dashboard - Webhook delivery logs
- Browser console - Frontend errors

**Common Issues:**
- Check file permissions: `775` for storage/
- Verify HTTPS is enabled
- Ensure payment plugin is activated
- Clear cache after configuration changes

---

## Quick Checklist

Before going live:

- [ ] Plugin activated
- [ ] Credentials configured
- [ ] Webhook URL added to gateway
- [ ] Test payment successful
- [ ] Webhook received and processed
- [ ] Order status updated correctly
- [ ] Payment details visible in admin
- [ ] Error handling tested
- [ ] Production credentials ready
- [ ] Backup configuration saved

**Ready to accept payments!** 💳✨

