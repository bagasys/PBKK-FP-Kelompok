{% extends "layouts/base_admin.volt" %}

{% block content %}
<div class="row">
  <div class="col s12">
    <ul class="tabs">
      <li class="tab col s3"><a href="#test1">Daftar Buku</a></li>
      <li class="tab col s3"><a class="active" href="#test2">Tambah Buku</a></li>
    </ul>
  </div>
</div>


<div class="container-admin">
  <div id="test1">
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


<div id="test2" class="col s12">
  <div class="container-admin">
    <form action="{{ url('admin/buku') }}">
      <div class="row">
        <div class="input-field col s6">
          <input id="isbn" type="text" class="validate" name="isbn" required>
          <label for="isbn">Isbn</label>
        </div>
        <div class="input-field col s6">
          <input id="judul" type="text" class="validate" name="judul" required>
          <label for="judul">Judul</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input id="penulis" type="text" class="validate" name="penulis" required>
          <label for="penulis">Penulis</label>
        </div>
        <div class="input-field col s6">
          <input id="genre" type="text" class="validate" name="genre" required>
          <label for="genre">Genre</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input id="penerbit" type="text" class="validate" name="penerbit" required>
          <label for="penerbit">Penerbit</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input id="jumlah" type="number" class="validate" name="jumlah" required>
          <label for="jumlah">jumlah</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <textarea id="deskripsi" class="materialize-textarea" data-length="120"></textarea>
          <label for="deskripsi">Deskripsi</label>
        </div>
      </div>
      <div class="file-field input-field">
        <div class="btn">
          <span>Gamar Buku</span>
          <input type="file" multiple>
        </div>
        <div class="file-path-wrapper">
          <input class="file-path validate" type="text" placeholder="Upload gambar buku">
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







{% endblock %}