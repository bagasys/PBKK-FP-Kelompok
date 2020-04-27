{% extends "layouts/base.volt" %}

{% block content %}


<div class="card-panel" style="width: 40vw; margin:auto; margin-top: 2rem; margin-bottom: 2rem;">
  <div class="center-align">
    <div class="row">
      <h5>Tambah Buku</h5>
    </div>
    <div>
      <h6>Join to our community</h6>
    </div>
  </div>

  <!-- form tambah buku -->
    <form action="tes/tambah" method="post" enctype='multipart/form-data'>

        <div class="field">
            <label for="isbn">ISBN / ISSN</label>
            <input type="text" name="isbn" placeholder="Ex: 978-0-262-03384-8">
        </div>

        <div class="three fields">
            <div class="field">
                <label for="judul">Judul</label>
                <input type="text" name="judul" placeholder="Ex: Sophie's World">        
            </div>
            <div class="field">
                <label for="penulis">Penulis</label>
                <input type="text" name="penulis" placeholder="Ex: J. K. Rowling">
            </div>
            <div class="field">
                <label for="penerbit">Penerbit</label>
                <input type="text" name="penerbit" placeholder="Ex: Mizan">
            </div>
        </div>

        <div class="field">
            <label for="genre">Genre</label>
            <input type="text" name="genre" placeholder="Pendidikan, Novel">
        </div>

        <div class="field">
            <label for="deskripsi">Deskripsi</label>
            <textarea name="deskripsi" placeholder="Ex: Novel ini bercerita tentang kehidupan 10 anak..."></textarea>
        </div>

        <div class="field">
            <label for="dendaPerHari">Denda Per Hari</label>
            <input type="text" name="dendaPerHari" placeholder="3000">
        </div>

        <div class="field">
            <label for="jumlah">Jumlah Buku</label>
            <input type="text" name="jumlah" placeholder="Ex: 10">
        </div>

        <div class="field">
            <label for="gambar">Cover</label>
            <input type="file" name="gambar">
        </div>

        <input type="submit" value="Tambahkan Buku ke Koleksi" class="ui black button">
    </form>

</div>  




{% endblock %}