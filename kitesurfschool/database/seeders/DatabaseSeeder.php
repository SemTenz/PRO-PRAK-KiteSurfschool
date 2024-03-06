<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Contracts\Auth\Factory;
use Illuminate\Database\Seeder;
use factories\UserFactory;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        \App\Models\User::factory(100)->create();

        $this->call([
            UserSeeder::class
        ]);
    }
}
