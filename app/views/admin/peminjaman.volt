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
          <li class="tab col s6"><a href="#daftar-peminjaman">Daftar Buku</a></li>
          <li class="tab col s6"><a href="#tambah-peminjaman">Tambah Buku</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
    <div id="daftar-peminjaman">
      <h4>Daftar Buku</h4>
  <table id="table_id" class="display">
    <thead>
      <tr>
        <th>ISBN</th>
        <th>username</th>
        <th>aksi</th>
        <th>aksi</th>
      </tr>
    </thead>
    <tbody>
      {%for peminjaman in peminjamans%}
      <tr>
          <td>{{peminjaman.isbn}}</td>
          <td>{{peminjaman.username}}</td>
          <td>{{peminjaman.tglKembali}}</td>
          <td>
              <!-- <a href="/admin/readbuku/{{peminjaman.peminjamanId}}"><i class="material-icons prefix">search</i></a> -->
              <a href="/admin/updatePeminjaman/{{peminjaman.peminjamanId}}"><i class="material-icons prefix">edit</i></a>
              <!-- <a href="/admin/deletebuku/{{peminjaman.peminjamanId}}"><i class="material-icons prefix">delete</i></a> -->
          </td>
      </tr> 
      {%endfor%}
    </tbody>
  </table>
  </div>


  <div id="tambah-peminjaman" class="col s12">
    <div class="container-admin">
      <form action="{{ url('admin/createPeminjaman') }}" method="post">
        <div class="row">
          <div class="input-field col s12 m6">
            <input id="isbn" type="text" class="validate" name="isbn" placeholder="Ex: 978-0-262-03384-8" required>
            <label for="isbn">ISBN</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="username" type="text" class="validate" name="username" placeholder="Ex: Sophie's World" required>
            <label for="username">username</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="lamaPinjam" type="number" class="validate" name="lamaPinjam" placeholder="3" required>
            <label for="lamaPinjam">Lama Pinjam (hari)</label>
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