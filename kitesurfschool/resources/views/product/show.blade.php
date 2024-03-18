<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $product->name }}</title>

    @vite('resources/css/app.css')
    @vite('resources/js/app.js')
    @vite('resources/scss/navbar.scss')
    @vite('resources/scss/product.scss')
</head>
<body>
<!-- @include('parts.navbar') -->
<div class="product">
    <h1>{{ $product->name }}</h1>
    <p>{{ $product->description }}</p>
    <p>Price: €{{ $product->price }}</p>
    <img src="{{ asset('img/product/' . $product->image) }}" alt="{{ $product->name }}">
</div>
</body>
</html>
