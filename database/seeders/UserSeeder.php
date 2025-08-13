<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $superAdmin = User::firstOrCreate(
            ['email' => 'admin@example.com'],
            [
                'name' => 'Super Admin',
                'password' => Hash::make('password'),
            ]
        );
        $superAdmin->assignRole('super_admin');

        $staffMachine = User::firstOrCreate(
            ['email' => 'staffmachine@example.com'],
            [
                'name' => 'Staff Machine',
                'password' => Hash::make('password'),
            ]
        );
        $staffMachine->assignRole('staff_machine');

        $staffProduction = User::firstOrCreate(
            ['email' => 'staffproduction@example.com'],
            [
                'name' => 'Staff Production',
                'password' => Hash::make('password'),
            ]
        );
        $staffProduction->assignRole('staff_production');
    }
}
