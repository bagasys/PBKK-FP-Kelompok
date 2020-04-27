{% extends "layouts/base_admin.volt" %}
{% block content %}
<main>
  <nav class="white">
    <div class="row">
      <div class="col s12">
        <ul class="tabs">
          <li>
            <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          </li>
          <li class="tab col s12"><a href="#tambah-buku">Read Buku</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
  <div id="tambah-buku" class="col s12">
    <div class="container-admin">
        <br>
        <div class="row">
          <div class="input-field col s12 m6">
            <input id="isbn" type="text" class="validate" name="isbn" value="{{ buku.isbn }}" required>
            <label for="isbn">ISBN</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="judul" type="text" class="validate" name="judul" value="{{ buku.judul }}" required>
            <label for="judul">Judul</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="penulis" type="text" class="validate" name="penulis" value="{{ buku.penulis }}" required>
            <label for="penulis">Penulis</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="genre" type="text" class="validate" name="genre" value="{{ buku.genre }}" required>
            <label for="genre">Genre</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="penerbit" type="text" class="validate" name="penerbit" value="{{ buku.penerbit }}" required>
            <label for="penerbit">Penerbit</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="jumlah" type="number" class="validate" name="jumlah" value="{{ buku.jumlah }}" required>
            <label for="jumlah">jumlah</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="dendaPerHari" type="number" class="validate" name="dendaPerHari" value="{{ buku.dendaPerHari }}"required>
            <label for="dendaPerHari">Denda Per Hari</label>
          </div>
          <div class="input-field col s12">
            <textarea id="deskripsi" class="materialize-textarea" data-length="120" name="deskripsi" value="{{ buku.deskripsi }}"></textarea>
            <label for="deskripsi">Deskripsi</label>
          </div>

          <div class="input-field col s12">
            <img src="/{{ buku.gambar }}" alt="" width="200" height="200">
          </div>

        </div>
    </div>
  </div>
</main>
{% endblock %}