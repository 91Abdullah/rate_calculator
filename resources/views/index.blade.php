@extends('layout')

@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/easy-autocomplete.min.css">
@endsection

@section('content')
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h1>Welcome to {{ config('app.name') }}</h1>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12">
                        <form method="post" id="calculate-rate">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="from"><span class="red">*</span>From</label>
                                    <input type="text" id="from_city" name="from_city" class="form-control auto-complete" placeholder="Ex. Karachi" aria-describedby="Source">
                                </div>
                                <div class="form-group">
                                    <label for="weight"><span class="red">*</span>Weight</label>
                                    <div class="input-group">
                                        <input type="text" id="weight" name="weight" class="form-control" placeholder="E.g 2" aria-describedby="weight">
                                        <span class="input-group-addon" id="basic-addon2">Kg</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="to"><span class="red">*</span>To</label>
                                    <input type="text" id="to_city" name="to_city" class="form-control auto-complete" placeholder="Ex. Lahore" aria-describedby="Destination">
                                </div>
                                <div class="form-group">
                                    <label for="volume">Volume</label>
                                    <input type="text" id="volume" name="volume" class="form-control" placeholder="12'' x 21'' x 11''" aria-describedby="volume">
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary btn-lg center-block" value="Get Rates">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row item-parent">
            {{-- <div class="col-xs-12 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h5 class="text-center">MyBox</h5>
                    </div>
                    <div class="panel-body">
                        <p class="text-editor">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non commodi ex reiciendis dolorum temporibus labore, facilis dicta laboriosam quae enim voluptatem similique voluptates perspiciatis, voluptas quas hic adipisci fugit provident!</p>
                        <hr>
                        <p><span class="rate-label">Rate: </span><span class="rate">28000</span> PKR</p>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/jquery.easy-autocomplete.min.js"></script>
    <script src="js/index.js"></script>
@endsection