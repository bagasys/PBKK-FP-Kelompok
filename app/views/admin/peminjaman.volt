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
          <li class="tab col s6"><a href="#peminjaman-aktif">Daftar Peminjaman</a></li>
          <li class="tab col s6"><a href="#tambah-peminjaman">Tambah Peminjaman</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
  <div id="peminjaman-aktif">
    <h4>Peminjaman Aktif</h4>
    <table id="table_id" class="display">
      <thead>
        <tr>
          <t  h>ISBN</th>
          <th>Judul Buku</th>
          <th>Aksi</th>
        </tr>
      </thead>
      <tbody>
        <tr>
            <td>123</td>
            <td>Bukuku</td>
            <td>
                <a href="#"><i class="material-icons prefix">search</i></a>
                <a href="#"><i class="material-icons prefix">edit</i></a>
            </td>
        </tr>
        <tr>
            <td>321</td>
            <td>Bukumu</td>
            <td><a href="#"><i class="material-icons prefix">search</i></a></td>
        </tr>
      </tbody>
    </table>
  </div>

  


  <div id="tambah-peminjaman" class="col s12">
    <div class="container-admin">
      <form action="{{ url('admin/tambah') }}" method="post" enctype='multipart/form-data'>
        <div class="row">
          <div class="input-field col s6">
            <input id="isbn" type="text" class="validate" name="isbn" placeholder="Ex: 978-0-262-03384-8" required>
            <label for="isbn">ISBN</label>
          </div>
          <div class="input-field col s6">
            <input id="user_id" type="text" class="validate" name="user_id" placeholder="Ex: 123" required>
            <label for="user_id">ID Anggota</label>
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