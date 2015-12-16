<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userCConLeft">
    <div class="userCHead">
        <img src="<s:property value="#session.patient.headPortrait"/>"/>
        <span>
            <s:if test="@com.jiuyi.qujiuyi.common.Util@isNotEmpty(#session.patient.name)">
                <s:property value="#session.patient.name"/>
            </s:if>
            <s:if test="@com.jiuyi.qujiuyi.common.Util@isNotEmpty(#session.patient.name)">
                <s:if test="#session.patient.gender == 1">
                    <s:property value="#session.patient.name"/>先生
                </s:if>
                <s:else>
                    <s:property value="#session.patient.name"/>女士
                </s:else>
            </s:if>
            <s:else>
                <script type="text/javascript">
    				var phone = '<s:property value="#session.patient.phone"/>';
    				document.write(phone.substr(0 , 3) + '****' + phone.substr(7));
				</script>
            </s:else>
        </span>
    </div>
    <ul class="userCNav">
        <li class="titleBorder">
            <img src="images/userCenter/my_service.png"/>
            <h3>我的服务</h3>
        </li>
        <!-- 选中之后改变a标签的样式为chooseItem -->
        <li>
            <input type="hidden" value="userCenter_myAppointment.html?page.pageSize=10&page.currentPage=1"/>
            <a href="javascript:void(0);" class="chooseItem">我的预约</a>
        </li>
        <li>
            <input type="hidden" value="userCenter_myPrescription.html"/>
            <a href="javascript:void(0);">我的配药</a>
        </li>
        <li>
            <input type="hidden" value="userCenter_myAppointment.html"/>
            <a href="javascript:void(0);">图文资讯</a>
        </li>
        <li class="lastItem">
            <input type="hidden" value="userCenter_myAppointment.html"/>
            <a href="javascript:void(0);">私人医生</a>
        </li>
        
        <li class="titleBorder">
            <img src="images/userCenter/my_eavaluate.png"/>
            <h3>我的评价</h3>
        </li>
        <li>
            <a href="javascript:void(0);">待评价</a>
        </li>
        <li class="lastItem">
            <a href="javascript:void(0);">已评价</a>
        </li>
        
        <li class="titleBorder">
            <img src="images/userCenter/my_collect.png"/>
            <h3>我的收藏</h3>
        </li>
        <li class="lastItem"><a href="javascript:;">收藏医生</a></li>
        <li class="titleBorder">
            <img src="images/userCenter/my_account.png"/>
            <h3>我的账户</h3>
        </li>
        <li>
            <a href="javascript:void(0);">账户设置</a>
        </li>
        <li>
            <a href="javascript:void(0);">我的钱包</a>
        </li>
        <li>
            <a href="javascript:void(0);">修改密码</a>
        </li>
        <li>
            <a href="javascript:void(0);">就诊人管理</a>
        </li>
        <li class="lastItem">
            <a href="javascript:void(0);">消息通知&nbsp;<span>3</span></a>
        </li>
    </ul>
</div>