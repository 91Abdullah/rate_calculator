<?php

use Illuminate\Database\Seeder;

class ZonesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $file = file_get_contents(resource_path("assets/json/zones.json"));
        $json = json_decode($file, true);
        foreach ($json as $obj) {
            DB::table("zones")->insert([
                'name' => $obj["name"]
            ]);
        }
    }
}
