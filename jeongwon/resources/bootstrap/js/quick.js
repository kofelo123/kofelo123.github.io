// JavaScript Document

//--------------------------�곷떒�대룞�ㅽ겕濡�--------------------------//
$(function(){
  $("a.slidescrolltop").click(function(){ 
       var val_id = $(this).attr("target"); 
        $("html,body").animate({scrollTop:$("#"+val_id).offset().top}, 
        1000,"easeInOutCirc" 
    ) 
        $(this).blur(); 
        return false; 
    }); 
    
})
 
//--------------------------�듬찓�댁빻�뚯씠�� �믪씠議곗젅--------------------------//
$(function() {
		var qheight = $('#wrap').height();
		$('#quick_nav').height(qheight-100);
	});
	
//--------------------------�댄똻--------------------------//
$(function() { 
	
		var toolTip = $('.tooltipNav');	
		toolTip.bind('mouseenter', function(){
			$('.tooltip').show()
		});
		toolTip.bind('mouseleave', function(){
		  $('.tooltip').hide();
		});
});		
		
//--------------------------�ъ씠�몃㏊--------------------------//

$(function() {
	$(".topMenuAction").click( function() {
		if ($("#openCloseIdentifier").is(":hidden")) {
			$("#slider").animate({
				top: "-550px"
				}, 500 );
			$("#openCloseIdentifier").show();
		} else {
			$("#slider").animate({
				top: "100px"
				}, 500 );
			$("#openCloseIdentifier").hide();
		}
	});
});


//--------------------------紐⑤떖�덈룄�� �쇱씠釉뚮윭由�--------------------------//

$(function() {
	$('.fancybox').fancybox();
	
	/*
	 *  Different effect
	 */
	
	// Change title type, overlay closing speed
	$(".fancybox-effects-a").fancybox({
		helpers: {
			title : {
				type : 'outside'
			},
			overlay : {
				speedOut : 0
			}
		}
	});
	
	// Disable opening and closing animations, change title type
	$(".fancybox-effects-b").fancybox({
		openEffect  : 'none',
		closeEffect	: 'none',
	
		helpers : {
			title : {
				type : 'over'
			}
		}
	});
	
	// Set custom style, close if clicked, change title type and overlay color
	$(".fancybox-effects-c").fancybox({
		wrapCSS    : 'fancybox-custom',
		closeClick : true,
	
		openEffect : 'none',
	
		helpers : {
			title : {
				type : 'inside'
			},
			overlay : {
				css : {
					'background' : 'rgba(238,238,238,0.85)'
				}
			}
		}
	});
	
	// Remove padding, set opening and closing animations, close if clicked and disable overlay
	$(".fancybox-effects-d").fancybox({
		padding: 0,
	
		openEffect : 'elastic',
		openSpeed  : 150,
	
		closeEffect : 'elastic',
		closeSpeed  : 150,
	
		closeClick : true,
	
		helpers : {
			overlay : null
		}
	});
	
	/*
	 *  Button helper. Disable animations, hide close button, change title type and content
	 */
	
	$('.fancybox-buttons').fancybox({
		openEffect  : 'none',
		closeEffect : 'none',
	
		prevEffect : 'none',
		nextEffect : 'none',
	
		closeBtn  : false,
	
		helpers : {
			title : {
				type : 'inside'
			},
			buttons	: {}
		},
	
		afterLoad : function() {
			this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
		}
	});
	
	
	/*
	 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
	 */
	
	$('.fancybox-thumbs').fancybox({
		prevEffect : 'none',
		nextEffect : 'none',
	
		closeBtn  : false,
		arrows    : false,
		nextClick : true,
	
		helpers : {
			thumbs : {
				width  : 50,
				height : 50
			}
		}
	});
	
	/*
	 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
	*/
	$('.fancybox-media')
		.attr('rel', 'media-gallery')
		.fancybox({
			openEffect : 'none',
			closeEffect : 'none',
			prevEffect : 'none',
			nextEffect : 'none',
	
			arrows : false,
			helpers : {
				media : {},
				buttons : {}
			}
		});
	
	/*
	 *  Open manually
	 */
	
	$("#fancybox-manual-a").click(function() {
		$.fancybox.open('1_b.jpg');
	});
	
	$("#fancybox-manual-b").click(function() {
		$.fancybox.open({
			href : 'iframe.html',
			type : 'iframe',
			padding : 5
		});
	});
	
	$("#fancybox-manual-c").click(function() {
		$.fancybox.open([
			{
				href : '1_b.jpg',
				title : 'My title'
			}, {
				href : '2_b.jpg',
				title : '2nd title'
			}, {
				href : '3_b.jpg'
			}
		], {
			helpers : {
				thumbs : {
					width: 75,
					height: 50
				}
			}
		});
	});

});



//--------------------------濡ㅼ삤踰� �대�吏�蹂�寃�--------------------------//
$(function() {

	if ( $('img').hasClass('active') ){
		$('img.active').attr('src', $('img.active').attr('src').split('_off.')[0] + '_on.' + $('img.active').attr('src').split('_off.')[1]);
	}
	$('img.rollover').mouseover(function(){
		if ( !$(this).hasClass('active') ){
			var image_name = $(this).attr('src').split('_off.')[0];
			var image_type = $(this).attr('src').split('_off.')[1];
			$(this).attr('src', image_name + '_on.' + image_type);
		}
	}).mouseout(function(){
		if ( !$(this).hasClass('active') ){
			var image_name = $(this).attr('src').split('_on.')[0];
			var image_type = $(this).attr('src').split('_on.')[1];
			$(this).attr('src', image_name + '_off.' + image_type);
		}
	});
});


//--------------------------gnb--------------------------//
$(function() {
	var $menu = $('#ldd_menu');
	$menu.children('li').each(function(){
		var $this = $(this);
		$this.bind('mouseenter',function(){
			$this.find('a').addClass('hover');
			$menu.find('.ldd_submenu').stop(true,true).hide();
			$this.find('.ldd_submenu').slideDown(100);
		}).bind('mouseleave',function(){
			$this.find('a').removeClass('hover');
			$this.find('.ldd_submenu').stop(true,true).hide();
		});
		$this.bind('focusin',function(){
			$this.find('a').addClass('hover');
			$this.find('.ldd_submenu').slideDown(100);
		}).bind('focusout',function(){
			$this.find('a').removeClass('hover');
		});
		$('.info_gnb').bind('focusin',function(){
			$this.find('.ldd_submenu').slideUp(100);
		});
		$('#main_visual').bind('focusin',function(){
			$this.find('.ldd_submenu').slideUp(100);
		});	
		$('.lnb').bind('focusin',function(){
			$this.find('.ldd_submenu').slideUp(100);
		});				
	});
});





//--------------------------硫붿씤 濡ㅻ쭅 鍮꾩＜�� �섏젙��--------------------------//
/*$(function() {
		$('#default').slidy({
		 });
		$('#pause').slidy({
			cursor:		'wait',
			pause:		true,
			animation:	'fade'
		});
		$('#menu').slidy({
			children:	'a',
			menu:		true,
			pause:		true,
			speed:		400,
			time:		4000,
			animation:	'fade',
			width:		600,
			height:		370
		});
		$('.group').slidy({
			height:		185,
			animation:	'fade',
			width:		200
		});
			
				
		$('ul.slidy-menu li:eq(0)').css({
			top:0,
			left:-200,
			background:'url(images/main/visual/li01.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(1)').css({
			top:185,
			left:-200,
			background:'url(images/main/visual/li02.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(2)').css({
			top:0,
			left:600,
			background:'url(images/main/visual/li03.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(3)').css({
			top:185,
			left:600,
			background:'url(images/main/visual/li04.png) no-repeat'
			});		
	});
$(function() {
		$('.slogan_txt p.txt').animate({
			opacity:1,
			marginRight:2
			},2000);
		})
		function logoani(){
		$('.slogan_txt p.vlogo').animate({
			opacity:1,
			marginRight:0
			},1500);
		}
		setTimeout("logoani()",800);	
*/		
		
//--------------------------硫붿씤 濡ㅻ쭅 鍮꾩＜�� �섏젙 140603--------------------------//
$(function() {
		$('#default').slidy({
		 });
		$('#pause').slidy({
			cursor:		'wait',
			pause:		true,
			animation:	'fade'
		});
		$('#menu').slidy({
			children:	'a',
			menu:		true,
			pause:		true,
			speed:		400,
			time:		4000,
			animation:	'fade',
			width:		509,
			height:		370
		});
		$('.group').slidy({
			height:		185,
			animation:	'fade',
			width:		179
		});
			
				
		$('ul.slidy-menu li:eq(0)').css({
			background:'url(images/main/visual/li01_new.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(1)').css({
			background:'url(images/main/visual/li02_new.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(2)').css({
			background:'url(images/main/visual/li03_new.png) no-repeat'
			});
		$('ul.slidy-menu li:eq(3)').css({
			background:'url(images/main/visual/li04_new.png) no-repeat'
			});		
	});
$(function() {
		$('.slogan_txt p.txt').animate({
			opacity:1,
			marginRight:2
			},2000);
		})
		function logoani(){
		$('.slogan_txt p.vlogo').animate({
			opacity:1,
			marginRight:0
			},1500);
		}
		setTimeout("logoani()",800);	
	
				
		
		
//--------------------------lnb--------------------------//	

$(function(){
	var accordionMenu = $('.lnb'),

	selector = accordionMenu.find('> li > a'),
	selector2 = accordionMenu.find('> li > ul'),
	showSpeed = 300,
	hideSpeed = 300;
	
	// on�대옒�ㅺ� �덈뒗�붿냼 �쒖꽦��[�섏씠吏� �ㅻ퉬寃뚯씠��]
	selector.each(function(){
		if ($(this).hasClass('on') && $(this).next('ul').length != 0 ){
		$(this).next('ul').show();
			oldselector = $(this);
			};
	});
	
	// �꾩퐫�붿뼵 �대깽��
	selector.bind('click', function(){
		var $this = $(this),
		// �ㅻ퉬寃뚯씠�� �섏쐞硫붾돱
		deps2 = $this.next('ul'),
		// �ㅻ퉬寃뚯씠�� 留곹겕媛�
		link = $this.attr('href');
		if ($('.lnb>li>a').hasClass('on')) {
			$('.lnb>li>a').removeClass('on')
			};
		if ( deps2.length === 0 ) location.href=link
		if (deps2.hasClass('active')) {
			deps2.slideUp(hideSpeed);
			deps2.removeClass('active')
			return false;
		}
			selector2.removeClass('active')
			selector2.slideUp(hideSpeed);
			deps2.slideDown(showSpeed)
			deps2.addClass('active');
			$this.addClass('on')
			return false;
		});
});