{% extends "layouts/base.volt" %}

{% block content %}


<div class="container">
	<div class="row">
		<div class="col s12 m6">
			<ul class="pagination">
				<li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
				<li class="active"><a href="#!">1</a></li>
				<li class="waves-effect "><a href="#!">2</a></li>
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
				<div class="card hoverable z-depth-2">
					<div class="card-image grey " >
						<img class="z-depth-4" src="/public/{{book.gambar}}"style="height: 165px; width:120px; margin:auto;" alt="" srcset="">
					</div>
					<div class="card-content">
						<h6>{{book.judul}}</h6>
						<p>{{book.penulis}}</p>
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