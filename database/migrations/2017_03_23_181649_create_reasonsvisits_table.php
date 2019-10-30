<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateReasonsvisitsTable extends Migration
{
    
    /**
     * Run the migrations.
     *s
     * @return void
     */
    public function up()
    {
        Schema::create('reasonsvisits', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
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
        Schema::dropIfExists('reasonsvisits');
    }
}
