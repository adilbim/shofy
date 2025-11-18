<?php

use Botble\HookPayment\Http\Controllers\HookPaymentController;
use Illuminate\Support\Facades\Route;

Route::prefix('payment/hookpayment')
    ->name('payments.hookpayment.')
    ->group(function (): void {
        Route::post('webhook', [HookPaymentController::class, 'webhook'])->name('webhook');

        Route::middleware(['web', 'core'])->group(function (): void {
            Route::get('success', [HookPaymentController::class, 'success'])->name('success');
            Route::get('error', [HookPaymentController::class, 'error'])->name('error');
        });
    });

