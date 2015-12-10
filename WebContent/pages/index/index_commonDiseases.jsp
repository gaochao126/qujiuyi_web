<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
	<s:iterator value="dataList">
		<li onclick="window.location.href='diseases_commonDiseasesDetail.html?params.diseasesId=<s:property value="id"/>'"><s:property value="name"/></li>
	</s:iterator>
	