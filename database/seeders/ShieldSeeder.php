<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use BezhanSalleh\FilamentShield\Support\Utils;
use Spatie\Permission\PermissionRegistrar;

class ShieldSeeder extends Seeder
{
    public function run(): void
    {
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        $rolesWithPermissions = '[
        {"name":"super_admin","guard_name":"web","permissions":["view_role","view_any_role","create_role","update_role","delete_role","delete_any_role","view_machine","view_any_machine","create_machine","update_machine","restore_machine","restore_any_machine","replicate_machine","reorder_machine","delete_machine","delete_any_machine","force_delete_machine","force_delete_any_machine","view_machine::category","view_any_machine::category","create_machine::category","update_machine::category","restore_machine::category","restore_any_machine::category","replicate_machine::category","reorder_machine::category","delete_machine::category","delete_any_machine::category","force_delete_machine::category","force_delete_any_machine::category","view_ng::defect","view_any_ng::defect","create_ng::defect","update_ng::defect","restore_ng::defect","restore_any_ng::defect","replicate_ng::defect","reorder_ng::defect","delete_ng::defect","delete_any_ng::defect","force_delete_ng::defect","force_delete_any_ng::defect","view_process","view_any_process","create_process","update_process","restore_process","restore_any_process","replicate_process","reorder_process","delete_process","delete_any_process","force_delete_process","force_delete_any_process","view_routing::process","view_any_routing::process","create_routing::process","update_routing::process","restore_routing::process","restore_any_routing::process","replicate_routing::process","reorder_routing::process","delete_routing::process","delete_any_routing::process","force_delete_routing::process","force_delete_any_routing::process","view_user","view_any_user","create_user","update_user","restore_user","restore_any_user","replicate_user","reorder_user","delete_user","delete_any_user","force_delete_user","force_delete_any_user"]},

        {"name":"staff_machine","guard_name":"web","permissions":["view_machine","view_any_machine","create_machine","update_machine","restore_machine","restore_any_machine","replicate_machine","reorder_machine","delete_machine","delete_any_machine","force_delete_machine","force_delete_any_machine","view_machine::category","view_any_machine::category","create_machine::category","update_machine::category","restore_machine::category","restore_any_machine::category","replicate_machine::category","reorder_machine::category","delete_machine::category","delete_any_machine::category","force_delete_machine::category","force_delete_any_machine::category","view_user","view_any_user","create_user","update_user","restore_user","restore_any_user","replicate_user","reorder_user","delete_user","delete_any_user","force_delete_user","force_delete_any_user"]},

        {"name":"staff_production","guard_name":"web","permissions":["view_process","view_any_process","create_process","update_process","restore_process","restore_any_process","replicate_process","reorder_process","delete_process","delete_any_process","force_delete_process","force_delete_any_process","view_routing::process","view_any_routing::process","create_routing::process","update_routing::process","restore_routing::process","restore_any_routing::process","replicate_routing::process","reorder_routing::process","delete_routing::process","delete_any_routing::process","force_delete_routing::process","force_delete_any_routing::process"]}
        ]';
        $directPermissions = '[]';

        static::makeRolesWithPermissions($rolesWithPermissions);
        static::makeDirectPermissions($directPermissions);

        $this->command->info('Shield Seeding Completed.');
    }

    protected static function makeRolesWithPermissions(string $rolesWithPermissions): void
    {
        if (! blank($rolePlusPermissions = json_decode($rolesWithPermissions, true))) {
            /** @var Model $roleModel */
            $roleModel = Utils::getRoleModel();
            /** @var Model $permissionModel */
            $permissionModel = Utils::getPermissionModel();

            foreach ($rolePlusPermissions as $rolePlusPermission) {
                $role = $roleModel::firstOrCreate([
                    'name' => $rolePlusPermission['name'],
                    'guard_name' => $rolePlusPermission['guard_name'],
                ]);

                if (! blank($rolePlusPermission['permissions'])) {
                    $permissionModels = collect($rolePlusPermission['permissions'])
                        ->map(fn ($permission) => $permissionModel::firstOrCreate([
                            'name' => $permission,
                            'guard_name' => $rolePlusPermission['guard_name'],
                        ]))
                        ->all();

                    $role->syncPermissions($permissionModels);
                }
            }
        }
    }

    public static function makeDirectPermissions(string $directPermissions): void
    {
        if (! blank($permissions = json_decode($directPermissions, true))) {
            /** @var Model $permissionModel */
            $permissionModel = Utils::getPermissionModel();

            foreach ($permissions as $permission) {
                if ($permissionModel::whereName($permission)->doesntExist()) {
                    $permissionModel::create([
                        'name' => $permission['name'],
                        'guard_name' => $permission['guard_name'],
                    ]);
                }
            }
        }
    }
}
