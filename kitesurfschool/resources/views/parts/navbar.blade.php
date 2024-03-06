<body>
    <div class="nav-bar">
        <div class="nav-bar__container">
            <div class="nav-bar__menu">
                <ul>
                    <li><a href="{{ route('home') }}">Over Ons</a></li>
                    <li><a href="{{ route('profile.edit') }}">Contact</a></li>
                    <li><a href="{{ route('profile.destroy') }}">Locatie's</a></li>
                </ul>
            </div>
            <div class="nav-bar__logo">
                <a href="{{ route('home') }}">
                    <img src="{{ asset('img/logo.png') }}" alt="Logo">
                </a>
            </div>
            <div class="nav-bar__menu2">
                <ul>
                    <li><a href="{{ route('home') }}">Boek Nu</a></li>
                    <li><a href="{{ route('profile.edit') }}">Login</a></li>
                    <li><a href="{{ route('profile.destroy') }}">Register's</a></li>
                </ul>
            </div>
        </div>
    </div>