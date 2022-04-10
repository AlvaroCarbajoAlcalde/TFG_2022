@extends('layouts.app')

@section('template_title')
    Flight
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Flights') }}
                            </span>

                            <div class="float-right">

                                <a class="btn btn-danger btn-sm float-right" href="{{ url('deleteAllFlights') }}">
                                    Delete all
                                </a>
                                <a href="{{ url('/routes') }}" class="btn btn-primary btn-sm float-right"
                                    data-placement="left">
                                    {{ __('See routes') }}
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

                                        <th>Date</th>
                                        <th>Name</th>
                                        <th>Takeoff</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($flights as $flight)
                                        <tr>
                                            <td>{{ ++$i }}</td>

                                            <td>{{ $flight->date }}</td>
                                            <td>{{ $flight->name }}</td>
                                            <td>{{ $flight->takeoff }}</td>

                                            <td>
                                                <form action="{{ route('flights.destroy', $flight->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary "
                                                        href="{{ route('flights.show', $flight->id) }}">Show</a>
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
                {!! $flights->links() !!}
            </div>
        </div>
    </div>
@endsection
