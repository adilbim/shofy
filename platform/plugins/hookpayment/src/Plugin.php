<?php

namespace Botble\HookPayment;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Illuminate\Support\Facades\Schema;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::disableForeignKeyConstraints();
        // Add any cleanup operations here if needed
        Schema::enableForeignKeyConstraints();
    }
}

