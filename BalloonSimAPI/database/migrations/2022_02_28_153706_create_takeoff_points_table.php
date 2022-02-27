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
        Schema::create('takeoff_points', function (Blueprint $table) {
            $table->id();
            $table->string('name', 128)->unique();
            $table->text('description')->nullable();
            $table->double('x')->default(0);
            $table->double('z')->default(0);
            $table->double('y')->default(0);
            $table->double('lat')->nullable();
            $table->double('lon')->nullable();
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
        Schema::dropIfExists('takeoff_points');
    }
};
