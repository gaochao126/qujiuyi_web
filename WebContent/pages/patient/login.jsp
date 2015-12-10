<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <title>791去就医-登录</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/register.css">
        <style type="text/css">
            #imgCode{
                width: 200px;
                padding-left: 10px;
                float: left;
            }
            .imgCode{
                width: 120px;
                height: 35px;
                line-height: 35px;
                float: right;
                margin-right: 3px;
                border-radius: 2px;
                overflow: hidden;
            }
            .imgCode img{
                width: 120px;
                height: 35px;
            }
            #forgetPwd{
                width: 15px;
                height: 15px;
                outline: none;
                font-size: 12px;
                float: left;
                margin-top: 8px;
            }
            .forgetPwd{float: left;font-size: 14px;margin-left: 5px;color: #444;}
        </style>
    </head>
    <body>
    	<div class="con">
	    	<div style="height: 180px;">
	        	<a href="index.html"><img src="images/index/791logo.png" alt="logo" style="margin-top: 69px;"></a>    		
	    	</div>
	    </div>
    	<div class="totalCon" style="background: url(images/reg/login_bg.png); background-repeat: no-repeat; background-size: contain;">
		    <div class="con content">
		    	<div class="leftMod">
		    		<img src="images/reg/slogan.png" />
		    	</div>
		    	<div style="width: width: 345px;float: right;margin-right: 30px;">
			        <div class="regMod">
			        <form id="loginForm" method="post" onsubmit="javascript:return false;">
	                    <h1>登录791去就医 <a href="patient_register.html">免费注册</a></h1>
	        
	                    <!--用户名-->
	                    <div class="input_mod">
	                    <input id="userName" type="text" placeholder="请输入账户名" name="params.phone" maxlength="16" value=""/>
	                    </div>
	        
	                    <!--密码-->
	                    <div class="input_mod">
	                        <input id="password" type="password" placeholder="请输入密码" name="params.password" maxlength="15" value="">
	                    </div>
	        
	                    <!--验证码-->
	                    <div class="input_mod">
	                        <input type="text" placeholder="请输入验证码" name="params.verifyCode" id="imgCode" maxlength="6" value="">
	                        <!--图形验证码-->
	                        <div class="imgCode">
	                            <img src="patient_verifyCode.html?params.width=120&params.height=40&params.left=8&params.top=26&params.size=24" alt="图形验证码">
	                        </div>
	                        <span class="tips"></span>
	                    </div>
	        
	        
	                    <!--已有账号？-->
	                    <div class="input_log">
	                        <input type="checkbox" name="forgetPwd" id="forgetPwd">
	                        <span class="forgetPwd">记住密码</span>
	                        <span><a href="patient_resetPassword.html">忘记密码？</a></span>
	                    </div>
	                    <!--登录button-->
	                    <button type="button" id="reg_btn">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
	                </form>
			        </div>
			        <div class="regShadow">
			        </div>
		    	</div>
		    </div>
		     <!--footer-->
        	<jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
		</div>
	 
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <script type="text/javascript">
    	// 登录点击事件 
    	$("#reg_btn").click(function(){
    	    if ($("input[name='params.phone']").val() == '') {
    	        $(".tips").html("*用户名不能为空");
    	        return;
    	    }
    	    
    	    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
    	        $(".tips").html("*无效用户名");
    	        return;
    	    }
    	    
    	    if ($("input[name='params.password']").val() == '') {
    	        $(".tips").html("*密码不能为空");
    	        return;
    	    }
    	    
    	    if ($("input[name='params.verifyCode']").val() == '') {
    	        $(".tips").html("*验证码不能为空");
    	        return;
    	    }
    	    
            $.ajax({
    			type : "POST",
    			url : "patient_doLogin.html",
    			data : {
    			    "params.phone"      :  $("input[name='params.phone']").val(),
    			    "params.password"   :  hex_md5($("input[name='params.password']").val()),
    			    "params.verifyCode" :  $("input[name='params.verifyCode']").val(),
    			    "params.autoLogin"  :  $("#forgetPwd").attr("checked") == "checked" ? 1 : 0
    			},
    			dataType : "json",
    			success : function(data) {
    			    if (data.resultCode != 0) {
    			        $(".tips").html("*"+data.resultDesc);
    			    } else {
    			        window.location.href = "index.html";
    			    }
    			}
            });
    	});
    	
    	// 验证码点击刷新事件 
        $(".imgCode img").click(function(){
            var _this = $(this);
            _this.attr("src", "patient_verifyCode.html?params.width=120&params.height=40&params.left=8&params.top=26&params.size=24&version=" + Date.parse(new Date()) + Math.random());
        });
    	
    	// 验证码输入框的回车事件
    	$("input[name='params.verifyCode']").keydown(function(e){
            if (e.keyCode==13) {
                $("#reg_btn").click();
            }
        }); 
    </script>
</html>