<?php
use Database\TruncateTable;
use Carbon\Carbon as Carbon;
use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;
use Illuminate\Support\Facades\DB;

class TypeDocumentsSeeder extends Seeder
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
        $this->truncate('type_documents');
 
        $payments_types = [
            [
                'name'              => 'DNI',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
            [
                'name'              => 'Pasapote',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
            [
                'name'              => 'RUC',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
         
        ];

        DB::table('type_documents')->insert($payments_types);
        $this->enableForeignKeys();
    }
}
