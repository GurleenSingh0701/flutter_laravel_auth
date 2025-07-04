<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\PersonalAccessToken; // Your custom PersonalAccessToken model
use Laravel\Sanctum\Sanctum; // <--- ADD THIS LINE

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        Sanctum::usePersonalAccessTokenModel(PersonalAccessToken::class);

    }
}
