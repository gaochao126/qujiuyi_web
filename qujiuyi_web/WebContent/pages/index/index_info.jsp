<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="loginFrom" id="loginYes">
    <div class="loginYesTop">
        <div class="userAvatar">
        <s:if test="#session.patient.headPortrait!=null">
        	 <img src="<s:property value="#session.patient.headPortrait"/>"/>
        </s:if>
        <s:else>
            <img src="images/index/male_default_head.png" alt="head">
        </s:else>
        </div>
        <s:if test="@com.jiuyi.qujiuyi.common.Util@isNotEmpty(#session.patient.name)">
            <s:if test="#session.patient.gender == 1">
                <p class="userName" style="margin-top: 50px;"><s:property value="#session.patient.name"/>先生</p>
            </s:if>
            <s:else>
                <p class="userName" style="margin-top: 50px;"><s:property value="#session.patient.name"/>女士</p>
            </s:else>
        </s:if>
        <s:else>
            <p class="userName" style="margin-top: 50px;">
                <script type="text/javascript">
                    var phone = '<s:property value="#session.patient.phone"/>';
                    document.write(phone.substr(0 , 3) + '****' + phone.substr(7));
                </script>
            </p>
        </s:else>

        <p style="background: url('images/index/personalcenter.png') no-repeat 5px;"><a href="userCenter.html">进入个人中心</a></p>
    </div>
    <ul class="loginYesLi">
        <li><a href="javascript: void (0)">
            <img src="images/index/appointment.png">
            <span>我的预约</span>
        </a></li>
        <li><a href="javascript: void (0)">
            <img src="images/index/consult.png">
            <span>我的咨询</span>
        </a></li>
        <li><a href="javascript: void (0)">
            <img src="images/index/drug.png">
            <span>我的配药</span>
        </a></li>
    </ul>
</div>