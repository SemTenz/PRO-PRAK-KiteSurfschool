<?php

namespace App\Http\Controllers;

use App\Http\Middleware\Admin;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Bans;

class BanController extends Controller
{
    public function index()
    {
        $users = User::all();
        $banned = Bans::all();


        return view('admin.bannedusers.index', compact('users', 'banned'));
    }

    // function for the admin to ban a user 
    public function banUser(User $user, Request $request)
    {

        $clientIpAddress = $request->ip(); //get the users ip adress 
        $users = User::all();
        $user->ban(); // ban the user
        return view('admin.users.index', compact('users'))->with('success', 'User has been banned');
    }

    public function bannedUser()
    {
        $users = User::all();
        return view('admin.bannedUser.index');
    }
}
