{% extends "layouts/base_admin.volt" %}

{% block content %}
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


{% endblock %}