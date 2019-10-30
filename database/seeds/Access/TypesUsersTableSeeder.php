<?php
use Carbon\Carbon as Carbon;
use Database\DisableForeignKeys;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class TypesUsersTableSeeder extends Seeder
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
        $this->truncate('types_users');

        $types_users = [
            [
                'name'        => 'travel',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            [
                'name'        => 'e-commerce',
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            ],
            
        ];
        DB::table('types_users')->insert($types_users);
        $this->enableForeignKeys();
    }
}
