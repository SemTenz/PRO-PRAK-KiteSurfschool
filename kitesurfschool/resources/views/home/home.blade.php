<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <!-- Vite Assets -->
    @vite('resources/css/app.css')
    @vite('resources/js/app.js')
    @vite('resources/scss/home.scss')
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Welcome</div>
                <div class="card-body">
                    Welcome to the Laravel 8 Livewire CRUD Application
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
