@extends('layouts.app')

@section('template_title')
    {{ $weather->name ?? 'Show Weather' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Weather</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('weather.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Flight:</strong>
                            {{ $weather->flight }}
                        </div>
                        <div class="form-group">
                            <strong>Temperature:</strong>
                            {{ $weather->temperature }}
                        </div>
                        <div class="form-group">
                            <strong>Pressure:</strong>
                            {{ $weather->pressure }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
