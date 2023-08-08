<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        foreach(range(1, 50) as $index){
            DB::table('posts')->insert([
                'name' => $faker->sentence,
                'unit_price' => $faker->randomFloat(2, 10, 100), // Generate a random decimal number between 10 and 100
                'quantity' => $faker->numberBetween(1, 100),
                'regular_price' => $faker->randomFloat(2, 50, 200), // Generate a random decimal number between 50 and 200
                'shipping_cost' => $faker->randomFloat(2, 5, 20), // Generate a random decimal number between 5 and 20
                'details' => $faker->paragraph,
            ]);
        }
    }
}
