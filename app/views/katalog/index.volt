{% extends "layouts/base.volt" %}

{% block content %}


<div class="container">
	<div class="row">
		<div class="col s12">
			<ul class="pagination">
				<li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
				<li class="active"><a href="#!">1</a></li>
				<li class="waves-effect"><a href="#!">2</a></li>
				<li class="waves-effect"><a href="#!">3</a></li>
				<li class="waves-effect"><a href="#!">4</a></li>
				<li class="waves-effect"><a href="#!">5</a></li>
				<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
			</ul>
		</div>
	</div>
<div class="row">
{% for book in books %}
	<div class="col s3">
		<div class="row">
			<div class="col s12">
				<div class="card">
					<div class="card-image" >
						<img src="/public/{{book.gambar}}"style="height: 165px; width:120px; margin:auto;" alt="" srcset="">
					</div>
					<div class="card-content">
						<h5>{{book.judul}}</h5>
						<h6>{{book.penulis}}</h6>
						<p class="truncate">{{book.deskripsi}}</p>
					</div>
					<div class="card-action">
						<a href="/katalog/detail/{{book.bukuId}}">Detail Buku</a>
					</div>
				</div>
			</div>
		</div>
	</div>
{% endfor %}
</div>
</div>



{% endblock %}