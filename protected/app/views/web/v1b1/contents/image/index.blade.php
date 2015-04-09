<?php
	$images = $response['results']['data'];
?>
@foreach($images as $image)
	<?php
		$detail = $image['detail'];
	?>
	<li class="card image item">
		<div class="img">
			<a href="{{URL::to('image/'.$image['id'])}}">
				<img src="{{URL::to('img/width/350/'.$image['image_url'])}}">
			</a>
		</div>
		@if($image['name'])
			<div class="title">{{$image['name']}}</div>
		@endIf
		@if($image['description'])
			<div class="description">{{$image['description']}}</div>
		@endIf
		<div class="user-detail">
			<div class="img">
				<img src="{{URL::to('img/stock/web/v1b1/me.png')}}">
			</div>
			<div class="informations">
				<div class="username">{{'@'.$image['detail']['user']['username']}}</div>
				<div class="full_name">{{$image['detail']['user']['name']}}</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</li>
@endForeach