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
    @vite('resources/scss/navbar.scss')
</head>

<body>
    @include('parts.navbar')

    <div class="banner">
        <img src="{{ asset('img/banner_landing.jpg') }}" alt="Banner">
        <div class="banner-overlay"></div>
        <div class="banner-content">
            <h1>Welkom bij kitesurfschool Windkracht-12!</h1>
            <div class="banner-buttons">
                <button class="btn btn-primary">Boek nu</button>
                <button class="btn btn-secondary">Over ons</button>
            </div>
        </div>
        <div class="banner-wave">
            <a>
                <img src="{{ asset('img/wave1.png') }}" alt="waveunderimage">
            </a>
        </div>
    </div>
    <div class="down-arrow">
        <a href="#">
            <img src="{{ asset('img/downarrow.png') }}" alt="downarrow">
        </a>
    </div>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var downArrow = document.querySelector(".down-arrow a");
        if (downArrow) {
            downArrow.addEventListener("click", function(event) {
                event.preventDefault(); // Prevent default link behavior
                var viewportHeight = window.innerHeight || document.documentElement.clientHeight;
                window.scrollTo({
                    top: viewportHeight,
                    behavior: 'smooth'
                });
            });
        }
    });
</script>

</html>
