<!--required image object-->

@include('sidebars/user-preview-sidebar')

<div class="sidebar statistic">
	<div class="content">
		<div class="row labels">
			<div class="col-xs-4">Views</div>
			<div class="col-xs-4">Downloads</div>
			<div class="col-xs-4">Likes</div>
		</div>
		<div class="row values">
			<div class="col-xs-4">100</div>
			<div class="col-xs-4">20</div>
			<div class="col-xs-4">70</div>
		</div>
	</div>
</div>


<div class="sidebar download">
	<div class="content">
		<table class="table table-responsive">
			<thead>
				<tr>
					<th>Size</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>150 x 150</td>
					<td>free</td>
					<td><a href="#" class="btn btn-primary">Download</a></td>
				</tr>
				<tr>
					<td>150 x 250</td>
					<td>free</td>
					<td><a href="#" class="btn btn-primary">Download</a></td>
				</tr>
				<tr>
					<td>450 x 1000</td>
					<td>Rp. 3,000</td>
					<td><a href="#" class="btn btn-success">Purchase</a></td>
				</tr>
				<tr>
					<td>900 x 2000</td>
					<td>Rp. 5,000</td>
					<td><a href="#" class="btn btn-success">Purchase</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

@if($detail['total_tags'])
	<div class="sidebar">
		<div class="header">
			TAGS
		</div>
		<div class="content">
			@foreach($detail['tags'] as $tag)
				<div class="tag">{{$tag['name']}}</div>
			@endForeach
			<div class="clearfix"></div>
		</div>
	</div>
@endIf

@include('sidebars/copyright-sidebar')