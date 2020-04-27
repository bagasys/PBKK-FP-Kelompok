{% extends "layouts/base_admin.volt" %}

{% block content %}
<div class="row">
    <div class="col s12">
      <ul class="tabs">
        <li class="tab col s3"><a href="#test1">Test 1</a></li>
        <li class="tab col s3"><a class="active" href="#test2">Test 2</a></li>
        <li class="tab col s3 disabled"><a href="#test3">Disabled Tab</a></li>
        <li class="tab col s3"><a href="#test4">Test 4</a></li>
      </ul>
    </div>
    <div id="test1" class="col s12">Test 1</div>
    <div id="test2" class="col s12">Test 2</div>
    <div id="test3" class="col s12">Test 3</div>
    <div id="test4" class="col s12">Test 4</div>
  </div>
        







<div class="container-admin">





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
                    <a href="#"><i class="material-icons prefix">search</i></a>
                    <a href="{{ url('admin/updateBuku/1') }}"><i class="material-icons prefix">edit</i></a>
                </td>
            </tr>
      {% endfor %}
    </tbody>
</table>
</div>


{% endblock %}