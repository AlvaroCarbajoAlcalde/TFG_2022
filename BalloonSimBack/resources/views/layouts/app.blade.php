<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        @yield('template_title')
    </title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="app">
        <nav class="navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="{{ url('/') }}">BalloonSim Backend</a>

            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="{{ url('/') }}">Home</a>
                </li>

                @if (session('user') === true)
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/takeoff-points') }}">Takeoffs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/users') }}">Users</a>
                    </li>
                @endif

            </ul>

            @if (session('user') === true)
                <a class="nav-link" href="{{ url('/endsession') }}">Log out</a>
            @endif

        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>

</html>
