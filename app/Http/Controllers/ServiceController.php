<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Destination;
use App\Rate;


class ServiceController extends Controller
{
    public function index() {
        $services = Service::all();
        return view('service.index', compact('services'));
    }

    public function create() {
        $destinations = Destination::pluck('name', 'id');
        return view('service.create', compact('destinations'));
    }

    public function store(Request $request) {
        // return dd($request->rate);
        $service = Service::create($request->all());

        foreach ($request->rate as $key => $value) {
            $rate = new Rate(['rate'=>$value, 'weight'=>$request->weight[$key], 'additional'=>$request->additional[$key],'per'=>$request->per[$key]]);
            $service->rates()->save($rate);
            $destination = Destination::findOrFail($request->destination[$key]);
            $destination->rates()->save($rate);
        }

        $request->session()->flash("success", "Service has been created.");

        return redirect()->to('admin/service');
    }

    public function destroy(Service $service, Request $request) {
        $service->delete();
        $request->session()->flash("success", "Service has been deleted.");
        return redirect()->to('admin/service');
    }

    public function edit(Service $service) {
        $service = Service::with('rates')->findOrFail($service->id);
        $destinations = Destination::pluck('name', 'id');
        return view('service.edit', compact('service', 'destinations'));
    }

    public function update(Service $service, Request $request) {
        $new = $service->update($request->all());
        $request->session()->flash("success", "Service updated successfully.");
        return redirect()->to('admin/service');
    }
}
