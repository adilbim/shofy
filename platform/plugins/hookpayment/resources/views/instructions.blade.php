<div class="alert alert-info">
    <h4>{{ trans('plugins/hookpayment::hookpayment.configuration_instruction') }}</h4>
    
    <ol>
        <li>Obtain your API credentials from your payment gateway dashboard</li>
        <li>Configure the API endpoints according to your gateway's documentation</li>
        <li>Map the response fields to match your gateway's API structure</li>
        <li>Set up the webhook URL in your payment gateway:
            <br>
            <code style="background: #f5f5f5; padding: 5px; margin-top: 5px; display: inline-block;">
                {{ route('payments.hookpayment.webhook') }}
            </code>
        </li>
        <li>Test in sandbox mode before enabling production</li>
    </ol>
    
    <p><strong>For CMI Morocco:</strong></p>
    <ul>
        <li>Gateway Type: CMI Morocco</li>
        <li>Production URL: <code>https://payment.cmi.co.ma/fim/api</code></li>
        <li>Sandbox URL: <code>https://testpayment.cmi.co.ma/fim/api</code></li>
    </ul>
    
    <p><strong>For other gateways:</strong> Select "Generic Webhook Gateway" and configure the appropriate endpoints and field mappings.</p>
</div>

