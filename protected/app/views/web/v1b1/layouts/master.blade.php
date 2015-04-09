<?php
	$user = \models\v1b1\User::find(1);
	$sessionUser = Auth::login($user);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<meta charset="utf-8">
		<title>PicSaver</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
        <link rel="shortcut icon" href="{{asset('img/stock/web/v1b1/favicon.ico')}}" type="image/x-icon">
		
		<!-- Styles -->
		{{HTML::style('public/extension/bootstrap/css/bootstrap.css')}}
		{{HTML::style('public/extension/font-awesome/css/font-awesome.min.css')}}
		{{HTML::style('public/css/web/v1b1/main.css')}}
		
		<!-- Raw Styles -->
		@section('raw-style')
		@show
		
		<!-- Custom Styles -->
		@section('styles')
		@show
		
		<!-- Scripts Initial -->
		<script>
			url = '{{URL::to('/')}}';
		</script>
		
		<!-- Scripts -->
        {{HTML::script('public/extension/bootstrap/js/jquery-1.11.2.min.js')}}
        {{HTML::script('public/extension/bootstrap/js/bootstrap.min.js')}}
        {{HTML::script('public/extension/autocomplete/jquery.autocomplete.js')}}
        {{HTML::script('public/js/web/v1b1/main.js')}}
		
		<!-- Raw Scripts -->
		@section('raw-script')
		@show
		
		<!-- Custom Scripts -->
		@section('scripts')
		@show

</HEAD>
<BODY>
	@include('layouts.header')
	@include('layouts.swipe-bar')
	@section('content')
	@show
</BODY>
</HTML>