<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <title>Phalcon PHP Framework</title>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" href="css/materialize.min.css">
      <link rel="stylesheet" href="css/style.css">
  </head>
    <body>
      <header>
            <!-- <nav class="white" role="navigation">
                <div class="nav-wrapper container">
                  <a id="logo-container" href="#" class="brand-logo">Logo</a>
                  <ul class="right hide-on-med-and-down">
                    <li><a href="#">Navbar Link</a></li>
                  </ul>
            
                  <ul id="nav-mobile" class="sidenav">
                    <li><a href="#">Navbar Link</a></li>
                  </ul>
                  <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                </div>
              </nav> -->
        <nav class="white">
          <div class="nav-wrapper container">
            <a href="#!" class="brand-logo">Logo</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li><a href="sass.html">Login</a></li>
            </ul>
          </div>
        </nav>
        <ul class="sidenav" id="mobile-demo">
          <li><a href="sass.html">Sass</a></li>
        </ul>
      </header>

        <div class="container">
        {% block content %} {% endblock %}
      </div>
        
        
        <footer class="page-footer teal">
            <div class="container">
              <div class="row">
                <div class="col l6 s12">
                  <h5 class="white-text">Company Bio</h5>
                  <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>
        
        
                </div>
                <div class="col l3 s12">
                  <h5 class="white-text">Settings</h5>
                  <ul>
                    <li><a class="white-text" href="#!">Link 1</a></li>
                    <li><a class="white-text" href="#!">Link 2</a></li>
                    <li><a class="white-text" href="#!">Link 3</a></li>
                    <li><a class="white-text" href="#!">Link 4</a></li>
                  </ul>
                </div>
                <div class="col l3 s12">
                  <h5 class="white-text">Connect</h5>
                  <ul>
                    <li><a class="white-text" href="#!">Link 1</a></li>
                    <li><a class="white-text" href="#!">Link 2</a></li>
                    <li><a class="white-text" href="#!">Link 3</a></li>
                    <li><a class="white-text" href="#!">Link 4</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="footer-copyright">
              <div class="container">
              Made by <a class="brown-text text-lighten-3" href="http://materializecss.com">Materialize</a>
              </div>
            </div>
          </footer>
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

        
        <script src="js/materialize.min.js"></script>
        <script src="js/init.js"></script>
        <script>
          $(document).ready(function(){
            $('.sidenav').sidenav();
          });
       </script>
    </body>
</html>
