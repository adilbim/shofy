@if ($payment)
    <div class="table-responsive">
        <table class="table table-striped">
            <tbody>
                @if (isset($payment['transaction_id']))
                    <tr>
                        <th>{{ __('Transaction ID') }}</th>
                        <td>{{ $payment['transaction_id'] }}</td>
                    </tr>
                @endif
                
                @if (isset($payment['status']))
                    <tr>
                        <th>{{ __('Status') }}</th>
                        <td>
                            <span class="label label-{{ $payment['status'] == 'completed' || $payment['status'] == 'success' ? 'success' : 'warning' }}">
                                {{ ucfirst($payment['status']) }}
                            </span>
                        </td>
                    </tr>
                @endif
                
                @if (isset($payment['amount']))
                    <tr>
                        <th>{{ __('Amount') }}</th>
                        <td>{{ $payment['amount'] }} {{ $payment['currency'] ?? '' }}</td>
                    </tr>
                @endif
                
                @if (isset($payment['created_at']))
                    <tr>
                        <th>{{ __('Created At') }}</th>
                        <td>{{ $payment['created_at'] }}</td>
                    </tr>
                @endif
                
                @if (isset($payment['customer_email']))
                    <tr>
                        <th>{{ __('Customer Email') }}</th>
                        <td>{{ $payment['customer_email'] }}</td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
@else
    <p class="text-muted">{{ __('No payment details available') }}</p>
@endif

