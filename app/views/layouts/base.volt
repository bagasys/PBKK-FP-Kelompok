<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <title>Phalcon PHP Framework</title>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" href="{{ url('css/materialize.min.css') }}">
      <link rel="stylesheet" href="{{ url('css/style.css') }}">
  </head>
    <body>
      <header>
        <nav class="white">
          <div class="nav-wrapper container">
            <a href="#!" class="brand-logo">Logo</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li><a class="" href="/katalog">Katalog</a></li>
              {% if session.get('auth') == null %} {# variable is not set #}
                <li><a class="modal-trigger" href="#modal-login">Login</a></li>
              {% elseif session.get('auth')["role"] == "admin" %} {# variable is set #}
                <li><a class="" href="/admin">Admin</a></li>
                <li><a class="" href="{{ url('user/logout') }}">Logout</a></li>
              {% else %} {# variable is set #}
                <li><a class="" href="/profile">Profile</a></li>
                <li><a class="" href="{{ url('user/logout') }}">Logout</a></li>
              {% endif %}
            </ul>
          </div>
        </nav>
        <ul class="sidenav" id="mobile-demo">
          <li><a href="sass.html">Sass</a></li>
        </ul>
      </header>

        {% block content %} {% endblock %}
    

      <!-- Modal Structure -->
      <div id="modal-login" class="modal" style="max-width: 500px;">
        <div class="modal-content">
          <div class="row right-align">
            <i class="material-icons prefix modal-close">close</i>
          </div>
          
          <div class="center-align">
            <div class="row">
              <h5>Login</h5>
            </div>
          </div>

          <form action="/user/login" method="post">

            <div class="row">
              <div class="input-field col s12">
                <i class="material-icons prefix">account_circle</i>
                <input id="username" type="text" class="validate" name="username">
                <label for="username">Username</label>
              </div>
            </div>

            <div class="row">
              <div class="input-field col s12">
                <i class="material-icons prefix">lock</i>
                <input id="password" type="password" class="validate" name="password">
                <label for="password">password</label>
              </div>
            </div>
            
            <div class="row">    
              <div class="col s6 offset-s3" style="">
                <button class="btn waves-effect waves-light" style="width:100%" type="submit" name="action">Login
                  <i class="material-icons">send</i>
                </button>  
              </div>
            </div>

          </form>
        </div>
        <!-- <div class="modal-footer">
          <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
        </div> -->
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
              Made by <a class="brown-text text-lighten-3">Me</a>
              </div>
            </div>
          </footer>
          <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

        
          <script src="{{ url('js/materialize.min.js') }}"></script> -->
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
          <script src="{{ url('js/materialize.min.js') }}"></script>
          <script src="{{ url('js/init.js') }}"></script>
          <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
        <script>
          $(document).ready(function(){
            $('.sidenav').sidenav();
          });
          $(document).ready(function(){
            $('.modal').modal();
          });
          $(document).ready( function () {
              $('#table_3').DataTable();
          });
       </script>
    </body>
</html>
