{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    
    <div class="row card-panel">
      <div class="col s12">
        <h4>Peminjaman Aktif</h4>
        <ul class="collection">

          {%for peminjaman in peminjamans%}
            <li class="collection-item avatar">
              <i class="material-icons circle">folder</i>
              <span class="title">{{peminjaman[0].judul}}</span>
            <!-- <p>Tanggal Pinjam: 
                <br>
              Tanggal Harus Kembali:
            </p>
            <div class="secondary-content black-text">3 hari lagi</div> -->
            <!-- <a href="#!" class="secondary-content"><i class="material-icons">grade</i> </a> -->
          </li>
          {%endfor%}
          </ul>
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
              <p>Deskripsi :
                {{ arr[0].deskripsi }}
              </p>
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