@extends('layouts.app')

@section('template_title')
    Takeoff Point
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Takeoff Point') }}
                            </span>

                            <div class="float-right">
                                <a href="{{ route('takeoff-points.create') }}" class="btn btn-primary btn-sm float-right"
                                    data-placement="left">
                                    {{ __('Create New') }}
                                </a>
                            </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>Name</th>
                                        <th>Description</th>
                                        <th>X</th>
                                        <th>Z</th>
                                        <th>Y</th>
                                        <th>Lat</th>
                                        <th>Lon</th>
                                        <th>Image</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($takeoffPoints as $takeoffPoint)
                                        <tr>
                                            <td>{{ $takeoffPoint->name }}</td>
                                            <td>{{ $takeoffPoint->description }}</td>
                                            <td>{{ $takeoffPoint->x }}</td>
                                            <td>{{ $takeoffPoint->z }}</td>
                                            <td>{{ $takeoffPoint->y }}</td>
                                            <td>{{ $takeoffPoint->lat }}</td>
                                            <td>{{ $takeoffPoint->lon }}</td>
                                            <td>{{ $takeoffPoint->image }}</td>

                                            <td>
                                                <form action="{{ route('takeoff-points.destroy', $takeoffPoint->id) }}"
                                                    method="POST">
                                                    <a class="btn btn-sm btn-primary "
                                                        href="{{ route('takeoff-points.show', $takeoffPoint->id) }}">Show</a>
                                                    <a class="btn btn-sm btn-success"
                                                        href="{{ route('takeoff-points.edit', $takeoffPoint->id) }}">Edit</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $takeoffPoints->links() !!}
            </div>
        </div>
    </div>
@endsection
