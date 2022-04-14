@extends('layouts.app')

@section('template_title')
    {{ $route->name ?? 'Show Route' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Route</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('routes.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Flight:</strong>
                            {{ $route->flight }}
                        </div>
                        <div class="form-group">
                            <strong>Seconds:</strong>
                            {{ $route->seconds }}
                        </div>
                        <div class="form-group">
                            <strong>Lat:</strong>
                            {{ $route->lat }}
                        </div>
                        <div class="form-group">
                            <strong>Lon:</strong>
                            {{ $route->lon }}
                        </div>
                        <div class="form-group">
                            <strong>Altitude:</strong>
                            {{ $route->altitude }}
                        </div>
                        <div class="form-group">
                            <strong>Speed:</strong>
                            {{ $route->speed }}
                        </div>
                        <div class="form-group">
                            <strong>Y Speed:</strong>
                            {{ $route->speedy }}
                        </div>
                        <div class="form-group">
                            <strong>Direction:</strong>
                            {{ $route->direction }}
                        </div>
                        <div class="form-group">
                            <strong>Fuel:</strong>
                            {{ $route->fuel }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
