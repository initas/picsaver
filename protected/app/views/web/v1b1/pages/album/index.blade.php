@extends('layouts.master')

@section('scripts')
	{{HTML::script('public/extension/masonry/masonry.min.js')}}
	{{HTML::script('public/js/web/v1b1/pages/album/index.js')}}
@stop

@section('content')
	<div class="container-fluid">
		<div class="masonry" data-content="album-index"></div>
	</div>
@stop