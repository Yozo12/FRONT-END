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
        Schema::table('website_rare_values', function (Blueprint $table) {
            $table->longText('photo_base64')->nullable()->after('furniture_icon');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('website_rare_values', function (Blueprint $table) {
            $table->dropColumn('photo_base64');
        });
    }
};
