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
          <li class="tab col s6"><a href="#daftar-buku">Daftar Buku</a></li>
          <li class="tab col s6"><a href="#tambah-buku">Tambah Buku</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
    <div id="daftar-buku">
      <h4>Daftar Buku</h4>
  <table id="table_id" class="display">
    <thead>
      <tr>
        <th>ISBN</th>
        <th>Judul Buku</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
      {% for book in books %}
      <tr>
          <td>{{book.isbn}}</td>
          <td>{{book.judul}}</td>
          <td>
              <a href="/admin/readbuku/{{book.bukuId}}"><i class="material-icons prefix">search</i></a>
              <a href="/admin/updatebuku/{{book.bukuId}}"><i class="material-icons prefix">edit</i></a>
              <a href="/admin/deletebuku/{{book.bukuId}}"><i class="material-icons prefix">delete</i></a>
          </td>
      </tr> 
      {% endfor %}
    </tbody>
  </table>
  </div>
  <div id="tambah-buku" class="col s12">
    <div class="container-admin">
      <form action="{{ url('admin/createbuku') }}" method="post" enctype='multipart/form-data'>
        <div class="row">
          <div class="input-field col s12 m6">
            <input id="isbn" type="text" class="validate" name="isbn" placeholder="Ex: 978-0-262-03384-8" required>
            <label for="isbn">ISBN</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="judul" type="text" class="validate" name="judul" placeholder="Ex: Sophie's World" required>
            <label for="judul">Judul</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="penulis" type="text" class="validate" name="penulis" placeholder="Ex: J. K. Rowling" required>
            <label for="penulis">Penulis</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="genre" type="text" class="validate" name="genre" placeholder="Pendidikan, Novel"required>
            <label for="genre">Genre</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="penerbit" type="text" class="validate" name="penerbit" placeholder="Ex: Mizan" required>
            <label for="penerbit">Penerbit</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="jumlah" type="number" class="validate" name="jumlah" placeholder="1" required>
            <label for="jumlah">jumlah</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="dendaPerHari" type="number" class="validate" name="dendaPerHari" required placeholder="3000">
            <label for="dendaPerHari">Denda Per Hari</label>
          </div>
          <div class="input-field col s12">
            <textarea id="deskripsi" class="materialize-textarea" data-length="120" name="deskripsi" placeholder="Ex: Novel ini bercerita tentang kehidupan 10 anak..."></textarea>
            <label for="deskripsi">Deskripsi</label>
          </div>
          <div class="input-field col s12">
            <div class="file-field input-field">
              <div class="btn">
                <span>Cover</span>
                <input type="file" name="gambar">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="text">
              </div>
            </div>
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