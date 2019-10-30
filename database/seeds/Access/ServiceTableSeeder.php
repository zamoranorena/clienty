<?php
use Carbon\Carbon as Carbon;
use Database\DisableForeignKeys;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ServiceTableSeeder extends Seeder
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
        $this->truncate('services');

        $services = [
            [
                'name'        => 'TOURS A DISNEY X 3 DIAS',
                'price'       => 1800,
                'provider_id' => 1,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'TOURS A EUROPA X 3 DIAS',
                'price'       => 1900,
                'provider_id' => 2,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'TOURS A COLOMBIA X 2 DIAS',
                'price'       => 2200,
                'provider_id' => 4,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'TOURS A CHILE X 1 DIA',
                'price'       => 1700,
                'provider_id' => 3,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'PROGRAMA EUROPA',
                'price'       => 1900,
                'provider_id' => 4,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'TOURS A VENEZUELA X 1 SEMANA',
                'price'       => 1600,
                'provider_id' => 3,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'HOTEL 5 ESTRELLAS',
                'price'       => 2200,
                'provider_id' => 2,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'GUIA BILINGUE',
                'price'       => 1200,
                'provider_id' => 1,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'ESTADIA 5 NOCHES',
                'price'       => 850,
                'provider_id' => 5,
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
        ];
        DB::table('services')->insert($services);
        $this->enableForeignKeys();
    }
}
