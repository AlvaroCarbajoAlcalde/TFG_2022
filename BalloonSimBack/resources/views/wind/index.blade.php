@extends('layouts.app')

@section('template_title')
    Wind
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Wind') }}
                            </span>

                            <div class="float-right">
                                <a href="{{ url('/weather') }}" class="btn btn-primary btn-sm float-right"
                                    data-placement="left">
                                    {{ __('See weathers') }}
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

                                        <th>Weather</th>
                                        <th>Altitude</th>
                                        <th>Wind Direction</th>
                                        <th>Wind Speed</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($winds as $wind)
                                        <tr>
                                            <td>{{ ++$i }}</td>

                                            <td>{{ $wind->weather }}</td>
                                            <td>{{ $wind->altitude }}</td>
                                            <td>{{ $wind->wind_direction }}</td>
                                            <td>{{ $wind->wind_speed }}</td>

                                            <td>
                                                <form>
                                                    <a class="btn btn-sm btn-primary "
                                                        href="{{ route('winds.show', $wind->id) }}"><i
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
                {!! $winds->links() !!}
            </div>
        </div>
    </div>
@endsection
