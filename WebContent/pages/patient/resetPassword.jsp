<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <title>791去就医-重置密码</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/register.css">
    </head>
    <body>
        <div class="con">
            <a href="index.html"><img src="images/index/791logo.png" alt="logo" style="margin-top: 20px;"></a>
        </div>
        <div class="con content">
            <div class="regMod">
                <h1>重置密码</h1>
                <!--手机号码-->
                <div class="input_mod">
                    <input type="text" placeholder="请输入手机号码" name="params.phone" id="phoneNum" maxlength="16" onkeyup="phoneKeyUp();">
                    <button type="button" id="sendCode">发送验证码</button>
                </div>
                <!--密码-->
                <div class="input_mod">
                    <input type="password" placeholder="请输入密码" name="params.password" id="password" maxlength="15" onkeyup="pwdKeyUp();">
                </div>
                <!--确认密码-->
                <div class="input_mod">
                    <input type="password" placeholder="请确认密码" name="params.confirmPassword" id="rePwd" maxlength="15" onkeyup="rePwdKeyUp();">
                </div>
                <!--验证码-->
                <div class="input_mod">
                    <input type="text" placeholder="请输入验证码" name="params.verificationCode" style="border-radius:3px;width:330px;" id="mesCode" maxlength="6" onkeyup="codeKeyUp();">
                    <span class="tips" id="codeTips"></span>
                </div>
                <!--已有账号？-->
                <div class="input_log">
                    <span>已有账号，点击<a href="patient_login.html">登录</a></span>
                </div>
                <!--登录button-->
                <button type="button" id="reg_btn">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <script type="text/javascript">
    	// 发送验证码
    	$("#sendCode").click(function(){
    	    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
    	        $(".tips").html("无效手机号");
    	        return;
    	    }
    	    
    	    var _this = $(this);
    	    _this.attr("disabled", "disabled");
    	    var time = 0;
    	    setInterval(function(){
    	        time ++;
    	        if (time >= 60) {
    	            _this.html("重新获取验证码");
    	            clearInterval(_this[0]);
    	            _this.removeAttr("disabled");
    	        } else {
    	            _this.html("重新发送(" + (60 - time) + ")");
    	        }
    	    }, 1000);
    	    
    	    $.ajax({
    			type : "POST",
    			url : "patient_sendVerifyCode.html",
    			data : {
    			    "params.phone" : $("input[name='params.phone']").val()
    			},
    			dataType : "json",
    			success : function(data) {
    			    if (data.resultCode != 0) {
    			        $(".tips").html(data.resultDesc);
    			    } else {
    			        $(".tips").html("");
    			    }
    			}
            });
    	});
    
    	// 重置密码
    	$("#reg_btn").click(function(){
    	    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
    	        $(".tips").html("无效手机号");
    	        return;
    	    }
    	    
    	    if ($("input[name='params.password']").val() != $("input[name='params.confirmPassword']").val()) {
    	        $(".tips").html("确认密码和密码不一致");
    	        return;
    	    }

    	    if ($("input[name='params.verificationCode']").val() == "") {
    	        $(".tips").html("验证码不能为空");
    	        return;
    	    }
    	    
            $.ajax({
    			type : "POST",
    			url : "patient_doResetPassword.html",
    			data : {
    			    "params.phone"            : $("input[name='params.phone']").val(),
    			    "params.newPassword"      : hex_md5($("input[name='params.password']").val()),
    			    "params.verificationCode" : $("input[name='params.verificationCode']").val()
    			},
    			dataType : "json",
    			success : function(data) {
    			    if (data.resultCode != 0) {
    			        $(".tips").html(data.resultDesc);
    			    } else {
    			        $(".tips").html("");
    			    }
    			}
            });
    	});
    </script>
</html>