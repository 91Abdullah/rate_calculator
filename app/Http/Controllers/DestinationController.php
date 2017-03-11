<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Destination;

class DestinationController extends Controller
{
    public function index() {
        $destinations = Destination::all();
        return view('destination.index', compact('destinations'));
    }

    public function create() {
        return view('destination.create');
    }

    public function store(Request $request) {
        $destination = Destination::create($request->all());
        $request->session()->flash("success", "Destination created successfully.");
        return redirect()->to('admin/destination');
    }

    public function edit(Destination $destination) {
        return view('destination.edit', compact('destination'));
    }

    public function update(Destination $destination, Request $request) {
        $new = $destination->update($request->all());
        $request->session()->flash("success", "Destination updated successfully.");
        return view('destination.edit')->with('destination', $destination);
    }

    public function destroy(Destination $destination, Request $request) {
        $destination->delete();
        $request->session()->flash("success", "Destination has been deleted.");
        return redirect()->to('admin/destination');
    }
}
