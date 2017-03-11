<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\City;
use App\Rate;
use App\Destination;
use App\Service;
use App\AirCargo;

class ApiController extends Controller
{
    private $minimunChargeableWeightAirCargo = 50;
    private $limitForFlyerShipments = 3;
    
    public function getRates(Request $request) {
        $city_from = $request->from_city;
        $city_to = $request->to_city;

        if ($this->checkValidCity($city_from, $city_to)) {
            // Main code goes here

            $city_from = City::where('name', $request->from_city)->first();
            $city_to = City::where('name', $request->to_city)->first();
            
            $response = [];
            $i = 0;

            //Check if Weight exists

            $destination = Destination::where('name', $this->checkCities($city_from, $city_to))->first();
            
            if($request->weight <= $this->limitForFlyerShipments) {
                $rates = $destination->rates()->where('weight', $this->checkWeightToApply($request->weight))->get();
            } else {
                $service = Service::where('name', 'MyFlyer')->first();
                $rates = $destination->rates()->where('weight', $this->checkWeightToApply($request->weight))->whereNotIn('service_id', [$service->id])->get();
            }
            

            foreach ($rates as $key => $rate) {
                $response[$i]['delivery_type'] = $rate->service->name;
                $response[$i]['description'] = $rate->service->description;
                $response[$i]['price'] = $this->calculateRate($rate, $request->weight);
                $i++;
            }

            if($destName = $this->checkCityToCity($city_from, $city_to)) {
                $dest = Destination::where('name', $destName)->first();
                $rate = $dest->rates()->where('weight', $this->checkWeightToApply($request->weight))->first();
                $response[count($response)]['delivery_type'] = $rate->service->name;
                $response[count($response)-1]['price'] = $this->calculateRate($rate, $request->weight);
                $response[count($response)-1]['description'] = $rate->service->description;
            }

            if($this->checkVolumizedMaxLimit($request->weight)) {
                if($this->isVolumizedCustomRateApplies($request->weight)) 
                    $equalRates = $destination->rates()->where('weight', $request->weight)->get();
                else
                    $equalRates = $destination->rates()->where('weight', $this->getLowerMyBoxLimit($request->weight))->get();

                if(count($equalRates) > 0) {
                    $i = count($response);
                    foreach ($equalRates as $key => $rate) {
                        $response[$i]['delivery_type'] = $rate->service->name;
                        $response[$i]['description'] = $rate->service->description;
                        $response[$i]['price'] = $this->calculateMyBoxRate($rate, $request->weight, $this->getLowerMyBoxLimit($request->weight));
                        $i++;
                    }
                }
            }

            if($request->weight >= $this->minimunChargeableWeightAirCargo && !($city_to == $city_from)) {
                if($city_to->zone->name == "Zone B" || $city_to->zone->name == "Zone C") {
                    $booking = "Sindh & Balochistan";
                } else {
                    $booking = "Punjab & KPK";
                }
                $serviceName = "AirCargo";
                $airCargo = AirCargo::where('booking_from', $booking)->where('destination', $destination->name)->first();
                $rate = $this->calculateAirCargoRates($airCargo, $request->weight);
                $response[count($response)]['delivery_type'] = $serviceName;
                $response[count($response) - 1]['price'] = $rate;
                $response[count($response) - 1]['description'] = Service::where('name', $serviceName)->first()->description;
            }

            return response()->json($response, 200);

        } else {
            return response()->json("Invalid city or city not in service.", 200);
        }
    }

    private function calculateAirCargoRates(AirCargo $_aircargo, $weight) {
        return ($weight/$_aircargo->per)*$_aircargo->rate;
    }

    private function checkVolumizedMaxLimit($weight) {
        $max_limit = 2;
        if($weight >= $max_limit)
            return true;
        else
            return false;
    }

    private function isVolumizedCustomRateApplies($weight) {
        $serviceName = "MyBox";
        $service = Service::where('name', $serviceName)->first();
        foreach ($service->rates as $key => $value) {
            $weights[] = $value->weight;
        }
        return in_array($weight, $weights);
    }

    private function getLowerMyBoxLimit($weight) {
        $serviceName = "MyBox";
        $service = Service::where('name', $serviceName)->first();
        foreach ($service->rates as $key => $value) {
            if($weight > $value->weight)
                return $value->weight;
        }
    }

    private function calculateRate(Rate $rate, $weight) {
        if($weight == $rate->weight) {
            return $rate->rate;
        } elseif($weight > $rate->weight) {
            $considerable_weight = 1;
            $actual_weight = $weight - $considerable_weight;
            $actual_rate = $rate->rate + ($actual_weight/$rate->per * $rate->additional);
            return $actual_rate;
        }
    }

    private function calculateMyBoxRate(Rate $rate, $weight, $_considerable_weight) {
        if($this->isVolumizedCustomRateApplies($weight)) {
            return $rate->rate;
        } else {
            $actual_weight = $weight - $_considerable_weight;
            $actual_rate = $rate->rate + ($actual_weight/$rate->per * $rate->additional);
            return $actual_rate;
        }
    }

    private function checkWeightToApply($weight) {
        $lower_limit = 0.5;
        $upper_limit = 1;
        if($weight == $lower_limit)
            return $lower_limit;
        elseif($weight == $upper_limit)
            return $upper_limit;
        else
            return $upper_limit;       
    }

    private function checkMyBoxExists($weight, $destination) {
        $serviceName = "MyBox";
        $rate = $destination->rates()->where('weight', $weight)->service()->where('name', $serviceName);
        return $rate;
    }

    private function checkCities(City $cityA, City $cityB) {
        if($cityA->id == $cityB->id)
            return "Within City";
        elseif($cityA->zone->id == $cityB->zone->id)
            return "Same Zone";
        else
            return "Different Zone";    
    }

    private function checkValidCity($cityA, $cityB) {
        if(City::where('name', $cityA)->first() && City::where('name', $cityB)->first())
            return true;
        else
            return false;
    }

    private function checkCityToCity(City $cityA, City $cityB) {
        if($cityA->name == "Karachi" && $cityB->name == "Lahore" ||
            $cityA->name == "Karachi" && $cityB->name == "Islamabad" ||
            $cityA->name == "Karachi" && $cityB->name == "Rawalpindi" ||
            $cityA->name == "Lahore" && $cityB->name == "Karachi" ||
            $cityA->name == "Lahore" && $cityB->name == "Islamabad" ||
            $cityA->name == "Lahore" && $cityB->name == "Rawalpindi" ||
            $cityA->name == "Rawalpindi" && $cityB->name == "Lahore" ||
            $cityA->name == "Rawalpindi" && $cityB->name == "Karachi" ||
            $cityA->name == "Islamabad" && $cityB->name == "Lahore" ||
            $cityA->name == "Islamabad" && $cityB->name == "Karachi")
                return "City to City";
        else
            return false;   
    }
}
