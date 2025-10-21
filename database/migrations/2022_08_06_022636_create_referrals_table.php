<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (config('habbo.migrations.rename_tables') && Schema::hasTable('referrals')) {
            dropForeignKeyIfExists('referrals', 'user_id');
            Schema::rename('referrals', sprintf('referrals_%s', time()));
        }

        Schema::create('referrals', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->index();
            $table->unsignedBigInteger('referred_user_id');
            $table->string('referred_user_ip');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->cascadeOnDelete();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('referrals');
    }
};
