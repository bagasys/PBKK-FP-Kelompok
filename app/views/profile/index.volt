{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    <div class="row card-panel">
      <div class="col s6 m4">
        <div class="">
          <img src="https://source.unsplash.com/random/180x288"style="height: 288px; width:180px;" alt="" srcset="">
        </div>
        <div class="">
          <a class="waves-effect waves-light btn" style="width: 180px;">+ Wishlist</a>
        </div>
      </div>
      <div class="col s6 m8">
        <h4>Judul Buku</h4>
        <p>Penulis</p>
        <p>Deskripsi</p>
      </div>
    </div>
    <div class="row card-panel">
      <div class="col s12">
        <h4>Peminjaman Aktif</h4>
        <ul class="collection">
            <li class="collection-item avatar">
                <i class="material-icons circle">folder</i>
                <span class="title">Judul Buku</span>
              <p>Tanggal Pinjam: 
                  <br>
                 Tanggal Harus Kembali:
              </p>
              <div class="secondary-content black-text">3 hari lagi</div>
              <!-- <a href="#!" class="secondary-content"><i class="material-icons">grade</i> </a> -->
            </li>
            <li class="collection-item avatar">
                <i class="material-icons circle">folder</i>
                <span class="title">Judul Buku</span>
              <p>Tanggal Pinjam: 
                  <br>
                 Tanggal Harus Kembali:
              </p>
              <div class="secondary-content black-text">3 hari lagi</div>
              <!-- <a href="#!" class="secondary-content"><i class="material-icons">grade</i> </a> -->
            </li>

          </ul>
      </div>
    </div>
</div>

{% endblock %}