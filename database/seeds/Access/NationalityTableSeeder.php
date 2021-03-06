<?php

use Carbon\Carbon as Carbon;
use Database\DisableForeignKeys;
use Database\TruncateTable;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NationalityTableSeeder extends Seeder
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
        $this->truncate('nationalities');

        $nationalities = [
            [
                'nationality'     => 'Afgano',
                'countrie_id'     => 1,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Alemán',
                'countrie_id'     => 2,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Árabe',
                'countrie_id'     => 3,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Argentino',
                'countrie_id'     => 4,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Australiano',
                'countrie_id'     => 5,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Belga',
                'countrie_id'     => 6,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Boliviano',
                'countrie_id'     => 7,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Brasilero',
                'countrie_id'     => 8,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Camboyano',
                'countrie_id'     => 9,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Canadiense',
                'countrie_id'     => 10,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Chileno',
                'countrie_id'     => 11,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Chino',
                'countrie_id'     => 12,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Colombiano',
                'countrie_id'     => 13,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Coreano',
                'countrie_id'     => 14,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Costarricense',
                'countrie_id'     => 15,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Cubano',
                'countrie_id'     => 16,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Danés',
                'countrie_id'     => 17,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Ecuatoriano',
                'countrie_id'     => 18,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Egipcio',
                'countrie_id'     => 19,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Salvadoreño',
                'countrie_id'     => 20,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Español',
                'countrie_id'     => 21,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Estadounidense',
                'countrie_id'     => 22,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Estonio',
                'countrie_id'     => 23,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Etiope',
                'countrie_id'     => 24,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Filipino',
                'countrie_id'     => 25,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Finlandés',
                'countrie_id'     => 26,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Francés',
                'countrie_id'     => 27,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Galés',
                'countrie_id'     => 28,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Griego',
                'countrie_id'     => 29,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Guatemalteco',
                'countrie_id'     => 30,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Haitiano',
                'countrie_id'     => 31,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Holandés',
                'countrie_id'     => 32,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Hondureño',
                'countrie_id'     => 33,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Indonés',
                'countrie_id'     => 34,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Inglés',
                'countrie_id'     => 35,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Irlandés',
                'countrie_id'     => 36,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Israelí',
                'countrie_id'     => 37,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Italiano',
                'countrie_id'     => 38,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Japonés',
                'countrie_id'     => 39,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Jordano',
                'countrie_id'     => 40,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Letón',
                'countrie_id'     => 41,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Letonés',
                'countrie_id'     => 42,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Malayo',
                'countrie_id'     => 43,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Marroquí',
                'countrie_id'     => 44,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Mexicano',
                'countrie_id'     => 45,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Nicaragüense',
                'countrie_id'     => 46,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Noruego',
                'countrie_id'     => 47,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Neocelandés',
                'countrie_id'     => 48,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Panameño',
                'countrie_id'     => 49,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Paraguayo',
                'countrie_id'     => 50,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Peruano',
                'countrie_id'     => 51,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Polaco',
                'countrie_id'     => 52,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Portugués',
                'countrie_id'     => 53,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Puertorriqueño',
                'countrie_id'     => 54,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Dominicano',
                'countrie_id'     => 55,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Rumano',
                'countrie_id'     => 56,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Ruso',
                'countrie_id'     => 57,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Sueco',
                'countrie_id'     => 58,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Suizo',
                'countrie_id'     => 59,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Tailandés',
                'countrie_id'     => 60,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Taiwanes',
                'countrie_id'     => 61,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Turco',
                'countrie_id'     => 62,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Ucraniano',
                'countrie_id'     => 63,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Uruguayo',
                'countrie_id'     => 64,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Venezolano',
                'countrie_id'     => 65,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
            [
                'nationality'     => 'Vietnamita',
                'countrie_id'     => 66,
                'created_at'      => Carbon::now(),
                'updated_at'      => Carbon::now(),
                'created_user_id' => 2,
                'updated_user_id' => 2,
            ],
        ];

        DB::table('nationalities')->insert($nationalities);
        $this->enableForeignKeys();
    }
}
