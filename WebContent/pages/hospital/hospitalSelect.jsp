<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<option value="0">选择您想挂号的医院</option>
<s:iterator value="dataList">
    <option value='<s:property value="id"/>'><s:property value="name"/></option>
</s:iterator>