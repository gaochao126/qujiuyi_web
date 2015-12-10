<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="top">
    <div class="con">
    	<ul class="heaRes" style="float: left;">
        	 <s:if test="#session.patient == null">
                <li style="margin-left:0px;"><a href="patient_login.html">登录</a></li>
                <li><a href="patient_register.html">注册</a></li>
            </s:if>
            <s:else>
                <li id="helloUser">
                	<span style="float:left;">您好：</span>
                	<div class="indexUserName" style="position: relative;">
                		<span>
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@isNotEmpty(#session.patient.name)">
                                <s:property value="#session.patient.name"/>
                            </s:if>
                            <s:else>
                                <script type="text/javascript">
                                    var phone = '<s:property value="#session.patient.phone"/>';
                                    document.write(phone.substr(0 , 3) + '****' + phone.substr(7));
                                </script>
                            </s:else>
                            <span id="change_span">&nbsp;∨</span>
                		</span>
                		<div class="showUSCenter">
                    		<a href="userCenter.html">
                    			<img src="images/index/center.png">
                    			&nbsp;个人中心
                    		</a>
                    		<a href='javascript:signOut();'>
                    		<img src="images/index/exit.png">
                    			&nbsp;退出
                    		</a>
                    	</div>
                	</div>
                </li>
                <s:if test="#session.patient.headPortrait != null and #session.patient.headPortrait != ''">
                    <input type="hidden" id="headPortrait" name="headPortrait" value="<s:property value="#session.patient.headPortrait"/>"/>
                </s:if>
                <s:else>
                    <input type="hidden" id="headPortrait" name="headPortrait" value="images/index/male_default_head.png"/>
                </s:else>
                <input type="hidden" id="md5Id" name="md5Id" value="<s:property value="#session.patient.md5Id"/>"/>
             	<input type="hidden" id="md5Pass" name="md5Pass" value="<s:property value="#session.patient.md5Password"/>"/>
            </s:else>
        </ul>
        <ul class="heaRes">
            <li><span class="comPhone">86 23 62827276</span></li>
            <li style="font-weight:500;cursor:pointer;" onclick="window.open('common_download.html');">手机客户端</li>
            <li style="color: #f5a623;">网站导航</li>
            <li style="color: #f5a623; cursor: pointer;"><a href="doctor_register.html">医生注册</a></li>
        </ul>
    </div>
</div>
<div class="header">
    <div class="con">
        <a href="index.html"><img src="images/index/791logo.png" alt="logo"></a>
        <input type="text" placeholder="请输入医院、科室、医生姓名" class="search">
        <button type="button" id="searBtn">搜&nbsp;&nbsp;索</button>
        <img src="images/index/Union.png" alt="union" style="float: right;margin-top: 25px;">
    </div>
</div>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(".indexUserName").hover(function(){
		$(".showUSCenter").show();
		$(this).css("background","#fff");
		$(this).find('#change_span').html('&nbsp;∧');
	},function(){
		$(".showUSCenter").hide();
		$(this).css("background","none");
		$(this).find('#change_span').html('&nbsp;∨');
	})
	
    function signOut() {
        $.ajax({
            type : "POST",
            url : "patient_signOut.html",
            data : {
                "params.id" : '<s:property value="#session.patient.id"/>',
            },
            dataType : "json",
            success : function(data) {
                window.location.href = "index.html";
            }
        });
    }
</script>