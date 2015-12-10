<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<option value="0">选择您想挂号的城市</option>
<s:iterator value="dataList">
    <option value='<s:property value="cityId"/>'><s:property value="cityName"/></option>
</s:iterator>