<?php

use App\Models\User;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (columnExists('users', 'referral_code')) {
                Schema::dropColumns('users', 'referral_code');
            }

            $table->string('referral_code')->nullable()->unique()->after('home_room');
        });

        foreach (User::whereNull('referral_code')->get() as $user) {
            $user->update(['referral_code' => sprintf('%s%s', $user->id, Str::random(8))]);
        }
    }

    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            Schema::table('users', function (Blueprint $table) {
                $table->dropColumn('referral_code');
            });
        });
    }
};
