
@extends('layout')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>Destinations</h1>
                        <h2><a href="destination/create" class="btn btn-default"><i class="fa fa-plus"></i> Create</a></h2>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <th>Id</th>
                                <th>Name</th>
                                <th></th>
                                <th></th>
                                @foreach($destinations as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td><a class="btn btn-success" href="{{ action('DestinationController@edit', $item->id) }}"><i class="fa fa-pencil"></i> Edit</a></td>
                                        <td>
                                            {!! Form::open(['method' => 'DELETE', 'action' => ['DestinationController@destroy', $item->id]]) !!}
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