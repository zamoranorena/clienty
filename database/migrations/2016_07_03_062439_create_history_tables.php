<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

/**
 * Class CreateHistoryTables.
 */
class CreateHistoryTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_types', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('name');
            $table->timestamps();
            $table->integer('created_user_id')->unsigned()->nullable();
            $table->foreign('created_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('updated_user_id')->unsigned()->nullable();
            $table->foreign('updated_user_id')->references('id')->on('users')->onDelete('cascade');
        });

        Schema::create('history', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('type_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->integer('entity_id')->unsigned()->nullable();
            $table->string('icon')->nullable();
            $table->string('class')->nullable();
            $table->string('text');
            $table->text('assets')->nullable();
            $table->timestamps();
            $table->integer('created_user_id')->unsigned()->nullable();
            $table->foreign('created_user_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('updated_user_id')->unsigned()->nullable();
            $table->foreign('updated_user_id')->references('id')->on('users')->onDelete('cascade');

            $table->foreign('type_id')
                ->references('id')
                ->on('history_types')
                ->onDelete('cascade');

            $table->foreign('user_id')
                ->references('id')
                ->on(config('access.users_table'))
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('history', function (Blueprint $table) {
            $table->dropForeign('history_type_id_foreign');
            $table->dropForeign('history_user_id_foreign');
        });

        Schema::dropIfExists('history_types');
        Schema::dropIfExists('history');
    }
}
