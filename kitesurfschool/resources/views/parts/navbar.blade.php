<body>
<div class="nav-bar" id="navbar">
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
                    <li><a href="{{ route('profile.edit') }}">Profiel</a></li>
                @else
                    <li><a href="{{ route('home') }}">Boek Nu</a></li>
                    <li><a href="{{ route('profile.edit') }}">Login</a></li>
                    <li><a href="{{ route('profile.destroy') }}">Register's</a></li>
                @endif
            </ul>
        </div>
    </div>
</div>


<script>
    window.addEventListener('scroll', function() {
        var navbar = document.getElementById('navbar');
        if (window.scrollY > document.querySelector('.banner').offsetHeight) {
            navbar.style.backgroundColor = 'rgba(0, 0, 0, 1)'; // Change the transparency value as needed
        } else {
            navbar.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
        }
    });
</script>
</body>