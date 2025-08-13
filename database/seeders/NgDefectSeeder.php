<?php

namespace Database\Seeders;

use App\Models\NgDefect;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class NgDefectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        NgDefect::insert([
            ['code' => 'NG-001', 'description' => 'Baut tidak kencang'],
            ['code' => 'NG-002', 'description' => 'Cat tidak merata'],
            ['code' => 'NG-003', 'description' => 'Pemasangan tidak sejajar'],
        ]);
    }
}
