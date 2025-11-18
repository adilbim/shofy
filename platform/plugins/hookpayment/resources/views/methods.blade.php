@php
    $supportRefundOnline = get_payment_setting('refund_mode', HOOKPAYMENT_PAYMENT_METHOD_NAME);
@endphp

<li class="list-group-item">
    <input
        class="magic-radio js_payment_method"
        type="radio"
        name="payment_method"
        id="payment_{{ HOOKPAYMENT_PAYMENT_METHOD_NAME }}"
        value="{{ HOOKPAYMENT_PAYMENT_METHOD_NAME }}"
        data-bs-toggle="collapse"
        data-bs-target=".payment_{{ HOOKPAYMENT_PAYMENT_METHOD_NAME }}_wrap"
        data-parent=".list_payment_method"
        @if ($selecting == HOOKPAYMENT_PAYMENT_METHOD_NAME) checked @endif
    >
    <label for="payment_{{ HOOKPAYMENT_PAYMENT_METHOD_NAME }}" class="text-start">
        <span style="vertical-align: middle;">{{ get_payment_setting('name', HOOKPAYMENT_PAYMENT_METHOD_NAME, trans('plugins/hookpayment::hookpayment.name')) }}</span>
    </label>
    <div class="payment_{{ HOOKPAYMENT_PAYMENT_METHOD_NAME }}_wrap payment_collapse_wrap collapse @if ($selecting == HOOKPAYMENT_PAYMENT_METHOD_NAME) show @endif">
        <p>{!! BaseHelper::clean(get_payment_setting('description', HOOKPAYMENT_PAYMENT_METHOD_NAME, __('Payment via HookPayment gateway'))) !!}</p>

        @if ($supportRefundOnline)
            <div class="alert alert-info">
                {{ trans('plugins/payment::payment.payment_method_refund_online_description', ['name' => 'HookPayment']) }}
            </div>
        @endif
    </div>
</li>

