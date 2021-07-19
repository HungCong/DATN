<?php
Auth::routes(['verify' => true]);

/*Route::get('/', 'Admin\LoginController@showLoginForm')->name('admin.loginadminnnn');*/
Route::namespace('Client')->group(function () {
  //Google
  Route::get('auth/google', 'LoginController@redirectToGoogle');
  Route::get('auth/google/callback', 'LoginController@handleGoogleCallback');
  //Da Ngon Ngu
  Route::get('clientlang/{lang}','HomeController@changeLang')->name('clientlang');
  //Login
  Route::get('/login', 'LoginController@showLoginForm')->name('client.login');
  Route::post('/login', 'LoginController@clientLogin')->name('client.login');
  //Logout
  Route::post('/logout', 'LoginController@logout')->name('client.logout');
  Route::get('/term','HomeController@term')->name('term');



  //Home
   Route::get('/', 'HomeController@home')->name('home.client');
  //Detail Product
   Route::get('/detail-product/{id}', 'HomeController@detailProduct')->name('home.detail-product');
  //Detail Product For Product Type
   Route::get('/detail-product-for-product-type/{id}', 'HomeController@detailProductForProductType')->name('home.detail-product-for-product-type');

   Route::post('search-product', 'HomeController@searchProduct')->name('home.search-product');


  //Feedback
  Route::get('feedback','FeedbackController@index')->name('feedback');
  Route::post('feedback/store','FeedbackController@store')->name('feedback.store');



  //Introduce
  Route::get('introduce','HomeController@introduce')->name('introduce');


  Route::group(['middleware' => ['auth']], function () {

      //profileUser
      //OrderProduct
      Route::get('/order-product/{id}', 'HomeController@orderProduct')->name('home.order-product');
      //Post order product
      Route::post('/post-order-product', 'HomeController@postOrderProduct')->name('home.post-order-product');
      //History
      Route::get('/history-order', 'HomeController@history')->name('home.history');
      //Detail Order Product
      Route::get('/detail-order-product/{id}', 'HomeController@detailOrderProduct')->name('home.detail-order-product');

      Route::group(['prefix'=>'profile'],function () {

        Route::get('user', 'UserController@profileUser')->name('profile.profileUser');
        Route::put('updateuser/{id}', 'UserController@profileUpdate')->name('profile.updateuser');
        Route::get('history', 'UserController@history')->name('profile.history');
        Route::get('/changePassword', 'UserController@changePassword')->name('profile.changePassword');
        Route::post('/changePass','UserController@postPassword')->name('changePass');
		});
  });
});





