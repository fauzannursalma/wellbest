<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\MachineCategory;

class MachineCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MachineCategory::insert([
            ['code' => 'CUT', 'name' => 'Cutting', 'description' => 'Mesin potong'],
            ['code' => 'DRIL', 'name' => 'Drilling', 'description' => 'Mesin bor'],
            ['code' => 'WELD', 'name' => 'Welding', 'description' => 'Mesin las'],
            ['code' => 'GRIN', 'name' => 'Grinding', 'description' => 'Mesin penggiling'],
            ['code' => 'ASSEMBLY', 'name' => 'Assembly', 'description' => 'Mesin perakitan'],
            ['code' => 'PACKING', 'name' => 'Packing', 'description' => 'Mesin pengepakan'],
            ['code' => 'TESTING', 'name' => 'Testing', 'description' => 'Mesin pengujian'],
        ]);
    }
}
