<?php

namespace Botble\HookPayment\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class HookPaymentCallbackRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            // Basic validation - actual field names may vary by gateway
        ];
    }
}

