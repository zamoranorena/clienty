<?php
use Carbon\Carbon as Carbon;
use Database\DisableForeignKeys;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class GendersTableSeeder extends Seeder
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
        $this->truncate('genders');

        $genders = [
            [
                'name'              => 'Hombre',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'              => 'Mujer',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'              => 'Otros',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            
            
        ];

        DB::table('genders')->insert($genders);
        $this->enableForeignKeys();
    }
}