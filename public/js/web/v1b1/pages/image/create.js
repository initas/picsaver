$(function(){
	$("#uploader-frame").on("load mouseover mouseout mouseleave", function () {
		 $(this).height($(this).contents().height());
	})
	validate('#album-form', errors);
})