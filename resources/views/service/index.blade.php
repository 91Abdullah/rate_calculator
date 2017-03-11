

@extends('layout')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>Create Service</h1>
                        <h2><a class="btn btn-primary" href="service/create"><i class="fa fa-plus"></i> Create Service</a></h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <th>Id</th>
                                <th>Name</th>
                                <th></th>
                                <th></th>
                                @foreach($services as $service)
                                    <tr>
                                        <td>{{ $service->id }}</td>
                                        <td>{{ $service->name }}</td>
                                        <td><a class="btn btn-success" href="{{ action('ServiceController@edit', $service->id) }}"><i class="fa fa-pencil"></i> Edit</a></td>
                                        <td>
                                            {!! Form::open(['method' => 'DELETE', 'action' => ['ServiceController@destroy', $service->id]]) !!}
                                                <button type="submit" class="btn btn-danger"><i class="fa fa-ban"></i> Delete</button>
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

