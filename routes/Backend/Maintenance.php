<?php
Route::group([
    'prefix'     => 'maintenance',
    'as'         => 'maintenance.',
    'namespace'  => 'Maintenance',
], function () {
	Route::group([
            'middleware' => 'access.routeNeedsPermission:mantenimiento',
        ],  function (){ 
                    Route::resource('payments', 'Payments\PaymentsController');
    				Route::resource('provider', 'Provider\ProviderController');
    				Route::resource('customer', 'Customer\CustomerController');
    				Route::resource('service', 'Service\ServiceController');
    				Route::get('getcustomers','Customer\CustomerController@getcustomers')->name('customers.getcustomers');
    });

    
    Route::group([
            'middleware' => 'access.routeNeedsPermission:servicios',
        ],  function (){ 
                    Route::resource('service', 'Service\ServiceController');
    });


    Route::group([
            'middleware' => 'access.routeNeedsPermission:proveedores',
        ],  function (){ 
                    Route::resource('provider', 'Provider\ProviderController');
    });
    Route::get('getservice/{id}','Service\ServiceController@getservice');
});

