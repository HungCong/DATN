<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTableNewtypes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders_tb', function (Blueprint $table) {
            $table->increments('id');
            $table->string('order_code');
            $table->date('transaction_date');
            $table->string('full_name');
            $table->string('phone');
            $table->string('email');
            $table->string('key_product');
            $table->integer('total_amount');
            $table->longText('message');
            $table->integer('product_id')->unsigned();
            $table->foreign('product_id')->references('id')->on('products_tb')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->boolean('status')->default(0);
            $table->boolean('isdeleted')->default(0);
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
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
        //
    }
}
