<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table class="docRoster" style="display: none;">
    <thead>
        <tr>
            <th>就诊时间</th>
            <s:iterator value="weekList_3" status="status">
                <th>
                    <span class="week">
                        <s:if test="#status.index == 0">周一</s:if>
                        <s:if test="#status.index == 1">周二</s:if>
                        <s:if test="#status.index == 2">周三</s:if>
                        <s:if test="#status.index == 3">周四</s:if>
                        <s:if test="#status.index == 4">周五</s:if>
                        <s:if test="#status.index == 5">周六</s:if>
                        <s:if test="#status.index == 6">周日</s:if>
                    </span>
                    <span class="dateDay"><s:date name="%{weekList_3[#status.index]}" format="MM-dd"/></span>
                </th>
            </s:iterator>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>上午</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <th>下午</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <th>晚上</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
    </tbody>
</table>