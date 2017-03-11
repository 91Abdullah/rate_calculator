
@extends('layout')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-lg-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>Create Destination</h1>
                    </div>
                    <div class="panel-body">
                        {!! Form::model($destination, ['method' => 'PATCH', 'route' => ['destination.update', $destination->id], 'class' => 'form-horizontal']) !!}
                        <div class="form-group">
                            <label for="name" class="col-sm-2">Name</label>
                            <div class="col-sm-10">
                                {!! Form::text('name', null, ['class' => 'form-control']) !!}
                            </div>
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