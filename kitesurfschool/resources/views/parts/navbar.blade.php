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
                    @if (Auth::check())
                    <li><a href="{{ route('home') }}">Boek Nu</a></li>
                    <li><a href="{{ route('admin.index') }}">Admin menu</a></li>
                    <li><a href="{{ route('profile.edit') }}">Profiel</a></li>
                    <!-- Authentication -->
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <li :href="route('logout')" onclick="event.preventDefault();
                                            this.closest('form').submit();">
                            <a href="{{ route('logout') }}">Uitloggen</a>
                        </li>
                    </form>
                    @else
                    <li><a href="{{ route('home') }}">Boek Nu</a></li>
                    <li><a href="{{ route('profile.edit') }}">Login</a></li>
                    <li><a href="{{ route('profile.destroy') }}">Register's</a></li>
                    @endif
                </ul>
            </div>
        </div>
    </div>