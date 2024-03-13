<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $users = user::all();
        return view('admin.users.index', compact('users'));
    }

    public function edit($id)
    {
        $users = User::find($id);
        return view('admin.users.edit', compact('users'));
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'usertype' => 'required',
        ]);

        $users = User::find($id);
        $users->name = $request->get('name');
        $users->email = $request->get('email');
        $users->usertype = $request->get('usertype');
        $users->save();
        return redirect('admin/index')->with('success', 'User has been updated');
    }
}
