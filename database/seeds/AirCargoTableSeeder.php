<?php

use Illuminate\Database\Seeder;

class AirCargoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('air_cargos')->insert([
            [
                'booking_from' => 'Punjab & KPK',
                'destination' => 'Within City',
                'rate' => 40,
                'per' => 1
            ],
            [
                'booking_from' => 'Sindh & Balochistan',
                'destination' => 'Within City',
                'rate' => 40,
                'per' => 1
            ],
            [
                'booking_from' => 'Punjab & KPK',
                'destination' => 'Same Zone',
                'rate' => 50,
                'per' => 1
            ],
            [
                'booking_from' => 'Sindh & Balochistan',
                'destination' => 'Same Zone',
                'rate' => 50,
                'per' => 1
            ],
            [
                'booking_from' => 'Punjab & KPK',
                'destination' => 'Different Zone',
                'rate' => 60,
                'per' => 1
            ],
            [
                'booking_from' => 'Sindh & Balochistan',
                'destination' => 'Different Zone',
                'rate' => 80,
                'per' => 1
            ]
        ]);
    }
}
