<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('flights', function (Blueprint $table) {
        //     $table->id();
        //     $table->date('date');
        //     $table->string('name', 255);
        //     $table->string('takeoff', 255);
        //     $table->timestamps();

        //     $table->charset = 'utf8mb4';
        //     $table->collation = 'utf8mb4_unicode_ci';
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('flights');
    }
};
