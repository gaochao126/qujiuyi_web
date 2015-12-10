
$(document).ready(function () {
//    <!--滚动条美化-->
    $(window).load(function(){
        $("#hotNews").mCustomScrollbar({theme:"light","callbacks":{
            whileScrolling:function(){
//                    console.log($(this).children().offset());
//                console.log($("#mCSB_1_dragger_vertical").offsetHeight);
            }
//                onTotalScrollOffset: 1
        }});
    });

//    <!--多行省略号-->
    $('.brief p').dotdotdot({
        after:'a.readmore'
    });
    $('.hidMesDe p').dotdotdot({
        after:'a.readmore'
    });


    //收起展开******
    $('#intro_have').live('click',function(){

        $('#oneP').addClass('none');
        $('#twoP').removeClass('none');
    });

    $('#intro_No').live('click',function(){

        $('#twoP').addClass('none');
        $('#oneP').removeClass('none');
    });


    $('.introduction').dotdotdot({
        after:'a.readmore'
    });
    //*****
    $('.hotUl_Common_Diseases li').live('click',function(){
        $(this).addClass('hotUlAc_Common_Diseases');
        $(this).siblings().removeClass('hotUlAc_Common_Diseases');
    });

    //*****
    $('.hotUl_Diseases_Detail li').live('click',function(){
        $(this).addClass('hotUlAc_Diseases_Detail');
        $(this).siblings().removeClass('hotUlAc_Diseases_Detail');
    });

    //****
    $('.hotUl_order li').live('click',function(){
        $(this).addClass('excellent_order');
        $(this).siblings().removeClass('excellent_order');
    });

});
