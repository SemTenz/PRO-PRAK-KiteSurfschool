<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use Mchev\Banhammer\Banhammer;


class bannable extends Model
{
    use HasFactory;
    use Banhammer;

    public function banUser(User $user)
    {
        $user->ban([
            'ip' => $user->ip,
        ]);
    }
    public function unbanUser(User $user)
    {
        $user->unban([
            'ip' => $user->ip,
        ]);
    }
}
