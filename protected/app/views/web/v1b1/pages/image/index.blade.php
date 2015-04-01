@extends('layouts.master')

@section('scripts')
	{{HTML::script('public/extension/masonry/masonry.min.js')}}
	{{HTML::script('public/js/web/v1b1/pages/image/index.js')}}
@stop

@section('content')
	<div class="container-fluid">
		<div class="masonry" data-content="image-index"></div>
	</div>
@stop