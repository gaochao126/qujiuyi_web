<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!--news-list-->
<s:iterator value="doctors">
<div class="newsList">
    <div class="lis1"><img src="images/doctorInfo/<s:property value="head"/>" alt="img"></div>
    <div class="lis2">
        <ul class="lisUl">
        	 <s:if test="titleId == 1">
            	<li><span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif"><s:property value="name"/></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px; color: #333;">主任医师</span></li>
             </s:if>
          	 <s:elseif test="titleId == 2">
          	 	<li><span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif"><s:property value="name"/></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px; color: #333;">副主任医师</span></li>
          	 </s:elseif>
          	 <s:elseif test="titleId == 3">
          	 	<li><span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif"><s:property value="name"/></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px; color: #333;">主治医师</span></li>
          	 </s:elseif>
          	 <s:else>
          		<li><span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif"><s:property value="name"/></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px; color: #333;">普通医师</span></li>
          	 </s:else>
            <li class="brief" style="margin-top: 19px;">
                <span style="display: block;height: 80px;float: left;">
                	擅长：
                </span>
                <p style="display: block">
                	<s:property escape="false" value="skill"/>
                	<a href="doctor_doctorInfo.html?params.id=<s:property value="id"/>"  target="_blank" class="readmore">[详细]</a>
                </p>
            </li>
        </ul>
    </div>
    <span class="tipsName">标签：</span>
    <ul class="tips">
        <li>银屑病，花斑癣，牛皮癣</li>
    </ul>
</div>
</s:iterator>