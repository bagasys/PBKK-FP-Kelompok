
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
      <form action="{{ url('admin/updatePeminjaman') }}" method="post">
        <div class="row">
          <div class="input-field col s12 m6">
            <input id="isbn" type="text" class="validate" name="isbn" value="{{ peminjaman.isbn }}" required>
            <label for="isbn">ISBN Buku</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="username" type="text" class="validate" name="username" value="{{ peminjaman.username }}" required>
            <label for="userId">Username</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="lamaPinjam" type="text" class="validate" name="lamaPinjam" value="{{ lamaPinjam }}" required>
            <label for="lamaPinjam">Lama Pinjam ( Hari )</label>
          </div>
        </div>
        <div class="row">
          <div class="col s12">
            <button class="btn waves-effect waves-light" type="submit" name="action">Submit
              <i class="material-icons right">send</i>
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</main>
{% endblock %}