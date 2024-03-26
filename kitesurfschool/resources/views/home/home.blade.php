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
                <button class="btn btn-primary">Inloggen</button>
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

    <div class="container">
        <h1>Kies uw pakket</h1>
        <div class="row">
            <div class="col col-3">
                <div class="product">
                    <a href="{{ route('product.show', ['id' => 1]) }}">
                        <img src="{{ asset('img/product/product1.png') }}" alt="Product1">
                        <div class="caption">
                            <h2>Priveles 2.5 uur</h2>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col col-3">
                <div class="product">
                    <a href="{{ route('product.show', ['id' => 2]) }}">
                        <img src="{{ asset('img/product/product2.png') }}" alt="Product2">
                        <div class="caption">
                            <h2>1 Dagdeel</h2>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col col-3">
                <div class="product">
                    <a href="{{ route('product.show', ['id' => 3]) }}">
                        <img src="{{ asset('img/product/product3.png') }}" alt="Product3">
                        <div class="caption">
                            <h2>3 Dagdelen</h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col-9">
                <div class="product">
                    <a href="{{ route('product.show', ['id' => 4]) }}">
                        <img src="{{ asset('img/product/product4.png') }}" alt="Product4">
                        <div class="caption">
                            <h2>5 Dagdelen</h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="faq">
    <h2>Veelgestelde Vragen</h2>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Hoe lang duurt een typische kitesurfles?
        </h3>
        <p class="answer">Onze lessen duren gemiddeld 2,5 uur, maar de duur kan variëren afhankelijk van het pakket dat je kiest.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Wat zijn de vereisten om te kunnen deelnemen aan een kitesurfles?
        </h3>
        <p class="answer">Om deel te nemen aan een kitesurfles moet je minimaal 12 jaar oud zijn, kunnen zwemmen en geen ernstige medische aandoeningen hebben. Ervaring met andere watersporten is een pluspunt, maar niet vereist.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Biedt de kitesurfschool individuele lessen aan of alleen groepslessen?
        </h3>
        <p class="answer">We bieden zowel individuele lessen als groepslessen aan, afhankelijk van jouw voorkeur en beschikbaarheid. Neem contact met ons op voor meer informatie over onze lesmogelijkheden.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Zijn er leeftijdsbeperkingen voor deelname aan de lessen?
        </h3>
        <p class="answer">Ja, de minimumleeftijd om deel te nemen aan onze kitesurflessen is 12 jaar oud. Voor minderjarige deelnemers is toestemming van een ouder of voogd vereist.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Wat voor soort apparatuur wordt tijdens de lessen verstrekt en moet ik mijn eigen uitrusting meenemen?
        </h3>
        <p class="answer">We voorzien je van alle benodigde kitesurfapparatuur, inclusief kite, board, harnas en veiligheidsuitrusting. Je hoeft geen eigen uitrusting mee te nemen, maar je kunt wel je eigen wetsuit en neopreen schoentjes meenemen als je dat wilt.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Hoeveel lessen heb ik nodig voordat ik zelfstandig kan kitesurfen?
        </h3>
        <p class="answer">Het aantal lessen dat je nodig hebt om zelfstandig te kunnen kitesurfen, varieert afhankelijk van je leercurve, ervaring met andere watersporten en weersomstandigheden. Gemiddeld hebben de meeste mensen tussen de 3 en 6 lessen nodig voordat ze zelfstandig kunnen kitesurfen.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Wat gebeurt er als het weer slecht is op de dag van mijn geplande les?
        </h3>
        <p class="answer">Als het weer op de dag van je geplande les slecht is, zullen we proberen de les te verplaatsen naar een andere dag met betere weersomstandigheden. Als dat niet mogelijk is, zullen we een tegoedbon verstrekken voor een toekomstige les of restitutie aanbieden volgens ons annuleringsbeleid.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Zijn er beperkingen op het aantal personen dat tegelijkertijd in een les kan deelnemen?
        </h3>
        <p class="answer">Ja, om de kwaliteit van de instructie te waarborgen, beperken we het aantal deelnemers per les. Voor groepslessen streven we naar een maximale verhouding van 2 deelnemers per instructeur.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Worden er certificeringen uitgereikt na het voltooien van de lessen?
        </h3>
        <p class="answer">Ja, na het voltooien van onze kitesurflessen ontvang je een certificaat van voltooiing dat aangeeft welke vaardigheden je hebt verworven en welk niveau van kitesurfen je hebt bereikt.</p>
    </div>
    <div class="question">
        <h3 class="question-title">
            <span class="toggle-icon">+</span> Hoe kan ik een les boeken en wat zijn de betalingsvoorwaarden?
        </h3>
        <p class="answer">Je kunt een les boeken door op de knop 'Boek nu' te klikken</p>
    </div>
</div>









</body>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var downArrow = document.querySelector(".down-arrow a");
        if (downArrow) {
            downArrow.addEventListener("click", function(event) {
                event.preventDefault();
                var viewportHeight = window.innerHeight || document.documentElement.clientHeight;
                window.scrollTo({
                    top: viewportHeight,
                    behavior: 'smooth'
                });
            });
        }
    });


    document.addEventListener('DOMContentLoaded', function() {
        const questionTitles = document.querySelectorAll('.question-title');

        questionTitles.forEach(questionTitle => {
            questionTitle.addEventListener('click', function() {
                const question = questionTitle.parentElement;
                const answer = question.querySelector('.answer');
                const toggleIcon = questionTitle.querySelector('.toggle-icon');

                question.classList.toggle('expanded');
                toggleIcon.textContent = question.classList.contains('expanded') ? '-' : '+';
                answer.style.display = question.classList.contains('expanded') ? 'block' : 'none';
            });
        });
    });
</script>




</html>