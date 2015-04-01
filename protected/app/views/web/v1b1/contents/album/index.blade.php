<?php
	$albums = $response['results']['data'];
	$sizes = array(
		3 => array(
			0 => '100/300',
			1 => '100/300',
			2 => '100/300'
		),
		4 => array(
			0 => '100/304',
			1 => '100/100',
			2 => '100/100',
			3 => '100/100'
		)
	);
?>
@foreach($albums as $album)
	@if($album['detail']['images_total'])
		<div class="card album item">
			<div class="img">
				<a href="#">
					<?php $total_images = count($album['detail']['images']); ?>
					@for($i=0;$i<$total_images;$i++)
						<?php
							$image = $album['detail']['images'][$i];
						?>
						<img class="col-{{$total_images}}" src="{{URL::to('img/'.$sizes[$total_images][$i].'/'.$image['image_url'])}}">
					@endfor
					<div class="clearfix"></div>
				</a>
			</div>
			@if($album['name'])
				<div class="title">{{$album['name']}}</div>
			@endIf
			@if($album['description'])
				<div class="description">{{$album['description']}}</div>
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
		</div>
	@endIf
@endForeach