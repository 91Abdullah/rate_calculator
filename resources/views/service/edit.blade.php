@extends('layout')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>Create Service</h1>
                    </div>
                    <div class="panel-body">
                        {!! Form::model($service, ['method' => 'PATCH', 'action' => ['ServiceController@update', $service->id], 'class' => 'form-horizontal']) !!}
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                                {!! Form::text('name', null, ['class' => 'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="" id="add-rate" class="btn btn-danger"><i class="fa fa-plus"></i> Add Rate</a>
                            </div>
                        </div>
                        <div class="add-rate">
                            @if(count($service->rates) > 0)
                                @foreach($service->rates as $rate)
                                    <div class="add-rate-item">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Rate</label>
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    {!! Form::text('rate[]', $rate->rate, ['class' => 'form-control']) !!}
                                                    <span class="input-group-addon">PKR</span>
                                                </div>
                                            </div>
                                            <label for="weight" class="col-sm-2 control-label">Upto</label>
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    {!! Form::text('weight[]', $rate->weight, ['class' => 'form-control']) !!}
                                                    <span class="input-group-addon">Kg</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Each Additional</label>
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    {!! Form::text('additional[]', $rate->additional, ['class' => 'form-control']) !!}
                                                    <span class="input-group-addon">PKR</span>
                                                </div>
                                            </div>
                                            <label for="weight" class="col-sm-2 control-label">Upto</label>
                                            <div class="col-sm-4">
                                                <div class="input-group">
                                                    {!! Form::text('per[]', $rate->per, ['class' => 'form-control']) !!}
                                                    <span class="input-group-addon">Kg</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="destination" class="col-sm-2 control-label">For</label>
                                            <div class="col-sm-10">
                                                {!! Form::select('destination[]', $destinations, $rate->destination->id, ['class' => 'form-control', 'placeholder' => 'Select destination type']) !!}
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                <div class="add-rate-item">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Rate</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                {!! Form::text('rate[]', null, ['class' => 'form-control']) !!}
                                                <span class="input-group-addon">PKR</span>
                                            </div>
                                        </div>
                                        <label for="weight" class="col-sm-2 control-label">Upto</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                {!! Form::text('weight[]', null, ['class' => 'form-control']) !!}
                                                <span class="input-group-addon">Kg</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Each Additional</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                {!! Form::text('additional[]', null, ['class' => 'form-control']) !!}
                                                <span class="input-group-addon">PKR</span>
                                            </div>
                                        </div>
                                        <label for="weight" class="col-sm-2 control-label">Upto</label>
                                        <div class="col-sm-4">
                                            <div class="input-group">
                                                {!! Form::text('per[]', null, ['class' => 'form-control']) !!}
                                                <span class="input-group-addon">Kg</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="destination" class="col-sm-2 control-label">For</label>
                                        <div class="col-sm-10">
                                            {!! Form::select('destination[]', $destinations, null, ['class' => 'form-control', 'placeholder' => 'Select destination type']) !!}
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{ URL::to('js/rate.js') }}"></script>
@endsection