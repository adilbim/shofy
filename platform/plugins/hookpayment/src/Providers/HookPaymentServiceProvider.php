<?php

namespace Botble\HookPayment\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\ServiceProvider;

class HookPaymentServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        $this->app->bind(
            \Botble\HookPayment\Services\Gateways\HookPaymentService::class,
            function () {
                return new \Botble\HookPayment\Services\Gateways\HookPaymentService();
            }
        );
    }

    public function boot(): void
    {
        if (! is_plugin_active('payment')) {
            return;
        }

        $this->setNamespace('plugins/hookpayment')
            ->loadHelpers()
            ->loadRoutes()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->publishAssets();

        $this->app->register(HookServiceProvider::class);

        $this->app['events']->listen(RouteMatched::class, function () {
            dashboard_menu()
                ->registerItem([
                    'id' => 'cms-plugins-hookpayment',
                    'priority' => 9999,
                    'parent_id' => 'cms-plugins-payment',
                    'name' => 'plugins/hookpayment::hookpayment.name',
                    'icon' => null,
                    'url' => route('payments.methods'),
                    'permissions' => ['payment.settings'],
                ]);
        });
    }
}

