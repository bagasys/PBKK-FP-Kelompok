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
          <li class="tab col s6"><a href="#peminjaman">Peminjaman</a></li>
          <li class="tab col s6"><a href="#tambah-peminjaman">Tambah Peminjaman</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-admin">
    <div id="peminjaman">
      <h4>Daftar Peminjaman</h4>
  <table id="table_id" class="display">
    <thead>
      <tr>
        <th>id buku</th>
        <th>id user</th>
      </tr>
    </thead>
    <tbody>
      {%for peminjaman in peminjamans%}
        <tr>
          <td>{{peminjaman.bukuId}}</td>
          <td>{{peminjaman.userId}}</td>
          <td>
              <!-- <a href="{{ url('admin/editbuku/1') }}"><i class="material-icons prefix">edit</i></a> -->
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
            <input id="bukuId" type="text" class="validate" name="bukuId" placeholder="Ex: 978-0-262-03384-8" required>
            <label for="bukuId">id buku</label>
          </div>
          <div class="input-field col s12 m6">
            <input id="userId" type="text" class="validate" name="userId" placeholder="Ex: Sophie's World" required>
            <label for="userId">id user</label>
          </div>
          <div class="input-field col s12 m6">
            <input type="date" id="tglPeminjaman" name="tglPeminjaman" required>
            <label for="tglPeminjaman"></label>
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