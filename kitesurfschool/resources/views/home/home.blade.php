<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet">
    <!-- Vite Assets -->
    @vite('resources/css/app.css')
    @vite('resources/js/app.js')
    @vite('resources/scss/home.scss')
</head>

<body>
    <!-- Include Navigation -->
    @include('layouts.navigation')

    <!-- Banner -->
    <div class="banner">
        <img src="{{ asset('img/banner_landing.jpg') }}" alt="Banner">
    </div>

</body>

</html>
