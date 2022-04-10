@extends('layouts.app')

@section('template_title')
    {{ $wind->name ?? 'Show Wind' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Wind</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('winds.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Weather:</strong>
                            {{ $wind->weather }}
                        </div>
                        <div class="form-group">
                            <strong>Altitude:</strong>
                            {{ $wind->altitude }}
                        </div>
                        <div class="form-group">
                            <strong>Wind Direction:</strong>
                            {{ $wind->wind_direction }}
                        </div>
                        <div class="form-group">
                            <strong>Wind Speed:</strong>
                            {{ $wind->wind_speed }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
