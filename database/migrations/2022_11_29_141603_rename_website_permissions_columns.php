<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        DB::table('website_permissions')->truncate();
        Schema::table('website_permissions', function (Blueprint $table) {
            $table->renameColumn('key', 'permission');
        });

        Schema::table('website_permissions', function (Blueprint $table) {
            $table->renameColumn('value', 'min_rank');
        });

        Schema::table('website_permissions', function (Blueprint $table) {
            $table->renameColumn('comment', 'description');
        });
    }
};
