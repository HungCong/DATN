<?php
use App\Notification;
use Illuminate\Support\Facades\Route;


Route::namespace('Admin')->group(function () {

	//Da ngon ngu
	Route::get('lang/{lang}','HomeController@changeLang')->name('lang');
	//Login
	Route::get('/login', 'LoginController@showLoginForm')->name('admin.loginadmin');
	Route::post('/login', 'LoginController@adminLogin')->name('admin.login');
	Route::post('logout', 'LoginController@logout')->name('admin.logout');
	Route::get('/error404','HomeController@error404')->name('error404');
	Route::group(['middleware' => ['auth:admin']], function () {

		Route::get('/dashboard', 'HomeController@index')->name('dashboard');
		Route::get('/chart', 'HomeController@chart');
		Route::get('/expire', 'HomeController@expire')->name('expire');
		Route::get('bookingExpire/{email}', 'HomeController@sendNoti')->name('bookingExpire');

    //Producttype
        Route::resource('producttype','ProductTypeController');
        Route::delete('producttype_delete', 'ProductTypeController@destroy')->name('producttype_delete');
    //Products
        Route::resource('product','ProductController');
        Route::delete('product_delete', 'ProductController@destroy')->name('product_delete');
    //Order
        Route::resource('order','OrderController');
	//User
		Route::group(['prefix'=>'user'],function () {
			Route::get('/', 'UserController@index')->name('user.index');
			Route::get('/{id}', 'UserController@show')->name('user.show');
			Route::post('edit/status/{id}', 'UserController@editStatus')->name('user.editStatus');
			Route::get('get/export', 'UserController@export')->name('user.export');
		});
		Route::delete('user_delete', 'UserController@destroy')->name('user_delete');
	//Role
		Route::resource('roles','RoleController');
		Route::delete('role_delete', 'RoleController@destroy')->name('role_delete');
	//Admin
        Route::resource('admin','AdminController');
        Route::delete('admin_delete', 'AdminController@destroy')->name('admin_delete');
    //Profile Admin
        Route::get('adminProfile/{id}','AdminController@adminProfile')->name('adminProfile');
        Route::post('postchange','AdminController@postchange')->name('postchange');
	// Feedback
		Route::group(['prefix'=>'feedback'],function () {
			Route::get('/', 'FeedbackController@index')->name('feedback.index');
			Route::get('/{id}', 'FeedbackController@reply')->name('feedback.reply');
			Route::put('/{id}','FeedbackController@update')->name('feedback.update');
		});
	//Notification
		Route::get('notification/{id}', 'NotificationController@show')->name ('notification.show');
		Route::get('notificationHight/{id}', 'NotificationController@showHight')->name ('notification.showHight');














	});
});



