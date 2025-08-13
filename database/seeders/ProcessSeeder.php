<?php

namespace Database\Seeders;

use App\Models\MachineCategory;
use App\Models\Process;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProcessSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void {
        $cutting = MachineCategory::where('code', 'CUT')->first();
        $assembly = MachineCategory::where('code', 'ASSEMBLY')->first();

        if (!$cutting || !$assembly) {
            dump('MachineCategory CUT or ASSEMBLY not found. Check MachineCategorySeeder.');
            return;
        }

        Process::insert([
            [
                'code' => 'PRC-001',
                'name' => 'Cutting Material',
                'machine_category_id' => $cutting->id,
                'order' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'PRC-002',
                'name' => 'Assembly Unit',
                'machine_category_id' => $assembly->id,
                'order' => 2,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }

}
