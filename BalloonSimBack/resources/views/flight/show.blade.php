@extends('layouts.app')

@section('template_title')
    {{ $flight->name ?? 'Show Flight' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Flight</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('flights.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Flightid:</strong>
                            {{ $flight->id }}
                        </div>
                        <div class="form-group">
                            <strong>Date:</strong>
                            {{ $flight->date }}
                        </div>
                        <div class="form-group">
                            <strong>Name:</strong>
                            {{ $flight->name }}
                        </div>
                        <div class="form-group">
                            <strong>Takeoff:</strong>
                            {{ $flight->takeoff }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
