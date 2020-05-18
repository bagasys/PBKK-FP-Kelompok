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
          <li class="tab col s6"><a href="#daftar-buku">Daftar Peminjaman</a></li>
          <li class="tab col s6"><a href="#tambah-buku">Tambah Peminjaman</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
    <div id="daftar-buku">
      <h4>Daftar Peminjaman</h4>
  <table id="table_id" class="display">
    <thead>
      <tr>
        <th>ISBN</th>
        <th>username</th>
        <th>tgl_kembali</th>
        <th>aksi</th>
      </tr>
    </thead>
    <tbody>
      {% for peminjaman in peminjamans %}
      <tr>
        <td>{{peminjaman.isbn}}</td>
        <td>{{peminjaman.username}}</td>
        <td>{{peminjaman.tglKembali}}</td>
        <td>
          {% if peminjaman.tglKembali != null %}
          <a href="/admin/updatePeminjaman/{{peminjaman.peminjamanId}}"><i class="material-icons prefix">edit</i></a>
          <!-- <a href="/admin/deletePeminjaman/{{peminjaman.peminjamanId}}"><i class="material-icons prefix">delete</i></a> -->
          {% endif %}
        </td>
      {% endfor %}
    </tr>
    </tbody>
  </table>
  </div>
  <div id="tambah-buku" class="col s12">
    <br>
    <div class="container-admin">
      <form action="{{ url('admin/createPeminjaman') }}" method="post">
        <div class="row">
          <div class="input-field col s12 m6">
            <input id="isbn" type="text" class="validate" name="isbn" placeholder="Ex: 978-262-03384-84-9" required>
            <label for="isbn">ISBN Buku</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="username" type="text" class="validate" name="username" placeholder="Ex: jovi" required>
            <label for="username">Username</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="lamaPinjam" type="number" class="validate" name="lamaPinjam" placeholder="3" required>
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