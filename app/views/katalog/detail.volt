{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    <div class="row card-panel">
      <div class="col s6 m4">
        <div class="">
          <img src="https://source.unsplash.com/random/180x288"style="height: 288px; width:180px;" alt="" srcset="">
        </div>
        <div class="">
          <a class="waves-effect waves-light btn" style="width: 180px;">+ Wishlist</a>
        </div>
      </div>
      <div class="col s6 m8">
        <h4>Judul Buku</h4>
        <p>Penulis</p>
        <p>Deskripsi</p>
      </div>
    </div>
    <div class="row card-panel">
      <div class="col s12">
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
    </div>
</div>



{% endblock %}