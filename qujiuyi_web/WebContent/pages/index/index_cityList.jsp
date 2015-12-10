<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<ul class="areaChose">
    <li title="热门" style="color:#e25714 !important;" class="city_hospital_btn">热门<input type="hidden" name="cityId" value="0"/></li>
    <s:iterator value="cityList_1">
        <li title='<s:property value="cityName"/>' class="city_hospital_btn">
            <s:property value="cityName"/>
            <input type="hidden" name="cityId" value='<s:property value="cityId"/>'/>
        </li>
    </s:iterator>
</ul>
<button type="button" id="moreAreaBtn" class="moreAreaBtnBg1">更多</button>
<ul class="moreArea">
    <s:iterator value="cityList_2">
        <li style="color:#333;" title='<s:property value="cityName"/>' class="city_hospital_btn">
            <s:property value="cityName"/>
            <input type="hidden" name="cityId" value='<s:property value="cityId"/>'/>
        </li>
    </s:iterator>
</ul>