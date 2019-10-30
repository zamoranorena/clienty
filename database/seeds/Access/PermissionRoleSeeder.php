<?php

use Database\TruncateTable;
use Carbon\Carbon as Carbon;
use Illuminate\Database\Seeder;
use App\Models\Access\Role\Role;
use Database\DisableForeignKeys;

/**
 * Class PermissionRoleSeeder.
 */
class PermissionRoleSeeder extends Seeder
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
        $this->truncate(config('access.permission_role_table'));
        /*
         * Assign view backend and manage user permissions to executive role as example
         */
        Role::find(3)->permissions()->sync(
            [1=> ['created_user_id' => 2,'updated_user_id'=>2],
            10=> ['created_user_id' => 2,'updated_user_id'=>2],
            8=> ['created_user_id' => 2,'updated_user_id'=>2],
            9=> ['created_user_id' => 2,'updated_user_id'=>2],
            ]);  

        Role::find(4)->permissions()->sync(
            [4=> ['created_user_id' => 2,'updated_user_id'=>2],
            1=> ['created_user_id' => 2,'updated_user_id'=>2], 
            11=> ['created_user_id' => 2,'updated_user_id'=>2],
            5=> ['created_user_id' => 2,'updated_user_id'=>2],
            6=> ['created_user_id' => 2,'updated_user_id'=>2]]);

        Role::find(2)->permissions()->sync(
                [1=> ['created_user_id' => 2,'updated_user_id'=>2],
                7=> ['created_user_id' => 2,'updated_user_id'=>2],
                6=> ['created_user_id' => 2,'updated_user_id'=>2], 
                5=> ['created_user_id' => 2,'updated_user_id'=>2], 
                9=> ['created_user_id' => 2,'updated_user_id'=>2], 
                15=> ['created_user_id' => 2,'updated_user_id'=>2], 
                14=> ['created_user_id' => 2,'updated_user_id'=>2], 
                16=> ['created_user_id' => 2,'updated_user_id'=>2], 
                17=> ['created_user_id' => 2,'updated_user_id'=>2],
                13=> ['created_user_id' => 2,'updated_user_id'=>2]]
        );
        
        Role::find(5)->permissions()->sync(
                [16=> ['created_user_id' => 2,'updated_user_id'=>2],
                1=> ['created_user_id' => 2,'updated_user_id'=>2]]);

        $this->enableForeignKeys();
    }
}
