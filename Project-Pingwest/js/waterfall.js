// $( window ).on( "load", function(){
    // waterfall('main','pin');
    var dataInt1={'data':[{'src':'build_11_print.jpg'},{'src':'433799723786426031.jpg'},{'src':'leijun_dianfanbao.jpg'},{'src':'hovertrax.jpg'},{'src':'build_8_web.jpg'},{'src':'huami-Amazfit-huangwang-PingWest-Photo-By-Hao-Ying.jpg'},{'src':'495298219v2-1024x683.jpg'}]};
    var dataInt2={'data':[{'src':'1111.jpg'},{'src':'1112.jpeg'},{'src':'1113.jpg'},{'src':'1117.jpg'},{'src':'1115.jpg'},{'src':'1116.jpg'},{'src':'1114.jpg'}]};
//     window.onscroll=function(){
//         if(checkscrollside1()){
//             $.each( dataInt1.data, function( index, value ){
//                 var $oPin = $('<div>').addClass('pin').appendTo( $( ".main1" ) );
//                 var $oBox = $('<div>').addClass('indexAbout').appendTo( $oPin );
//                 $('<img>').attr('src','./images/' + $( value).attr( 'src') ).appendTo($oBox);
//             });
//             // waterfall();
//         };
//         if(checkscrollside2()){
//             $.each( dataInt2.data, function( index, value ){
//                 var $oPin = $('<div>').addClass('pin').appendTo( $( ".main2" ) );
//                 var $oBox = $('<div>').addClass('indexAbout').appendTo( $oPin );
//                 $('<img>').attr('src','./images/' + $( value).attr( 'src') ).appendTo($oBox);
//             });
//             // waterfall();
//         };
//     }
// });

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

/*
    parend 父级id
    pin 元素id
*/


// function checkscrollside1(){
//     var $aPin = $( ".main1>div" );
//     var lastPinH = $aPin.last().get(0).offsetTop + Math.floor($aPin.last().height()/2);//创建【触发添加块框函数waterfall()】的高度：最后一个块框的距离网页顶部+自身高的一半(实现未滚到底就开始加载)
//     var scrollTop = $( window ).scrollTop()//注意解决兼容性
//     var documentH = $( document ).width();//页面高度
//     return (lastPinH < scrollTop + documentH ) ? true : false;//到达指定高度后 返回true，触发waterfall()函数
// }
// function checkscrollside2(){
//     var $aPin = $( ".main2>div" );
//     var lastPinH = $aPin.last().get(0).offsetTop + Math.floor($aPin.last().height()/2);//创建【触发添加块框函数waterfall()】的高度：最后一个块框的距离网页顶部+自身高的一半(实现未滚到底就开始加载)
//     var scrollTop = $( window ).scrollTop()//注意解决兼容性
//     var documentH = $( document ).width();//页面高度
//     return (lastPinH < scrollTop + documentH ) ? true : false;//到达指定高度后 返回true，触发waterfall()函数
// }