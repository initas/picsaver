$(document).ready(function(){
	windowHeight = ($(window).height());
	navbarHeight = ($('.navbar').height());
	$('.swipe-bar').height(windowHeight-navbarHeight-40).css('left', -300);
	$('[data-toggle="swipe-bar"]').click(function(){
		swipeBarWidth = $('.swipe-bar').css('width');
		swipeBarDisplay = $('.swipe-bar').css('display');
		if(swipeBarDisplay=='none'){
			$('.swipe-bar').show().animate({'left':15});
		}else{
			$('.swipe-bar').animate({'left':'-'+swipeBarWidth}, 400, function() {
				$(this).hide()
			});
		}
	})
})

//form related
function devalidate(form){
	form = $(form);
	form.find('[name]').each(function(index, element) {
		if($(element).parent().hasClass('has-error')){
			$(element).unwrap('<div class="has-error"></div>');
		}
	});
	form.find('[data-for]').remove();
}
function validate(form, errors){
	form = $(form);
	$.each(errors, function(key, value) {
		form.find('[name='+key+']')
			.wrap('<div class="has-error"></div>')
			.after('<small data-for="'+key+'">'+value+'</small>');
	});
}