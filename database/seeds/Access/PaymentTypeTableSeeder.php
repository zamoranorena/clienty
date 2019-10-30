<?php
use Database\TruncateTable;
use Carbon\Carbon as Carbon;
use Illuminate\Database\Seeder;
use Database\DisableForeignKeys;
use Illuminate\Support\Facades\DB;

class PaymentTypeTableSeeder extends Seeder
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
        $this->truncate('payments_type');
 
        $payments_types = [
            [
                'name'              => 'Transferencia Bancaria BCP',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
                        [
                'name'              => 'Transferencia Bancaria BBVA',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
                        [
                'name'              => 'American Express',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
                        [
                'name'              => 'Dinners',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
            [
                'name'              => 'Masterd Card',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
            [
                'name'              => 'Visa',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
            [
                'name'              => 'Efectivo',
                'created_at'        => Carbon::now(),
                'updated_at'        => Carbon::now(),
                'created_user_id'   => 1,
                'updated_user_id'   => 1,
            ],
        ];

        DB::table('payments_type')->insert($payments_types);
        $this->enableForeignKeys();
    }
}
