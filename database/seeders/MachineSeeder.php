<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Machine;

class MachineSeeder extends Seeder
{
    public function run(): void
    {
        Machine::insert([
            [
                'code' => 'MCH-001',
                'name' => 'CNC Milling Machine',
                'machine_category_id' => 1,
                'warehouse' => 'Gudang A',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'MCH-002',
                'name' => 'Hydraulic Press',
                'machine_category_id' => 2,
                'warehouse' => 'Gudang B',
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'MCH-003',
                'name' => 'Laser Cutter',
                'machine_category_id' => 1,
                'warehouse' => 'Gudang A',
                'is_active' => false,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
