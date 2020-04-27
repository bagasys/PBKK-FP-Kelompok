{% extends "layouts/base_admin.volt" %}

{% block content %}
<div class="row">
  <div class="col s12">
    <ul class="tabs">
      <li class="tab col s3"><a href="#test1">Daftar Peminjaman</a></li>
      <li class="tab col s3"><a class="active" href="#test2">Tambah Peminjaman</a></li>
    </ul>
  </div>
</div>


<div class="container-admin">
  <div id="test1">
    <h4>Daftar Peminjaman</h4>
<table id="table_id" class="display">
  <thead>
    <tr>
      <th>User ID</th>
      <th>Nama User</th>
      <th>Buku ID</th>
      <th>Judul Buku</th>
      <th>Tanggal Harus Kembali</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
        <td>123</td>
        <td>Bukuku</td>
        <td>123</td>
        <td>123</td>
        <td>123</td>
        <td>
            <a href="#"><i class="material-icons prefix">search</i></a>
            <a href="#"><i class="material-icons prefix">edit</i></a>
        </td>
    </tr>
    <tr>
        <td>321</td>
        <td>Bukumu</td>
        <td>123</td>
        <td>123</td>
        <td>123</td>
        <td><a href="#"><i class="material-icons prefix">search</i></a></td>
    </tr>
  </tbody>
</table>
</div>


<div id="test2" class="col s12">
  <div class="container-admin">
    <form action="{{ url('admin/buku') }}" method="post">
        <div class="row">
        <div class="input-field col s6">
          <input id="isbn" type="text" class="validate" name="isbn" required>
          <label for="isbn">Isbn</label>
        </div>
        <div class="input-field col s6">
          <input id="judul" type="text" class="validate" name="judul" required>
          <label for="judul">User id</label>
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