@extends('layouts.app')

@section('template_title', 'Backend')

@section('content')

    @if (session('user') === true)

        @php
            $no = 1;
            $takeoffs = count(App\Models\TakeoffPoint::all());
            $flights = count(App\Models\Flight::all());
            $routes = count(App\Models\Route::all());
            $dbName = DB::connection()->getDatabaseName();
            
            function getTableSize($tableName)
            {
                $dbName = DB::connection()->getDatabaseName();
                $result = json_decode(json_encode(DB::select(DB::raw("SELECT ROUND(((data_length + index_length) / 1024 / 1024), 2) as 'size' FROM information_schema.TABLES WHERE table_schema = '$dbName' and TABLE_NAME = '$tableName'"))), true);
                return $result[0]['size'] . ' MB';
            }
        @endphp

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <div style="display: flex; justify-content: space-between; align-items: center;">

                                <span id="card_title">
                                    {{ __('Tables of ' . $dbName) }}
                                </span>

                                <div class="float-right">
                                    <a href="http://localhost/phpmyadmin" class="btn btn-primary btn-sm float-right"
                                        data-placement="left">
                                        {{ __('PhpMyAdmin') }}
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead class="thead">
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th>Rows</th>
                                            <th>Size</th>

                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>takeoff_points</td>
                                            <td>List of takeoff places.</td>
                                            <td>{{ $takeoffs }}</td>
                                            <td>{{ getTableSize('takeoff_points') }}</td>
                                            <td class="buttons-td">
                                                <a class="btn btn-sm btn-primary"
                                                    href="{{ url('/takeoff-points') }}">Show</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>flights</td>
                                            <td>List of flights.</td>
                                            <td>{{ $flights }}</td>
                                            <td>{{ getTableSize('flights') }}</td>
                                            <td class="buttons-td">
                                                <a class="btn btn-sm btn-primary" href="{{ url('/flights') }}">Show</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>routes</td>
                                            <td>List of route points for each flight.</td>
                                            <td>{{ $routes }}</td>
                                            <td>{{ getTableSize('routes') }}</td>
                                            <td class="buttons-td">
                                                <a class="btn btn-sm btn-primary" href="{{ url('/routes') }}">Show</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @else
        <div id="login">
            <div class="wrapper fadeInDown">
                <div id="formContent">

                    <!-- Icon -->
                    <div class="fadeIn first icon-div">
                        <div class="img-icon" style="background-image: url('favicon.ico')"></div>
                    </div>

                    <!-- Login Form -->
                    {{ Form::open(['method' => 'get', 'url' => 'login']) }}
                    <input type="text" id="user" class="fadeIn second" name="user" placeholder="Username" required>
                    <input type="text" id="pass" class="fadeIn third pass" name="pass" placeholder="Password" required>

                    @if (isset($message))
                        <p class="login-message fadeIn third">{{ $message }}</p>
                    @endif

                    <input type="submit" class="fadeIn fourth" value="Log In">
                    {{ Form::close() }}

                </div>
            </div>
        </div>
    @endif

@endsection
