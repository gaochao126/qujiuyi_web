<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <option value='<s:property value="id"/>'><s:property value="name"/></option>
</s:iterator>