//添加键盘事件
$(document).keypress(function (e) {
    var code = e.keyCode || e.which;
    if (code == 13) { //回车键
        regBtn();
    }
});
//验证密码
function pwdKeyUp() {
    var obj = $("#password").val();
    var tips = $("#passwordTips");
    if (obj == "") {
        tips.html("*密码不能为空！");
        return false;
    } else {
        if (obj.length < 16 && obj.length >= 6) {
            tips.html("");
            return true;
        } else {
            tips.html("*请输入至少6位且不超过16位数的密码!");
            return false;
        }
    }
}
//重复密码
function rePwdKeyUp() {
    var obj = $("#rePwd").val();
    var obb = $("#password").val();
    var repwdTips = $("#repwdTips");
    if (obj == "") {
        repwdTips.html("*重复密码不能为空！");
        return false;
    } else {
        if (obj == obb) {
            repwdTips.html("");
            return true;
        } else {
            repwdTips.html("*两次密码不一致");
            return false;
        }
    }
}
//验证手机号码
function phoneKeyUp() {
    var obj = $("#phoneNum").val();
    var tips = $("#phoneTips");
    var sendCode = $("#sendCode");
    if (obj == "") {
        tips.html("*手机号码不能为空！");
        return false;
    } else {
        if (/^[1][3587]\d{9}$/.test(obj)) {
            tips.html("");
//            sendCode.removeAttr("disabled");
//            sendCode.removeClass("disBtn");
//            sendCode.addClass("yeBtn");
//            sendCode.css({"background":"#ff8228", "color":"#fff"});
            return true;
        } else {
            tips.html("*手机格式不对！");
//            sendCode.attr("disabled", true);
//            sendCode.removeClass("yeBtn");
//            sendCode.addClass("disBtn");
            return false;
        }
    }
}
//验证验证码
function codeKeyUp() {
    var obj = $("#mesCode").val();
    var tips = $("#codeTips");
    if (obj == "") {
        tips.html("*验证码不能为空！");
        return false;
    } else {
        tips.html("");
        return true;
    }
}
//验证全部
function checkAll() {
    var flag = false;
    if (pwdKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (rePwdKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (phoneKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (codeKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (pwdKeyUp() && rePwdKeyUp() && phoneKeyUp() && codeKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    return flag;
}
function regBtn() {
    layer.load(1);
    setTimeout(function () {
        layer.closeAll("loading");
        if (checkAll()) {
            layer.closeAll("loading");
            alert(1);
        } else {
            layer.closeAll("loading");
            checkAll();
        }
    }, 3000);
}