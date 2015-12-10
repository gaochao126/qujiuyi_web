<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="loginFrom" id="loginNo">
    <h1>用户登录</h1>

    <!--用户名-->
    <div class="input_mud" style="margin-top: 30px;">
        <input type="text" name="params.phone" id="userName" placeholder="请输入您的用户名" maxlength="11" value="">
        <p id="userNameError"></p>
    </div>

    <!--密码-->
    <div class="input_mud">
        <input type="password" name="params.password" id="password" placeholder="请输入您的密码" maxlength="16" value="">
        <p id="passwordError"></p>
    </div>

    <!--验证码-->
    <div class="input_mud">
        <input type="text" name="params.verifyCode" id="imgCodeInp" placeholder="验证码" maxlength="6" value="">
        <span id="imgCode">
            <img src="patient_verifyCode.html?params.width=70&params.height=35&params.left=2&params.top=24&params.size=24" alt="看不清？点我刷新">
        </span>
        <p id="imgCodeError"></p>
        <span class="tips" id="imgCodeTips"></span>
    </div>
    <div class="input_mud" style="height: 30px;line-height: 40px;padding-top: 10px;">
    	<label for="checkRember">
    		<input id="checkRember" type="checkbox" style="width: 15px;height: 15px;outline: none;border: 1px solid #1a73db;float: left;"  id="forgetPwd">
    		<span style="font-size: 12px;color: #fff;float: left;display: block;margin-left: 10px;line-height: 15px;">下次自动登录</span>
    	</label>
        <a href="patient_resetPassword.html" id="forPwdBt">忘记密码？</a>
    </div>
    <button type="button" id="loginBtn">确认</button>
</div>