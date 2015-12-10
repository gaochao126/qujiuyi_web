<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator>
	<div class="docRigInput">
       <input  type="text" placeholder="请输入手机号码" name="params.phone" maxlength="16">
    </div>
	<div class="docRigInput">
		<input type="text" placeholder="验证码" name="params.verificationCode" id="mesCode2" maxlength="6">
		<button type="button" id="sendCode2">发送验证码</button>
	    <span class="inputHint "></span>
	</div>
	<div class="docRigAttention">
	     <label>
	          <input type="checkbox" id="agree" style="float: left;" checked="checked">
	          <a style="float: left;">&nbsp;同意《791医生注册协议》</a>
	     </label>
	 </div>
	<button type="button" id="docRigBtn_1" class="stepAllSub">下&nbsp;&nbsp;一&nbsp;&nbsp;步</button>
</s:iterator>