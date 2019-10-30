<?php

use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;

/**
 * Class AccessTableSeeder.
 */


class AccessTableSeeder extends Seeder
{
    use DisableForeignKeys;

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->disableForeignKeys();
        $this->call(UserTableSeeder::class);
        $this->call(CountrieTableSeeder::class);
        $this->call(NationalityTableSeeder::class);
        $this->call(ProviderTableSeeder::class);
        $this->call(PaymentTypeTableSeeder::class);
        $this->call(RoleTableSeeder::class);
        $this->call(UserRoleSeeder::class);
        $this->call(PermissionTableSeeder::class);
        $this->call(PermissionRoleSeeder::class);
        $this->call(ServiceTableSeeder::class);
        $this->call(TypeDocumentsSeeder::class);  

        $this->call(ReasonsVisitsTableSeeder::class);
        $this->call(ReasonsTableSeeder::class);
        $this->call(GendersTableSeeder::class);
        $this->call(TypesUsersTableSeeder::class);
        
        $this->enableForeignKeys();
    }
}
