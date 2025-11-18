# HookPayment Installation Guide

## Requirements

- Botble CMS 7.3.0 or higher
- PHP 8.1 or higher
- Payment plugin must be installed and activated
- HTTPS enabled (required for production webhooks)

## Installation Steps

### 1. Upload Plugin Files

The plugin should be located at:
```
platform/plugins/hookpayment/
```

### 2. Activate the Plugin

Run the following command in your terminal:

```bash
cd /path/to/your/project
php artisan plugin:activate hookpayment
```

Or activate via the admin panel:
1. Login to your admin panel
2. Navigate to **Plugins** → **Installed Plugins**
3. Find **HookPayment Gateway** in the list
4. Click **Activate**

### 3. Publish Assets

Publish the plugin assets:

```bash
php artisan vendor:publish --tag=cms-public --force
```

### 4. Clear Cache

Clear your application cache:

```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
```

### 5. Configure Payment Gateway

1. Navigate to **Settings** → **Payment** in your admin panel
2. Scroll to **HookPayment** section
3. Fill in your payment gateway credentials
4. Configure the appropriate settings for your gateway

### 6. Configure Webhook in Gateway Dashboard

Copy your webhook URL:
```
https://yourdomain.com/payment/hookpayment/webhook
```

Add this URL to your payment gateway's webhook configuration.

### 7. Test in Sandbox Mode

1. Enable **Sandbox Mode** in HookPayment settings
2. Configure sandbox credentials
3. Place a test order
4. Verify the payment flow
5. Check webhook reception in logs

### 8. Go Live

Once testing is successful:

1. Disable **Sandbox Mode**
2. Update credentials to production keys
3. Verify production webhook URL is configured
4. Process a small real transaction to verify
5. Monitor logs for any issues

## Post-Installation

### Verify Installation

Check the following:

- [ ] Plugin appears in **Settings** → **Payment**
- [ ] HookPayment option appears at checkout
- [ ] Configuration form displays all fields
- [ ] Webhook URL is accessible (returns 200 on POST)

### Check Permissions

Ensure the following directories are writable:

```bash
chmod -R 775 storage/
chmod -R 775 bootstrap/cache/
```

### Configure Environment

Add to your `.env` file (optional, for sensitive data):

```env
HOOKPAYMENT_MERCHANT_ID=your_merchant_id
HOOKPAYMENT_API_KEY=your_api_key
HOOKPAYMENT_API_SECRET=your_api_secret
```

Then reference in settings using environment variables.

## Troubleshooting

### Plugin Not Appearing

- Clear cache: `php artisan cache:clear`
- Verify plugin is in correct directory
- Check file permissions
- Review Laravel logs for errors

### Payment Not Working

- Verify payment plugin is activated
- Check API credentials are correct
- Ensure sandbox/production URLs are correct
- Review field mappings
- Check logs: `storage/logs/laravel.log`

### Webhook Not Working

- Verify URL is accessible from internet
- Check webhook signature verification settings
- Review gateway webhook delivery logs
- Ensure HTTPS is enabled
- Check firewall/security rules

## Updating

To update the plugin:

1. Backup your configuration settings
2. Replace plugin files with new version
3. Run: `php artisan plugin:activate hookpayment`
4. Clear cache
5. Publish assets
6. Verify configuration

## Uninstallation

To remove the plugin:

1. Deactivate in admin panel or run:
   ```bash
   php artisan plugin:deactivate hookpayment
   ```

2. Remove plugin files:
   ```bash
   rm -rf platform/plugins/hookpayment
   ```

3. Clear cache:
   ```bash
   php artisan cache:clear
   ```

## Support

For issues or questions:

- Check `CONFIGURATION_EXAMPLES.md` for setup examples
- Review `README.md` for feature documentation
- Check Laravel logs: `storage/logs/laravel.log`
- Review payment gateway documentation
- Contact your payment gateway support

## Security Notes

- Never commit API credentials to version control
- Use environment variables for sensitive data
- Enable webhook signature verification in production
- Regularly monitor transaction logs
- Keep the plugin updated
- Use HTTPS in production

## Next Steps

After installation:

1. Read `CONFIGURATION_EXAMPLES.md` for your gateway
2. Configure settings for your specific gateway
3. Set up webhook URL in gateway dashboard
4. Test thoroughly in sandbox mode
5. Go live with confidence!

