<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="page != null and page.totalPage!= null and page.totalPage > 1">
    <a id="serch_more_btn" style="color: rgb(39,134,228); font-size: 12px; margin-left: 285px; " href="javascript:void(0);">查看更多消息</a>
</s:if>
<s:iterator value="dataList">
	<s:if test="senderType == 1 and chatType != 3">
		<!-- 医生 -->
		<div class="linerCon">
		    <i class="docLinerHead"><img src='<s:property value='doctorHead'/>'></i>
		    <input type="hidden" name="chatTime" value='<s:date name="chatTime" format="yyyy-MM-dd HH:mm:ss"/>'/>
		    <input type="hidden" name="id" value="<s:property value="id"/>">
		    <p class="docLiner">
                <s:if test="chatType == 1">
                    <s:property value="chatContent"/>
                </s:if>
                <s:elseif test="chatType == 2">
                    <img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('chat.image.virtualUrl')"/><s:property value="chatContent"/>'/>
                </s:elseif>
            </p>
		</div>
	</s:if>
	<s:if test="senderType == 2 and chatType != 3">
		<!-- 患者 -->
		<div class="linerCon">
            <s:if test="#session.patient.headPortrait != null and #session.patient.headPortrait != ''">
                <i class="patLinerHead"><img alt="head" src='<s:property value="#session.patient.headPortrait"/>'></i>
            </s:if>
            <s:else>
                <i class="patLinerHead"><img alt="head" src="images/index/male_default_head.png"></i>
            </s:else>
			<input type="hidden" name="chatTime" value='<s:date name="chatTime" format="yyyy-MM-dd HH:mm:ss"/>'/>
		    <input type="hidden" name="id" value="<s:property value="id"/>">
		    <p class="userLiner">
                <s:if test="chatType == 1">
                    <s:property value="chatContent"/>
                </s:if>
                <s:elseif test="chatType == 2">
                    <img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('chat.image.virtualUrl')"/><s:property value="chatContent"/>'/>
                </s:elseif>
            </p>
		</div> 
	</s:if>
</s:iterator>