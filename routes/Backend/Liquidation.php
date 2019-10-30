<?php
Route::group([
    'prefix'     => 'liquidation',
    'as'         => 'liquidation.',
    'namespace'  => 'Operation',
], function(){
		Route::group([
            'middleware' => 'access.routeNeedsPermission:liquidaciones',
        ],  function (){ 
                    Route::group(['namespace' => 'Liquidation'], function () {   
                    Route::get('listar','LiquidationController@listar')->name('listar');
        			Route::get('listar/showliquidacion/{id}','LiquidationController@showliquidacion')->name('liquidation.showliquidacion');
                    Route::get('utilidades','LiquidationController@utilidades')->name('utilidades');
                    Route::get('crearpdf','LiquidationController@crearpdf')->name('crearpdf');
                     
                });
        });  
        Route::group([
            'middleware' => 'access.routeNeedsPermission:reabrirliquidacion',
        ],  function (){ 
            Route::group(['namespace' => 'Liquidation'], function () {   
                Route::delete('reabrirliquidacion/{id}','LiquidationController@reabrirliquidacion')->name('liquidation.reabrirliquidacion');
            });
        });   
});


