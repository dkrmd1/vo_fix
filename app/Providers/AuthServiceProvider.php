<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('isStaf', function ($user) {
            return $user->role == 'staf';
        });

        Gate::define('isGroupHead', function ($user) {
            return $user->role == 'group-head';
        });

        Gate::define('isSuperadmin', function ($user) {
            return $user->role == 'superadmin';
        });

        Gate::define('isDirekturUtama', function ($user) {
            return $user->role == 'direktur-utama';
        });

        Gate::define('isDirektur', function ($user) {
            return $user->role == 'direktur';
        });
    }
}
