<?php
Route::group([
    'prefix'     => 'box',
    'as'         => 'box.',
    'namespace'  => 'Box',
], function () {
    /*
     * Caja
    */

    //RECIBOS DESACTIVADOS
    Route::group([
        'middleware' => 'access.routeNeedsPermission:recibosdesactivados',
    ], function () { 
        Route::get('receipt/deleted','ReceiptController@deleted')->name('receipt.deleted');
    });

    Route::group([
        'middleware' => 'access.routeNeedsPermission:caja',
    ], function (){
        Route::get('receipt','ReceiptController@index')->name('receipt.index');
        Route::get('receipt/{id}','ReceiptController@show')->name('receipt.show');
        Route::get('crearpdf/{id}','ReceiptController@receiptpdf')->name('receipt.crearpdf');
        Route::get('receipt/{id}/edit','ReceiptController@edit')->name('receipt.edit');
        Route::patch('receipt/{id}/','ReceiptController@update')->name('receipt.update');
        Route::get('proveedores','ReceiptController@proveedores')->name('receipt.proveedores');
    });

    Route::group([
            'middleware' => 'access.routeNeedsPermission:eliminarrecibos',
        ], function () { 
            Route::delete('deletereceipt/{id}','ReceiptController@desactivated')->name('receipt.desactivated');
    });

    Route::group([
            'middleware' => 'access.routeNeedsPermission:restaurarrecibos',
        ], function () { 
            Route::delete('receipt/restore/{id}','ReceiptController@restore')->name('receipt.restore');
    });

    

});   
