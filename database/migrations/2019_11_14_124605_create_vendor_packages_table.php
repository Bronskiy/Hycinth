<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVendorPackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendor_packages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->LongText('description');
            $table->boolean('status');
            $table->integer('category_id');
            $table->integer('user_id');
            $table->integer('amount');            
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
        Schema::dropIfExists('vendor_packages');
    }
}
