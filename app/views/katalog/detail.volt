{% extends "layouts/base.volt" %}

{% block content %}
<div class="container">
    <div class="row card-panel">
      <div class="col s6 m4">
        <div class="">
          <img src="/public/{{buku.gambar}}"style="height: 288px; width:180px;" alt="" srcset="">
        </div>
        
        <div class="">
        {% if session.get('auth') == null %} {# variable is not set #}
        <button class="btn waves-effect waves-light disabled" type="submit" style="width: 180px;" name="action">
          <i class="material-icons left">add</i> Wishlist
        </button>
        {% elseif isWished%}
        <button class="btn waves-effect waves-light pink accent-3" type="submit" style="width: 180px;" name="action">
          <i class="material-icons left">remove</i> on Wishlist
        </button>
        {% else %}
        <form action="{{url('wishlist/create')}}" method="post">
          <input class="hide" type="number" name="userId" value="{{session.auth['userId']}}">
          <input class="hide" type="number" name="bukuId" value="{{buku.bukuId}}">
          <input class="hide" type="text" name="pageAddress" value="/katalog/detail/{{buku.bukuId}}">
          <button class="btn waves-effect waves-light" type="submit" style="width: 180px;" name="action">
            <i class="material-icons left">add</i> Wishlist
          </button>
        </form>
        {% endif %}  
        </div>
      
      </div>
      <div class="col s6 m8">
        <h4>{{buku.judul}}</h4>
        <p>{{buku.penulis}}</p>
        <p>{{buku.deskripsi}}</p>
      </div>
    </div>
    <div class="row card-panel">
      <div class="col s12 m6">
        <h4>Detail</h4>
            <table>
                <tbody>
                  <tr>
                    <th>Judul</th>
                    <td>{{buku.judul}}</td>
                  </tr>
                  <tr>
                    <th>Penulis</th>
                    <td>{{buku.penulis}}</td>
                  </tr>
                  <tr>
                    <th>Penerbit</th>
                    <td>{{buku.penerbit}}</td>
                  </tr>
                  <tr>
                    <th>Genre</th>
                    <td>{{buku.genre}}</td>
                  </tr>
                  <tr>
                    <th>Jumlah</th>
                    <td>{{buku.jumlah}}</td>
                  </tr>
                  <tr>
                    <th>Tersedia</th>
                    <td>{{buku.jumlah - buku.jumlahKeluar }}</td>
                  </tr>
                </tbody>
              </table>
      </div>
    </div>
</div>



{% endblock %}