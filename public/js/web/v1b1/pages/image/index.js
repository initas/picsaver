$(function(){
	window.scrollTo(0,0);
	free = true;
	loadGrid();
	$(window).scroll(function() {
	   if($(window).scrollTop() + $(window).height() > $(document).height()-50) {
			loadGrid();
	   }
	});
})


function loadGrid(){
	if(free){
		free = false;
		$.ajax({
			method: "GET",
			url: url+"/content/image",
		}).done(function(response){
			elem = $('[data-content="image-index"]');
			elem.append(response);
			new AnimOnScroll(document.getElementById( 'grid' ), {
				minDuration : 0.4,
				maxDuration : 0.7,
				viewportFactor : 0.2
			} );
			free = true;
		});
	}
}