(function ($) {

$.fn.carusel = function() {
var obj = $(this);
var w_img = obj.find('li').width();
var c_left = Number(obj.children('ul').css('left').replace('px',''));
var w_button = obj.find('.next').width();

	$(window).resize(function() {
			itm = Math.floor((Number($('#carusel').parent().width()) - w_button * 2) / w_img);
			$('#carusel').css({'width':(itm*w_img + 2*w_button)+'px'});
		});

obj.children('ul').width(w_img * obj.find('li').length);

obj.find('.next').click(function(){
	obj.children('ul').prepend(obj.find('li:last').clone());
	obj.find('li:last').remove();
	obj.children('ul').css({'left':(c_left - w_img) + 'px'});
	obj.children('ul').animate({'left':c_left}, 500);
});

obj.find('.prev').click(function(){
	obj.children('ul').animate({'left':c_left - w_img}, 500, function () {
	obj.children('ul').append(obj.find('li:first').clone());
	obj.find('li:first').remove();
	obj.children('ul').css({'left':(c_left) + 'px'});
	});
});
}

}) (jQuery)

$(document).ready(function(e){
	$('#carusel').carusel();

});
