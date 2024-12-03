<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset ('css/app.css')}}">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div>
            <nav>
                <ul class="nav nav-pills">
                    <li class="nav-item">
                    <a class="nav-link" href="{{route ('qortex.index')}}">Исполнители</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div>
        @yield('content')

    </div>
</body>
</html>
