{{HTML::style('public/css/web/v1b1/content.css')}}
{{HTML::style('public/extension/font-awesome/css/font-awesome.min.css')}}
{{HTML::script('public/extension/bootstrap/js/jquery-1.11.2.min.js')}}
<html>
	<head>
		<script>
			$(function(){
				$('#image').change(function(){
					$('#images-uploader-form').hide();
					$('body').append('<i class="fa fa-spinner fa-spin"></i> Uploading, Please wait.');
					$('#images-uploader-form').submit();
				});
			})
		</script>
	</head>
	<body>
		<form id="images-uploader-form" action="{{URL::to('album/'.$sign_number)}}" method="post" enctype="multipart/form-data">
			<div class="uploader">
				@if($images)
					@foreach($images as $image)
						<div class="item" style="background-image:url({{URL::to('img/image/'.$image['image_url'])}})"></div>
					@endforeach
				@endIf
				<div class="input">
					<i class="fa fa-plus"></i>
					<input id="image" name="image" type="file">
					<input name="sign_number" value="{{$sign_number}}" type="hidden">
				</div>
				<div class="clearfix"></div>
			</div>
		</form>
	</body>
</html>