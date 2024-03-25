<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    
        Product::create([
            'name' => 'Priveles 2.5 uur',
            'description' => 'Poep aan een stokje',
            'price' => 175.00,
            'image' => 'product1.png',
        ]);

        Product::create([
            'name' => '1 Dagdeel',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            'price' => 75.00,
            'image' => 'product2.png',
        ]);

        Product::create([
            'name' => '3 Dagdelen',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            'price' => 100.00,
            'image' => 'product3.png',
        ]);

        Product::create([
            'name' => '5 Dagdelen',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            'price' => 150.00,
            'image' => 'product4.png',
        ]);
    }
}
