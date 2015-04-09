@extends('layouts.master')

@section('styles')
	{{HTML::style('public/css/web/v1b1/grid.css')}}
@stop

@section('scripts')
	{{HTML::script('public/extension/grid-loading-effects/js/masonry.pkgd.min.js')}}
	{{HTML::script('public/extension/grid-loading-effects/js/imagesloaded.js')}}
	{{HTML::script('public/extension/grid-loading-effects/js/classie.js')}}
	{{HTML::script('public/extension/grid-loading-effects/js/AnimOnScroll.js')}}
	{{HTML::script('public/extension/grid-loading-effects/js/modernizr.custom.js')}}
	{{HTML::script('public/js/web/v1b1/pages/image/index.js')}}
@stop

@section('content')
	<div class="container-fluid">
		<ul data-content="image-index" class="grid effect-6" id="grid"></ul>
	</div>
@stop