/**
 * Created with JetBrains WebStorm.
 * User: cc
 * Date: 15-9-6
 * Time: 下午4:09
 * To change this template use File | Settings | File Templates.
 */
//添加键盘事件
$(document).keypress(function (e) {
    var code = e.keyCode || e.which;
    if (code == 13) { //回车键
        loginBtn();
    }
});
//验证用户名
function userKeyUp() {
    var obj = $("#userName").val();
    var tips = $("#userNameTips");
    if (obj == "") {
        tips.html("*用户名不能为空！");
        return false;
    } else {
        if (/^[1][3587]\d{9}$/.test(obj)) {
            tips.html("");
            return true;
        } else {
            tips.html("*用户名格式不对！");
            return false;
        }
    }
}
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
//图形验证码
function imgCode() {
    var obj = $("#imgCode").val();
    var tips = $("#imgCodeTips");
    if (obj == "") {
        tips.html("*验证码不能为空！");
        return false;
    } else {
        tips.html("");
        return true;
    }
}
//验证所有
function checkLogin() {
    var flag = false;
    if (userKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (pwdKeyUp()) {
        flag = true;
    } else {
        flag = false;
    }
    if (imgCode()) {
        flag = true;
    } else {
        flag = false;
    }
    if (userKeyUp() && pwdKeyUp() && imgCode()) {
        flag = true;
    } else {
        flag = false;
    }
    return flag;
}
//登录按钮
function loginBtn() {
    layer.load(1);
    setTimeout(function () {
        layer.closeAll("loading");
        if (checkLogin()) {
            layer.closeAll("loading");
            alert(1);
        } else {
            layer.closeAll("loading");
            checkLogin();
        }
    }, 3000);
}