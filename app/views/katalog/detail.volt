{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    <div class="row">
        <div class="col s8">
            <h3>Judul Buku</h3>

            <h4>Detail</h4>
            <table>
        
                <tbody>
                  <tr>
                    <th>Judul</th>
                    <td>Bukuku</td>

                  </tr>
                  <tr>
                    <th>Penulis</th>
                    <td>Penulisku</td>
                  </tr>
                  <tr>
                    <th>Penerbit</th>
                    <td>Penerbitku</td>
                  </tr>
                </tbody>
              </table>
        </div>
        <div class="col s4">
            <img src="https://source.unsplash.com/random/200x300"style="height: 300px; width:200px;" alt="" srcset="">
        </div>
    </div>
</div>



{% endblock %}