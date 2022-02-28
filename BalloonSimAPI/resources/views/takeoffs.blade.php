@extends('layout')

@section('title', 'takeoffs')

@section('content')
    <h1>Takeoffs</h1>

    <ul>
        @forelse ($takeoffs as $takeoffPoint)
            <li>{{ $takeoffPoint }}</li>
        @empty
            <li>Takeoffs is empty</li>
        @endforelse
    </ul>

@endsection
