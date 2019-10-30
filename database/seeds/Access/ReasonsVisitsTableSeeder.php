<?php
use Carbon\Carbon as Carbon;
use Database\DisableForeignKeys;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class ReasonsVisitsTableSeeder extends Seeder
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
        $this->truncate('reasonsvisits');

        $reasonvisits = [
            [
                'name'        => 'Facebook',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'Recomendación',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'Correo',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],

            [
                'name'        => 'Telefono',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],

            [
                'name'        => 'Televisón',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'Web',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'Otros',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
        ];
        DB::table('reasonsvisits')->insert($reasonvisits);
        $this->enableForeignKeys();
    }
}
