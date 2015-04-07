<html>
	<head>
		{{HTML::style('public/css/web/v1b1/uploader.css')}}
		{{HTML::script('public/extension/bootstrap/js/jquery-1.11.2.min.js')}}
		
		<script>URL = "{{URL::to('/')}}"</script>
		{{HTML::script('public/extension/mini-uploader/assets/js/jquery.ui.widget.js')}}
		{{HTML::script('public/extension/mini-uploader/assets/js/jquery.iframe-transport.js')}}
		{{HTML::script('public/extension/mini-uploader/assets/js/jquery.fileupload.js')}}
		{{HTML::script('public/extension/mini-uploader/assets/js/script.js')}}
	</head>
	<body>
		<form id="uploader" action="{{URL::to('album/'.$sign_number)}}" method="post" enctype="multipart/form-data">
			<div class="items"></div>
			<div id="drop">
				<a>+</a>
				<input type="file" name="image" multiple />
				<input type="text" name="sign_number" value="{{$sign_number}}">
			</div>
			<div class="clearfix"></div>
		</form>
	</body>
</html>