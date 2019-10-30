<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sale_service', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->text('coments')->nullable();
            $table->float('price')->nullable();
            $table->integer('cantidad')->nullable();
            $table->float('total_price');
            $table->integer('sale_id')->unsigned()->nullable();
            $table->integer('service_id')->unsigned()->nullable();
            $table->foreign('sale_id')->references('id')->on('sales')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade');
            $table->timestamps();
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
        Schema::dropIfExists('sale_service');
    }
}
