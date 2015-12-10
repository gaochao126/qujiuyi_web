<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<ul>
    <s:if test="hotHospitalList != null">
        <s:iterator value="hotHospitalList">
            <li onclick="window.location.href='hospital_hospitalInfo.html?params.id=<s:property value="id"/>';">
                <a href="javascript: void (0);"><s:property value="name"/><s:if test="level == 7"><span class="three">三甲</span></s:if></a>
            </li>
        </s:iterator>
    </s:if>
    <s:else>
        <s:iterator value="cityHospitalList">
            <li onclick="window.location.href='hospital_hospitalInfo.html?params.id=<s:property value="id"/>';">
                <a href="javascript: void (0);"><s:property value="name"/><s:if test="level == 7"><span class="three">三甲</span></s:if></a>
            </li>
        </s:iterator>        
    </s:else>
</ul>