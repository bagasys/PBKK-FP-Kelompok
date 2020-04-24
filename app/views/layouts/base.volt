<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Phalcon PHP Framework</title>
        <link rel="stylesheet" href="css/materialize.min.css">
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper">
                  <a href="#" class="brand-logo">Logo</a>
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Sass</a></li>
                    <li><a href="badges.html">Components</a></li>
                    <li><a href="collapsible.html">JavaScript</a></li>
                  </ul>
                </div>
              </nav>
        </header>

        {% block content %} {% endblock %}

        <footer>
         <h1> footer </h1>
        </footer>
        <script src="js/materialize.min.js"></script>
    </body>
</html>
