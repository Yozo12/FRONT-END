<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {

        if (config('habbo.migrations.rename_tables') && Schema::hasTable('website_articles')) {
            dropForeignKeyIfExists('website_articles', 'user_id');
            Schema::rename('website_articles', sprintf('website_articles_%s', time()));
        }

        Schema::create('website_articles', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->unique();
            $table->string('title');
            $table->string('short_story');
            $table->longText('full_story');
            $table->string('user_id');
            $table->string('image');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('website_articles');
    }
};
