<?php
Route::group([
    'prefix'     => 'operation',
    'as'         => 'operation.',
    'namespace'  => 'Operation',
], function(){

    Route::group([
        'middleware' => 'access.routeNeedsPermission:restaurarvisitas',
    ],  function (){ 
        Route::group(['namespace' => 'Visit'], function () {   
            Route::delete('visit/restore/{id}','VisitController@restore')->name('visit.restore');
        });
    });

    

    Route::group([
        'middleware' => 'access.routeNeedsPermission:visitasdesactivadas',
    ],  function (){ 
        Route::group(['namespace' => 'Visit'], function () {   
            Route::get('visit/desactivated','VisitController@visitdesactivated')->name('visit.desactivated');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:asignarvisitas',
    ],  function (){ 
        Route::group(['namespace' => 'Visit'], function () {   
            Route::post('visitCreate', 'VisitController@asignarVisita')->name('visit.asignarVisita');
            Route::get('visitCustomer/create/{id}', 'VisitController@crearVisita')->name('visit.crearvisita');
            Route::get('visitCustomer/crearcliente', 'VisitController@crearcliente')->name('visit.crearcliente');
            Route::get('visitCustomer', 'VisitController@visitCustomer')->name('visit.visitCustomer');
            Route::resource('visit', 'VisitController');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:restaurarcotizaciones',
    ],  function (){ 
        Route::group(['namespace' => 'Quote'], function () {   
            Route::delete('quote/restore/{id}','QuoteController@restore')->name('quote.restore');
        });
    });

    

    Route::group([
        'middleware' => 'access.routeNeedsPermission:visitas',
    ],  function (){ 
        Route::group(['namespace' => 'Visit'], function () {   
            Route::resource('visit', 'VisitController');  
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:cotizacionesdesactivadas',
    ],  function (){ 
        Route::group(['namespace' => 'Quote'], function () {   
            Route::get('quote/desactivated','QuoteController@quotedesactivated')->name('quote.desactivated');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:cotizaciones',
    ],  function (){ 
        Route::group(['namespace' => 'Quote'], function () {   
            Route::resource('quote', 'QuoteController');
            Route::get('quote/create/{id}','QuoteController@create')->name('quote.create');
            Route::get('crearpdf/{id}','QuoteController@crearpdf')->name('quote.crearpdf');
        });
    });     
    
    Route::group([
        'middleware' => 'access.routeNeedsPermission:eliminarcotizaciones',
    ],  function (){ 
        Route::group(['namespace' => 'Quote'], function () {   
            Route::delete('deletequote/{id}','QuoteController@eliminar')->name('quote.eliminar');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:desactivarventas',
        ],  function (){ 
        Route::group(['namespace' => 'Sale'], function () {   
            Route::delete('deletesale/{id}','SaleController@desactivated')->name('sale.desactivated');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:liquidaciones',
    ],  function (){ 
        Route::group(['namespace' => 'Liquidation'], function () {    
            Route::patch('updateliquidacion/{id}','LiquidationController@updateliquidacion')->name('liquidation.updateliquidacion');
            Route::patch('cerrarliquidacion/{id}','LiquidationController@cerrarLiquidacion')->name('liquidation.cerrarliquidacion');
            Route::patch('update/{id}','LiquidationController@update')->name('liquidation.update');
            Route::post('getarchivos','LiquidationController@getarchivos')->name('liquidation.getarchivos');
            Route::get('deletefile/{id}','LiquidationController@deletefile');
            Route::get('crearpdfliqui/{id}','LiquidationController@crearpdfliqui')->name('liquidation.crearpdfliqui');    
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:editarliquidacion',
    ],  function (){ 
        Route::group(['namespace' => 'Liquidation'], function () {   
            Route::get('edit/{id}/liquidation','LiquidationController@editarliquidacion')->name('liquidation.edit');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:generarliquidacion',
    ],  function (){ 
        Route::group(['namespace' => 'Liquidation'], function () {   
            Route::get('edit/{id}/liquidation','LiquidationController@editarliquidacion')->name('liquidation.edit');
            Route::get('editar/{id}/liquidation','LiquidationController@edit')->name('liquidation.editar');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:ventasdesactivadas',
    ],  function (){ 
        Route::group(['namespace' => 'Sale'], function () {   
            Route::get('sale/salesdesactivated','SaleController@salesdesactivated')->name('sale.salesdesactivated');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:restaurarventas',
    ],  function (){ 
        Route::group(['namespace' => 'Sale'], function () {   
            Route::delete('sale/restore/{id}','SaleController@restore')->name('sale.restore');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:agregarpagos',
    ],  function (){ 
        Route::group(['namespace' => 'Deposit'], function () {   
            Route::get('addpayments/{id}', 'DepositController@addPayment')->name('deposit.addpayments');
            Route::post('deposit/guardarpago','DepositController@guardarpago')->name('deposit.guardarpago');
            Route::get('getbancario/{id}','DepositController@getbancario');
        });
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:ventas',
    ],  function (){ 
        Route::group(['namespace' => 'Sale'], function () {   
            Route::resource('sale', 'SaleController');
            Route::get('sales/datatable','SaleController@salesDatatable')->name('sales.datatable');
            Route::get('sale/create/{id}','SaleController@create')->name('sale.create');
        });
    });
});




