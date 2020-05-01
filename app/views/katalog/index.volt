{% extends "layouts/base.volt" %}

{% block content %}


<div class="container">
	<div class="row">
		<div class="col s12 m6">
			<ul class="pagination">
				<li class="disabled"><a href="katalog?page={{ page.previous }}"><i class="material-icons">chevron_left</i></a></li>
				<li class="active"><a href="katalog">{{num}}</a></li>
				<li class="waves-effect"><a href="katalog?page={{ page.next }}"><i class="material-icons">chevron_right</i></a></li>
			</ul>
		</div>
	</div>
	
	{% for book in page.items %}
	<div class="row">
	<div class="col s4">
		<div class="row">
			<div class="col s12">
				<div class="card hoverable z-depth-2">
					<div class="card-image grey " >
						<img class="z-depth-4" src="/public/{{book['gambar']}}"style="height: 165px; width:120px; margin:auto;" alt="" srcset="">
					</div>
					<div class="card-content">
						<h6 class="truncate">{{book['judul']}}</h6>
						<p class="truncate"><small>{{book['penulis']}}</small></p>
					</div>
					<div class="card-action">
						<a href="/katalog/detail/{{book['bukuId']}}">Detail Buku</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	{% endfor %}

</div>



{% endblock %}