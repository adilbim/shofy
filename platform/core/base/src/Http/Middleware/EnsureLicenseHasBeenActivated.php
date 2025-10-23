<?php

namespace Botble\Base\Http\Middleware;

use Botble\Base\Supports\Core;
use Closure;
use Exception;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

readonly class EnsureLicenseHasBeenActivated
{
    public function __construct(private Core $core)
    {
    }

    public function handle(Request $request, Closure $next)
    {
        // License middleware bypassed - always allow requests
        return $next($request);
    }
}
