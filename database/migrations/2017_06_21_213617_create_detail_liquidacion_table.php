<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailLiquidacionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('liquidation_service', function (Blueprint $table){
            $table->increments('id');
            $table->integer('liquidation_id')->unsigned()->nullable();
            $table->integer('service_id')->unsigned()->nullable();
            $table->float('precio_t')->nullable();
            $table->float('price')->nullable();
            $table->integer('cantidad')->nullable();
            //$table->text('coments')->nullable();
            $table->float('costo')->nullable();
            $table->timestamp('fecha_pago')->nullable();
            $table->integer('parent_id')->unsigned()->nullable(); 
            $table->foreign('liquidation_id')->references('id')->on('liquidations')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade');
            $table->integer('created_user_id')->unsigned()->nullable();
            $table->foreign('created_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('updated_user_id')->unsigned()->nullable();
            $table->foreign('updated_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->boolean('active')->default(true);
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('liquidation_service');
    }
}
