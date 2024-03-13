   <!DOCTYPE html>
   <html lang="en">

   <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta http-equiv="X-UA-Compatible" content="ie=edge">
       @vite('resources/scss/login.scss')
   </head>

   <body>
       <!-- Session Status -->
       <x-auth-session-status class="mb-4" :status="session('status')" />

       <div class="login-container">
           <div class="img"></div>
           <div class="white-block">
            <div class="logo-container">
                <img class="logo" src="{{ asset('img/logo.png') }}" alt="Logo">
               </div>
               <h1 class="login-heading">Login</h1>
               <form method="POST" action="{{ route('login') }}">
                   @csrf
                   <!-- Email Address -->
                   <div class="email-input">
                    <label class="label-email" for="email" />
                    <input id="email" type="email" name="email"
                        :value="old('email')" required autofocus autocomplete="username" placeholder="Email adres" />
                    <x-input-error :messages="$errors->get('email')" class="error-message" />
                </div>

                   <!-- Password -->
                   <div class="password-input">
                    <x-input-label for="password" />
                    <x-text-input id="password" class="password-input-field" type="password" name="password" required
                        autocomplete="current-password" placeholder="Wachtwoord" />
                    <x-input-error :messages="$errors->get('password')" class="error-message" />
                </div>

                   <!-- Remember Me -->
                   <div class="remember-me">
                    <label for="remember_me" class="remember-me-label">
                        <input id="remember_me" type="checkbox"
                            class="remember-me-checkbox"
                            name="remember">
                        <span class="remember-me-text">{{ __('Onthoud mij') }}</span>
                    </label>
                </div>

                <div class="forgot-password">
                    @if (Route::has('password.request'))
                        <a class="forgot-password-link"
                            href="{{ route('password.request') }}">
                            {{ __('Wachtwoord vergeten?') }}
                        </a>
                    @endif
                </div>
                <x-primary-button class="login-button">
                    {{ __('Inloggen') }}
                </x-primary-button>
    
                <a class="register-link"
                href="{{ route('register') }}">
                {{ __('Nog geen account?') }}
            </a>
           </div>
       </div>
       </form>
   </body>

   </html>
