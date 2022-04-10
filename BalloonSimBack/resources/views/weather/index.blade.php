@extends('layouts.app')

@section('template_title')
    Weather
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Weather') }}
                            </span>

                            <div class="float-right">
                                <a href="{{ url('/winds') }}" class="btn btn-primary btn-sm float-right"
                                    data-placement="left">
                                    {{ __('See winds') }}
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
                                        <th>Temperature</th>
                                        <th>Pressure</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($weather as $weather)
                                        <tr>
                                            <td>{{ ++$i }}</td>

                                            <td>{{ $weather->flight }}</td>
                                            <td>{{ $weather->temperature }}</td>
                                            <td>{{ $weather->pressure }}</td>

                                            <td>
                                                <form>
                                                    <a class="btn btn-sm btn-primary "
                                                        href="{{ route('weather.show', $weather->id) }}"><i
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
                {!! $weather->links() !!}
            </div>
        </div>
    </div>
@endsection
