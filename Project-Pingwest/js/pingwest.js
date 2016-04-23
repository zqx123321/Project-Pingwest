$(".navSlideDown").css("display","none");
$(".navBlock").hover(function(){
    $(this).children(".navSlideDown").stop(true, false).slideDown();
}, function(){
    $(this).children(".navSlideDown").stop(true, false).slideUp();
});


$(".indexBannerTextHot").css("background","#ff5624");
$(".indexMainSlideLeft").css("display","none");
$(".indexBannerTextDongtai").on("click",function(){
	$(".indexBannerTextDongtai").css("background","#ff5624");
	$(".indexBannerTextHot").css("background","#D4D4D4");
    $(".indexMainSlideRight").fadeOut("show", function(){
	$(".indexMainSlideLeft").fadeIn("show");
});
});
$(".indexBannerTextHot").on("click",function(){
	$(".indexBannerTextDongtai").css("background","#D4D4D4");
	$(".indexBannerTextHot").css("background","#ff5624");
    $(".indexMainSlideLeft").fadeOut("show", function(){
	$(".indexMainSlideRight").fadeIn("show");
});
});

$(".indexAbout").hover(function(){
	$(this).children("span").stop(true, false).animate({bottom:'-100px'},500);
}, function(){
	$(this).children("span").stop(true, false).animate({bottom:'0px'},500);
});



// 弹出框jQuery

// leanModal v1.1 by Ray Stone - http://finelysliced.com.au
// Dual licensed under the MIT and GPL
$(function(){
  $('.loginform').submit(function(e){
    return false;
  });
  
  $('.modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});

(function($) {
    $.fn.extend({
        leanModal: function(options) {
            var defaults = {
                top: 100,
                overlay: 0.5,
                closeButton: null
            };
            var overlay = $("<div id='lean_overlay'></div>");
            $("body").append(overlay);
            options = $.extend(defaults, options);
            return this.each(function(fixedIndex) {
                var o = options;
                $(this).click(function(e) {
                    var index = changeIndex(fixedIndex);
                    console.log(index);
                    var modal_id = $(this).attr("href");
                    if(modal_id.indexOf("#")!=-1) {
                        index = 0;
                    }
                    $("#lean_overlay").click(function() {
                        close_modal(modal_id,index)
                    });
                    $(o.closeButton).click(function() {
                        close_modal(modal_id,index)
                    });
                    var modal_height = $(modal_id).outerHeight();
                    var modal_width = $(modal_id).outerWidth();
                    $("#lean_overlay").css({
                        "display": "block",
                        opacity: 0
                    });
                    $("#lean_overlay").fadeTo(200, o.overlay);
                    $($(modal_id)[index]).css({
                        "display": "block",
                        "position": "fixed",
                        "opacity": 0,
                        "z-index": 11000,
                        "left": 50 + "%",
                        "margin-left": -(modal_width / 2) + "px",
                        "top": o.top + "px"
                    });
                    $($('.listContact')[index]).css({
                        "position": "absolute",
                        "margin-bottom":"50px"
                    });
                    $($(modal_id)[index]).fadeTo(200, 1);
                    e.preventDefault();
                    // index = 0;
                })
            });
            function close_modal(modal_id, index) {
                $("#lean_overlay").fadeOut(200);
                $($(modal_id)[index]).css({
                    "display": "none"
                })
            }
            function changeIndex(index) {
                if(index%2==0) {
                    index /= 2;
                } else {
                    index = (index+1)/2;
                }
                index -= 1;
                return index;
            }
        }
    })
})(jQuery);


var dataInt1={'data':[{'src':'build_11_print.jpg'},{'src':'433799723786426031.jpg'},{'src':'leijun_dianfanbao.jpg'},{'src':'hovertrax.jpg'},{'src':'build_8_web.jpg'},{'src':'huami-Amazfit-huangwang-PingWest-Photo-By-Hao-Ying.jpg'},{'src':'495298219v2-1024x683.jpg'}]};
var dataInt2={'data':[{'src':'1111.jpg'},{'src':'1112.jpeg'},{'src':'1113.jpg'},{'src':'1117.jpg'},{'src':'1115.jpg'},{'src':'1116.jpg'},{'src':'1114.jpg'}]};

function m(){
    $.each( dataInt2.data, function( index, value ){
                var $oPin = $('<div>').addClass('pin').appendTo( $( ".main2" ) );
                var $oBox = $('<div>').addClass('indexAbout').appendTo( $oPin );
                $('<img>').attr('src','./images/' + $( value).attr( 'src') ).appendTo($oBox);
            });
}
function n(){
    $.each( dataInt1.data, function( index, value ){
                var $oPin = $('<div>').addClass('pin').appendTo( $( ".main1" ) );
                var $oBox = $('<div>').addClass('indexAbout').appendTo( $oPin );
                $('<img>').attr('src','./images/' + $( value).attr( 'src') ).appendTo($oBox);
            });
}