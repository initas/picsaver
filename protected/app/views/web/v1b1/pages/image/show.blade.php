@extends('layouts.master')

<?php
	$image = $response['result'];
	$detail = $response['result']['detail'];
	$user = $detail['user'];
?>

@section('scripts')
	{{HTML::script('public/extension/masonry/masonry.min.js')}}
	{{HTML::script('public/js/web/v1b1/pages/image/index.js')}}
@stop

@section('content')
	<div class="container-fluid">
		<div  class="row">
			<div class="col-sm-8">
				<div class="detail image">
					<div class="img">
						<img src="{{URL::to('img/width/1024/'.$image['image_url'])}}">
					</div>
					<div class="description">
					@if($image['name'])
						<h1>{{$image['name']}}</h1>
					@endIf
					{{$image['description']}}</div>
				</div>
			</div>
			<div class="col-sm-4">
				@include('sidebars/image-show-sidebar')
			</div>
		</div>
	</div>
@stop