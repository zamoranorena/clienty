<?php

/**
 * Rutas de acceso front end
 * All route names are prefixed with 'frontend.auth'.
 */
Route::group(['namespace' => 'Auth', 'as' => 'auth.'], function () {

    /*
     * These routes require the user to be logged in
     */
    Route::group(['middleware' => 'auth'], function () {
        Route::get('logout', 'LoginController@logout')->name('logout');

        //For when admin is logged in as user from backend
        Route::get('logout-as', 'LoginController@logoutAs')->name('logout-as');

        // Change Password Routes
        Route::patch('password/change', 'ChangePasswordController@changePassword')->name('password.change');
    });

    /*
     * These routes require no user to be logged in
     */
    Route::group(['middleware' => 'guest'], function () {
        // Rutas de autenticación
        Route::get('login', 'LoginController@showLoginForm')->name('login');
        Route::post('login', 'LoginController@postLogin')->name('login');

        // Rutas de registro
        if (config('access.users.registration')) {
            Route::get('register', 'RegisterController@showRegistrationForm')->name('register');
            Route::post('register', 'RegisterController@register')->name('register');
        }

        // Rutas de confirmación de cuentas
        Route::get('account/confirm/{token}', 'ConfirmAccountController@confirm')->name('account.confirm');
        Route::get('account/confirm/resend/{user}', 'ConfirmAccountController@sendConfirmationEmail')->name('account.confirm.resend');

        // Rutas de restablecimiento de contraseñas
        Route::get('password/reset', 'ForgotPasswordController@showLinkRequestForm')->name('password.email');
        Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
        Route::get('password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset.form');
        Route::post('password/reset', 'ResetPasswordController@reset')->name('password.reset');
    });
});
