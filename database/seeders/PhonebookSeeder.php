<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Phonebook;

//Тестил фабрики и сидеры (Skip---->)
class PhonebookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Phonebook::factory()->count(100)->create();
    }
}
