<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sub_modules', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('project_id')->unsigned()->index()->nullable();
            $table->bigInteger('module_id')->unsigned()->index()->nullable();
            $table->string('name');
            $table->foreign('project_id')->references('id')->on('projects')->onDelete('cascade'); 
            $table->foreign('module_id')->references('id')->on('modules')->onDelete('cascade');   
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_modules');
    }
};
