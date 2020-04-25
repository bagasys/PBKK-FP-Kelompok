{% extends "layouts/base.volt" %}

{% block content %}


<div class="card-panel" style="width: 40vw; margin:auto; margin-top: 2rem; margin-bottom: 2rem;">
  <div class="center-align">
    <div class="row">
      <h5>Register</h5>
    </div>
    <div>
      <h6>Join to our community</h6>
    </div>
  </div>
    <form action="signup/register" method="post">
      <div class="row">
        <div class="input-field col s6">
          <i class="material-icons prefix">account_circle</i>
          <input id="nama" type="text" class="validate" name="nama" required>
          <label for="nama">Nama</label>
        </div>
        <div class="input-field col s6">
          <i class="material-icons prefix">contact_phone</i>
          <input id="telepon" type="text" class="validate" name="no_telp" required>
          <label for="telepon">Nomor Telepon</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">place</i>
          <input type="text" id="alamat" class="validate" name="alamat" required>
          <label for="alamat">Alamat</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <i class="material-icons prefix"></i>
          <input type="text" id="username" class="validate" name="username" required>
          <label for="username">Username</label>
        </div>
        <div class="input-field col s6">
          <i class="material-icons prefix"></i>
          <input type="password" id="password" class="validate" name="password" required>
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="col s12" style="">
          <button class="btn waves-effect waves-light" style="width:100%" type="submit" name="action">Submit
            <i class="material-icons">send</i>
          </button>  
        </div>
        
      </div>
      

    </form>
</div>  




{% endblock %}