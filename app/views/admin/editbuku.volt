{% extends "layouts/base_admin.volt" %}

{% block content %}


<div class="container-admin">
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






{% endblock %}