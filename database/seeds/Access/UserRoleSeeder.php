<?php

use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;

/**
 * Class UserRoleSeeder.
 */
class UserRoleSeeder extends Seeder
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
        $this->truncate(config('access.role_user_table'));

        //Attach admin role to admin user
        /*$user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::first()->attachRole(1);*/

        //Attach admin role to admin user


        //Attach executive role to executive user
        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(2)->attachRole(1);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(7)->attachRole(2);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(1)->attachRole(2);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(8)->attachRole(2);

        //Attach executive role to executive user
        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(3)->attachRole(2);

        //Attach executive role to executive user
        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(4)->attachRole(3);

        //Attach executive role to executive user
        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(5)->attachRole(4);

        //Attach user role to general user
        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(6)->attachRole(2);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(9)->attachRole(4);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(10)->attachRole(4);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(11)->attachRole(1);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(12)->attachRole(1);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(13)->attachRole(3);

        $user_model = config('auth.providers.users.model');
        $user_model = new $user_model();
        $user_model::find(14)->attachRole(2);

        $this->enableForeignKeys();
    }
}
