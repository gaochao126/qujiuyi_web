/**
 * Created with JetBrains WebStorm.
 * User: cc
 * Date: 15-10-12
 * Time: 上午11:46
 * To change this template use File | Settings | File Templates.
 */
$(document).ready(function(){
//    <!--滚动条滚动事件-->
    var leftCon = $(".leftCon");//热点新闻模块
    var rightCon = $('.rightCon');//右边模块
    var newsNavMod = $('.newsNavMod');//右边导航栏
    var mainCont = $('.mainCont');//content大的div
    var divHeight = mainCont.offset().top;
    $(window).scroll(function () {
        var scrollHei = $(this).scrollTop();
//        console.log('滚动条至顶部'+scrollHei);
//        console.log('最大的div至顶部'+divHeight);
//        console.log('最大的div的高度'+mainCont.height());
        if (scrollHei > divHeight) {
            if(rightCon.height()>leftCon.height()){//判断左边还是右边大，右边大的时候再处理，左边大就不管
//                console.log('++++++++++++++++++右边的大');
                leftCon.css({
                    "position":"fixed",
                    "width":"355px",
                    "top":"0"
                });
                newsNavMod.css({"position":"fixed", "width":"820px", "top":"0"});

            // 右边大的时候再判断
               if(mainCont.height()+divHeight-scrollHei<leftCon.height()){
                    leftCon.css({
                        "position":"fixed",
                        "top":"-400px"
                    });
                }
            }
        }
        else if (scrollHei < divHeight) {
//            console.log(divHeight);
            leftCon.css({
                "position":"relative",
                "width":"355px",
                "top":"0"
            });
            newsNavMod.css({"position":"relative", "width":"820px"})
        }
    });

    //        <!--热门新闻点击隐藏-->
//    $('.hotNewsList a').toggle(function () {
//            $(this).parent().css({"background":"#eefcff"});
//            $(this).siblings('.hidMes').addClass('block');
//            $(this).siblings('.hidMes').removeClass('none');
//        },
//        function () {
//            $(this).siblings('.hidMes').addClass('none');
//            $(this).parent().css({"background":"#fff"});
//            $(this).siblings('.hidMes').removeClass('block');
//        }
//    );
    $('.hotUl li').live('click',function(){
        $(this).addClass('hotUlAc');
        $(this).siblings().removeClass('hotUlAc');
    });
    $('.main_nav li').live('click',function(){
        $(this).addClass('main_navAc');
        $(this).siblings().removeClass('main_navAc');
    });
});
