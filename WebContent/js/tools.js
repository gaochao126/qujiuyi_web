/**
 * Created with JetBrains WebStorm.
 * User: cc
 * Date: 15-9-6
 * Time: 下午3:05
 * To change this template use File | Settings | File Templates.
 */
/**
 function test(){
    $.ajax({
        type:"post",
        url:urlArea,
        data:'{"cmd":"","params":{"phone":'+phone+'}}',
        dataType:"json",
        success:function(obj){
            console.log(obj);
        }
    })
}
 **/
//获取验证码
function sendCode() {
    times();
    var phone = $("#phoneNum").val();
    var tips = $("#phoneTips");
    $.ajax({
        type:"post",
//        url:urlArea+"customer_sendmess.api",
//        data:{"customerDto.phone":phone},
        url:urlArea,
        data:'{"cmd":"getVerifyCode","params":{"phone":' + phone + '}}',
        dataType:"json",
        success:function (obj) {
            console.log(obj);
            if (obj.resultCode == 0) {
                tips.html(obj.resultDesc);
            }
            if (obj.resultCode == 1) {
                tips.html(obj.resultDesc);
            }
        }
    })
}
function times() {
    var sendCode = $("#sendCode");
    var count = 60;
    var countdown = setInterval(CountDown, 1000);

    function CountDown() {
        sendCode.attr("disabled", true);
        sendCode.html("重新发送(" + count + ")");
        $("#phoneNum").attr("disabled", true);
        if (count == 0) {
            $("#phoneNum").removeAttr("disabled");
            sendCode.html("重新获取验证码").removeAttr("disabled");
            clearInterval(countdown);
        }
        count--;
    }
}
// 针对IE10
//<!--js 做 ie css  hack-->
if (/*@cc_on!@*/false) {
    document.documentElement.className += ' ie' + document.documentMode;
}
// 针对IE11及非IE浏览器，
// 因为IE11下document.documentMode为11，所以html标签上会加ie11样式类；
// 而非IE浏览器的document.documentMode为undefined，所以html标签上会加ieundefined样式类。
if (/*@cc_on!@*/true) {
    document.documentElement.className += ' ie' + document.documentMode;
}

//<!--返回顶部-->
$(window).on('scroll', function () {
    var st = $(document).scrollTop();
    if (st > 500) {
        $('#go-top').fadeIn(function () {
            $(this).removeClass('dn');
        });
    } else {
        $('#go-top').fadeOut(function () {
            $(this).addClass('dn');
        });
    }
});

$('#go-top').on('click', function () {
    $('html,body').animate({'scrollTop':0}, 500);
});