<?php

use Illuminate\Database\Seeder;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $file = file_get_contents(resource_path("assets/json/cities_withZones.json"));
        $json = json_decode($file, true);
        foreach ($json as $obj) {
            DB::table("cities")->insert([
                'name' => $obj["name"],
                'zone_id' => $obj["zone_id"]
            ]);
        }
    }
}
