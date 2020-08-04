<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubscriberSubscriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subscriber_subscriptions', function (Blueprint $table) {
            
            $table->integer('subscriber_id')->unsigned();
            $table->integer('subscription_id')->unsigned();
            
            $table->foreign('subscriber_id')
            ->references('id')
            ->on('subscribers')
            ->onDelete('restrict')
            ->onUpdate('restrict');

            $table->foreign('subscription_id')
            ->references('id')
            ->on('subscriptions')
            ->onDelete('restrict')
            ->onUpdate('restrict');

            $table->primary(['subscriber_id', 'subscription_id']);
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
        Schema::dropIfExists('subscriber_subscriptions');
    }
}
