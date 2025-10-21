<?php

namespace App\Services\User;

use App\Actions\UserActions;
use App\Models\User;

class UserService extends UserActions
{
    public function getUser(string $username): User|null
    {
        return User::where('username', $username)->first();
    }
}
