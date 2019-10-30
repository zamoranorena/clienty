<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class NewCamposCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('customers', function (Blueprint $table) {
            $table->integer('marketing2')->after('type_document_id')->unsigned()->nullable();
            $table->foreign('marketing2')->references('id')->on('reasonsvisits')->onDelete('cascade');
            $table->integer('gender')->after('marketing')->unsigned()->nullable();
            $table->foreign('gender')->references('id')->on('genders')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
