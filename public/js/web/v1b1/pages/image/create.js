$(function(){
	$("#uploader").on("load", function () {
		 $(this).height($(this).contents().height());
	})
	validate('#album-form', errors);
})