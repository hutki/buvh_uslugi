// JavaScript Document

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



$(document).ready(function(e) {		

/*--------------------------------*/  
/*удалил оригинальный скрипт, вставил свой, доделать анимацию*/


	$('#carusel').carusel();

$(document).ready(function() {
		var body = $('body');
		var pull = $('#pull');
		var bug = $('.bug');
		var search = $('#search')
		$(pull).on('click', function(e) {
		e.preventDefault();
		body.toggleClass('switch');
			bug.toggleClass('bug bug_close');
			search.toggleClass('search_menu');
		});

	});





/*---------------------слайдер в header ----------------------------*/	
$ind=0;
$('#header>div>div>div div').each(function(index, element) {
	$ind++;
    $(this).css({'z-index':$ind});
});
$('#header>div>div>img').click(function(){	
	$('#header>div>div>div div:animated').each(function(index, element){		
			exit();
        });
	$el = $('.active_slaid');
	if($(this).attr('alt')=='left'){
		$('#header>div>div>div div:animated').each(function(index, element){		
			exit();
        });
		$el = $('.active_slaid');
		$el.css({'left':'0'}).removeClass('active_slaid').animate({'left':'670px'},700,function(){
			$el.removeClass('active_slaid');
		});
		if($el.prev().is('div')){
				$el.prev().css({'left':'-670px'}).animate({'left':'0'},700,function(){
					$(this).addClass('active_slaid');
				});
			}
			else {
				$('#header>div>div>div div:last').css({'left':'-670px'}).animate({'left':'0'},700,function(){
					$(this).addClass('active_slaid');
				});
		}
	}
	else  
		autoHeadSlaid();
	});
	
function autoHeadSlaid(){
	$('#header>div>div>div div:animated').each(function(index, element){		
			exit();
        });
	$el = $('.active_slaid');
	$el.css({'left':'0'}).removeClass('active_slaid').animate({'left':'-670px'},700,function(){
		$el.removeClass('active_slaid');
	});
	if($el.next().is('div')){
			$el.next().css({'left':'670px'}).animate({'left':'0'},700,function(){
				$(this).addClass('active_slaid');
			});
		}
		else {
			$('#header>div>div>div div:first').css({'left':'670px'}).animate({'left':'0'},700,function(){
				$(this).addClass('active_slaid');
			});
		}
}

$headInterval = setInterval(autoHeadSlaid,5000);

$('#header>div>div').hover(function(){
		clearInterval($headInterval);
	},
	function(){
		$headInterval = setInterval(autoHeadSlaid,5000);
	});

 /*$(document).mousemove(function(e){
		$('#sky>div:first').css({'background-position': 15+($(window).width() - $(window).width()/2 - e.clientX)/5+'% 100%'});
		$('#sky>div:first+div').css({'background-position': 10+($(window).width() - $(window).width()/2 - e.clientX)/3+'% 100%'});
		$('#sky>div:last').css({'background-position': 0+($(window).width() - $(window).width()/2 - e.clientX)/2+'% 0%'});
    });*/


});