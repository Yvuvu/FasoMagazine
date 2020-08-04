<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostRegionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_regions', function (Blueprint $table) {
            
            $table->integer('post_id')->unsigned();
            $table->integer('region_id')->unsigned();
            
            $table->foreign('post_id')
            ->references('id')
            ->on('posts')
            ->onDelete('restrict')
            ->onUpdate('restrict');

            $table->foreign('region_id')
            ->references('id')
            ->on('regions')
            ->onDelete('restrict')
            ->onUpdate('restrict');

            $table->primary(['post_id', 'region_id']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('post_regions');
    }
}
