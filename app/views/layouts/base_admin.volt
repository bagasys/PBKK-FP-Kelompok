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
      
      
      <link rel="stylesheet" href="{{ url('css/admin.css') }}">
      <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">

    </head>
    <body>
      <header>
        <ul id="slide-out" class="sidenav sidenav-fixed" style="max-width: 250px;">
            <li><a href="#!"><i class="material-icons">cloud</i>Admin Area</a></li>
            <li><a href="{{ url('admin/buku') }}">Buku</a></li>
            <li><a href="{{ url('admin/peminjaman') }}">Peminjaman</a></li>
            <!-- <li><div class="divider"></div></li>
            <li><a class="subheader">Subheader</a></li>
            <li><a class="waves-effect" href="#!">Third Link With Waves</a></li> -->
          </ul>
      </header>
      <main>
        {% block content %} 
        
        {% endblock %}
      </main>
          
      
        
    

     
        <footer class="page-footer teal">
           
            <div class="footer-copyright">
              <div class="container">
              Made by <a class="brown-text text-lighten-3" href="http://materializecss.com">Materialize</a>
              </div>
            </div>
          </footer>
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
          $(document).ready(function(){
            $('.sidenav').sidenav();
          });
          $(document).ready( function () {
              $('#table_id').DataTable();
          } );
          $(document).ready(function(){
            $('.tabs').tabs();
          });
       </script>
    </body>
</html>
