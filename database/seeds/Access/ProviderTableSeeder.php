<?php

use Database\TruncateTable;
use Carbon\Carbon as Carbon;
use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;
use Illuminate\Support\Facades\DB;

/**
 * Class ProviderTableSeeder.
 */
class ProviderTableSeeder extends Seeder
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
        $this->truncate(config('access.providers'));

        //Add the master administrator, user id of 1
        $proveedores = [
            [
                'name'              => 'NUEVO MUNDO',
                'email'             => 'info@tours.com',
                'telefono'          => '980777728',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
            [
                'name'              => 'COSTAMAR',
                'email'             => 'info@costamar.com',
                'telefono'          => '953853545',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
            [
                'name'              => 'CARELI',
                'email'             => 'info@careli.com',
                'telefono'          => '984476658',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
            [
                'name'              => 'GOWAI',
                'email'             => 'info@gowai.com',
                'telefono'          => '981474258',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
            [
                'name'              => 'LATAM',
                'email'             => 'info@latam.com',
                'telefono'          => '981475258',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
            [
                'name'              => 'TURASER',
                'email'             => 'info@turaser.com',
                'telefono'          => '954758685',
                'pais'              => 'Perú',
                'direccion'         => 'AV. JOSE PARDO #332 - MIRAFLORES',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
            ],
        ];

        DB::table(config("access.providers"))->insert($proveedores);

        $this->enableForeignKeys();
    }
}
