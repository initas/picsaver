@extends('layouts.master')


@section('scripts')
	{{HTML::script('public/js/web/v1b1/pages/image/create.js')}}
@stop

@section('raw-script')
	<script>
		errors = <?= json_encode($errors, 1) ?>;
	</script>
@stop

@section('content')

<?php
	$user = Auth::user();
?>

<div class="container-fluid">
	<div  class="row">
		<div class="col-sm-8">
			<div class="content-panel">
				<form id="album-form" action="{{URL::to('album')}}" method="post">
					<div class="form-group">
						<label for="title">Album Title</label>
						<input id="title" name="name" type="text" class="form-control">
					</div>
					<div class="form-group">
						<label for="title">Description</label>
						<textarea id="description" name="description" type="text" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<label for="title">Pictures</label>
						<div class="uploader">
							<iframe id="uploader-frame" src="{{URL::to('content/album/uploader/'.$sign_number)}}"></iframe>
						</div>
					</div>
					<input name="sign_number" value="{{$sign_number}}" type="hidden">
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
		<div class="col-sm-4">
			@include('sidebars/user-preview-sidebar')
			@include('sidebars/user-statistic-sidebar')
			@include('sidebars/copyright-sidebar')
		</div>
	</div>
</div>
@stop