<?php

use Carbon\Carbon;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;

/**
 * Class PermissionTableSeeder.
 */
class PermissionTableSeeder extends Seeder
{
    use DisableForeignKeys, TruncateTable;

    /**
     * Run the database seed.
     *
     * @return void
     */
    public function run()
    {
        $this->disableForeignKeys();
        $this->truncateMultiple([config('access.permissions_table'), config('access.permission_role_table')]);

        /**
         * Don't need to assign any permissions to administrator because the all flag is set to true
         * in RoleTableSeeder.php.
         */

        /**
         * Misc Access Permissions.
         */
        $permission_model = config('access.permission');
        $viewBackend = new $permission_model();
        $viewBackend->name = 'view-backend';
        $viewBackend->display_name = 'View Backend';
        $viewBackend->sort = 1;
        $viewBackend->created_at = Carbon::now();
        $viewBackend->updated_at = Carbon::now();
        $viewBackend->save();

        /**
         * Access Permissions.
         */
        $permission_model = config('access.permission');
        $manageUsers = new $permission_model();
        $manageUsers->name = 'manage-users';
        $manageUsers->display_name = 'Manage Users';
        $manageUsers->sort = 2;
        $manageUsers->created_at = Carbon::now();
        $manageUsers->updated_at = Carbon::now();
        $manageUsers->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'manage-roles';
        $manageRoles->display_name = 'Manage Roles';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();




        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'caja';
        $manageRoles->display_name = 'Caja';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'ventas';
        $manageRoles->display_name = 'Ventas';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'liquidaciones';
        $manageRoles->display_name = 'Liquidaciones';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'cotizaciones';
        $manageRoles->display_name = 'Cotizaciones';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'mantenimiento';
        $manageRoles->display_name = 'Mantenimiento';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'visitas';
        $manageRoles->display_name = 'Visitas';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'asignarvisitas';
        $manageRoles->display_name = 'Asignarvisitas';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'agregarpagos';
        $manageRoles->display_name = 'Agregarpagos';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'editarliquidacion';
        $manageRoles->display_name = 'Editarliquidacion';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'generarliquidacion';
        $manageRoles->display_name = 'Generarliquidacion';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'proveedores';
        $manageRoles->display_name = 'Proveedores';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');            
        $manageRoles = new $permission_model();                       
        $manageRoles->name = 'servicios';
        $manageRoles->display_name = 'Servicios';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'eliminarcotizaciones';
        $manageRoles->display_name = 'Eliminarcotizaciones';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $permission_model = config('access.permission');
        $manageRoles = new $permission_model();
        $manageRoles->name = 'eliminarventas';
        $manageRoles->display_name = 'Eliminarventas';
        $manageRoles->sort = 3;
        $manageRoles->created_at = Carbon::now();
        $manageRoles->updated_at = Carbon::now();
        $manageRoles->save();

        $this->enableForeignKeys();
    }
}
