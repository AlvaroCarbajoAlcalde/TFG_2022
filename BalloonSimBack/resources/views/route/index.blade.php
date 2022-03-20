@extends('layouts.app')

@section('template_title')
    Route
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Routes') }}
                            </span>

                            <div class="float-right">
                                <a href="{{ url('/flights') }}" class="btn btn-primary btn-sm float-right"
                                    data-placement="left">
                                    {{ __('See flights') }}
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
                                        <th>No</th>

                                        <th>Flight</th>
                                        <th>Seconds</th>
                                        <th>Lat</th>
                                        <th>Lon</th>
                                        <th>Altitude</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($routes as $route)
                                        <tr>
                                            <td>{{ ++$i }}</td>

                                            <td>{{ $route->flight }}</td>
                                            <td>{{ $route->seconds }}</td>
                                            <td>{{ $route->lat }}</td>
                                            <td>{{ $route->lon }}</td>
                                            <td>{{ $route->altitude }}</td>

                                            <td>
                                                <form action="{{ route('routes.destroy', $route->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary "
                                                        href="{{ route('routes.show', $route->id) }}"><i
                                                            class="fa fa-fw fa-eye"></i> Show</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $routes->links() !!}
            </div>
        </div>
    </div>
@endsection
