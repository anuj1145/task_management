<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('project_id')->unsigned()->index()->nullable();
            $table->bigInteger('module_id')->unsigned()->index()->nullable();
            $table->bigInteger('submodule_id')->unsigned()->index()->nullable();
            $table->string('name');
            $table->date('start_date'); 
            $table->date('end_date'); 
            $table->string('type');
            $table->string('status');
            $table->foreign('project_id')->references('id')->on('projects')->onDelete('cascade'); 
            $table->foreign('module_id')->references('id')->on('modules')->onDelete('cascade');  
            $table->foreign('submodule_id')->references('id')->on('sub_modules')->onDelete('cascade'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tasks');
    }
};
