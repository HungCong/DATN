<?php

namespace App\Providers;

use App\Repositories\Order\OrderInterface;
use App\Repositories\Order\OrderRepository;
use Illuminate\Support\ServiceProvider;

use Illuminate\Support\Facades\Auth;    // Must Must use
use Illuminate\Support\Facades\Blade;   // Must Must use
//NewType

//Product
use App\Repositories\Products\ProductsInterface;
use App\Repositories\Products\ProductsRepository;
//Product Category
use App\Repositories\ProductTypes\ProductTypeInterface;
use App\Repositories\ProductTypes\ProductTypeRepository;



use App\Repositories\User\UserInterface;
use App\Repositories\User\UserRepository;


use Illuminate\Support\Facades\Schema;



use App\Repositories\Admin\AdminInterface;
use App\Repositories\Admin\AdminRepository;



use App\Repositories\FeedBack\FeedBackInterface;
use App\Repositories\FeedBack\FeedBackRepository;



use App\Repositories\Notification\NotificationInterface;
use App\Repositories\Notification\NotificationRepository;



class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //Newtype

        $this->app->bind(
            ProductsInterface::class,
            ProductsRepository::class
        );

        $this->app->bind(
            ProductTypeInterface::class,
            ProductTypeRepository::class
        );
        $this->app->bind(
            OrderInterface::class,
            OrderRepository::class
        );


        $this->app->bind(
            UserInterface::class,
            UserRepository::class
        );

        $this->app->bind(
            AdminInterface::class,
            AdminRepository::class
        );

        $this->app->bind(
            FeedBackInterface::class,
            FeedBackRepository::class
        );

        $this->app->bind(
            NotificationInterface::class,
            NotificationRepository::class
        );

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
    }
}
