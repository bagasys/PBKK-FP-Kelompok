{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    
    <div class="row card-panel">
      <div class="col s12">
        <h4>Peminjaman Aktif</h4>
        <table id="table_3" class="display">
          <thead>
            <tr>
              <th>ISBN</th>
              <th>username</th>
              <th>tgl harus kembali</th>
            </tr>
          </thead>
          <tbody>
            {% for peminjaman in peminjamans %}
            <tr>
              <td>{{peminjaman[0].isbn}}</td>
              <td>{{peminjaman[1].username}}</td>
              <td>{{peminjaman[1].tglHarusKembali}}</td>
            </tr>
            {% endfor %}
          </tbody>
        </table>        
      </div>
    </div>

    <div class="row card-panel">
      <div class="col s12">
        <h4>Wish List</h4>
        <ul class="collection">
          
          {% for arr in arrs %}
            <li class="collection-item avatar">
                <i class="material-icons circle">folder</i>
                <span class="title">{{arr[0].judul}}</span>
              <div class="secondary-content black-text">
                <a href="/profile/deleteWishlist/{{arr[1].wishlistId}}"><i class="material-icons prefix">delete</i></a>
              </div>
              <!-- <a href="#!" class="secondary-content"><i class="material-icons">grade</i> </a> -->
            </li>
          {% endfor %}

          </ul>
      </div>
    </div>

</div>

{% endblock %}