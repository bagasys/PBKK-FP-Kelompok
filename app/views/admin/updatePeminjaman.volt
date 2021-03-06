
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
          <li class="tab col s12"><a href="#tambah-peminjaman">Pengembalian Buku</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
  <div id="tambah-peminjaman" class="col s12">
    <div class="container-admin">
      <form action="/admin/updatePeminjaman/{{peminjaman.peminjamanId}}" method="post">
        <div class="row">
          <div class="input-field col s12 m6">
            <input disabled id="isbn" type="text" class="validate" name="isbn" value="{{ buku.isbn }}" required>
            <label for="isbn">ISBN Buku</label>
          </div>
          <div class="input-field col s12 m6">
            <input disabled id="judul" type="text" class="validate" name="judul" value="{{ buku.judul }}" required>
            <label for="judul">Judul</label>
          </div>
          <div class="input-field col s12 m6">
            <input disabled id="username" type="text" class="validate" name="username" value="{{ peminjaman.username }}" required>
            <label for="userId">Username</label>
          </div>
          <div class="input-field col s12 m6">
            <input disabled id="terlambat" type="text" class="validate" name="terlambat" value="{{ hariTerlambat }}" required>
            <label for="terlambat">Terlambat (hari)</label>
          </div>
          <div class="input-field col s12 m6">
            <input disabled id="denda" type="text" class="validate" name="denda" value="{{ denda }}" required>
            <label for="denda">Denda (hari)</label>
          </div>
        </div>
        <div class="row">
          <div class="col s12">
            <button class="btn waves-effect waves-light" type="submit" name="action">Kembalikan
              <i class="material-icons right">send</i>
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</main>
{% endblock %}