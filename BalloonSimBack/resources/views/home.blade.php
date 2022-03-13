@extends('layouts.app')

@section('template_title', 'Backend')

@section('content')

    @if (session('user') === true)
        <h2 style="color: aliceblue">Welcome</h2>
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
