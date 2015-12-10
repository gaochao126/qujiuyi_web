<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
 	<s:if test="diseasesList.size() == 1 ">
	 	<s:iterator value="diseasesList">
	 		<li class="hotUlAc"><s:property value="name"/></li>
	 	</s:iterator>
	</s:if>     
	
	<s:elseif test="diseasesList.size() > 1 ">
		<s:iterator value="diseasesList">
	 		<li class="hotUlAc"><s:property value="name"/></li>
	 	</s:iterator>
	 	<s:iterator value="diseasesList" begin="2">
	 		<li><s:property value="name"/></li>
	 	</s:iterator>
	</s:elseif>          