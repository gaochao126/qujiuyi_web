<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table class="docRoster">
    <thead>
        <tr>
            <th>就诊时间</th>
            <s:iterator value="weekList_1" status="status">
                <th>
                    <span class="week">
                        <s:if test="#status.index == 0">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周一</s:else>
                        </s:if>
                        <s:if test="#status.index == 1">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周二</s:else>
                        </s:if>
                        <s:if test="#status.index == 2">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周三</s:else>
                        </s:if>
                        <s:if test="#status.index == 3">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周四</s:else>
                        </s:if>
                        <s:if test="#status.index == 4">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周五</s:else>
                        </s:if>
                        <s:if test="#status.index == 5">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周六</s:else>
                        </s:if>
                        <s:if test="#status.index == 6">
                            <s:if test="@com.jiuyi.qujiuyi.common.Util@getDayOfWeek(currentDate) == #status.index + 1">今天</s:if>
                            <s:else>周日</s:else>
                        </s:if>
                    </span>
                    <span class="dateDay"><s:date name="%{weekList_1[#status.index]}" format="MM-dd"/></span>
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