<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<table class="userListTab">
    <colgroup>
        <col width="15%"/>
        <col width="13%"/>
        <col/>
        <col width="10%"/>
        <col width="22%"/>
        <col width="15%"/>
    </colgroup>
    <thead>
        <tr>
            <th align="left" style="padding-left: 28px;">姓名</th>
            <th align="left">性别</th>
            <th align="left">身份证号</th>
            <th align="left">年龄</th>
            <th align="left">手机号</th>
            <th align="center">操作</th>
        </tr>
    </thead>
    <tbody>
        <s:iterator value="dataList" status="status">
            <tr>
                <td align="left" style="padding-left: 28px;">
                    <s:if test="#status.index == 0">
                        <input type="radio" name="userName" checked>
                    </s:if>
                    <s:else>
                        <input type="radio" name="userName">
                    </s:else>
                    <span class="userName"><s:property value="name"/></span>
                </td>
                <td align="left">
                    <span class="male">
                        <s:if test="gender == 1">男</s:if>
                        <s:elseif test="gender == 2">女</s:elseif>
                    </span>
                </td>
                <td align="left"><span class="userCardId"><s:property value="certificateNumber"/></span></td>
                <td align="left"><span class="userAge"><s:property value="@com.jiuyi.qujiuyi.common.Util@getAgeByBirthday(birthday)"/></span></td>
                <td align="left"><span class="userPhone"><s:property value="phone"/></span></td>
                <td align="center">
                    <input type="hidden" name="id" value='<s:property value="id"/>'/>
                    <input type="hidden" name="name" value='<s:property value="name"/>'/>
                    <input type="hidden" name="gender" value='<s:property value="gender"/>'/>
                    <input type="hidden" name="birthday" value='<s:date name="birthday" format="yyyy-MM-dd HH:mm:ss"/>'/>
                    <input type="hidden" name="certificateNumber" value='<s:property value="certificateNumber"/>'/>
                    <input type="hidden" name="isDefault" value='<s:property value="isDefault"/>'/>
                    <input type="hidden" name="phone" value='<s:property value="phone"/>'/>
                    <button type="button" class="updateBtn">修改</button>
                    <button type="button" class="delBtn">删除</button>
                </td>
            </tr>
        </s:iterator>
    </tbody>
</table>