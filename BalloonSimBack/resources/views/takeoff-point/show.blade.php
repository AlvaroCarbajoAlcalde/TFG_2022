@extends('layouts.app')

@section('template_title')
    {{ $takeoffPoint->name ?? 'Show Takeoff Point' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Show Takeoff Point</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('takeoff-points.index') }}"> Back</a>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="form-group">
                            <strong>Name:</strong>
                            {{ $takeoffPoint->name }}
                        </div>
                        <div class="form-group">
                            <strong>Description:</strong>
                            {{ $takeoffPoint->description }}
                        </div>
                        <div class="form-group">
                            <strong>X:</strong>
                            {{ $takeoffPoint->x }}
                        </div>
                        <div class="form-group">
                            <strong>Z:</strong>
                            {{ $takeoffPoint->z }}
                        </div>
                        <div class="form-group">
                            <strong>Y:</strong>
                            {{ $takeoffPoint->y }}
                        </div>
                        <div class="form-group">
                            <strong>Lat:</strong>
                            {{ $takeoffPoint->lat }}
                        </div>
                        <div class="form-group">
                            <strong>Lon:</strong>
                            {{ $takeoffPoint->lon }}
                        </div>
                        <div class="form-group">
                            <strong>Image:</strong>
                            {{ $takeoffPoint->image }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
