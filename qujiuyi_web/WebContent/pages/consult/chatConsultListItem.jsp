<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
	<a title='<s:property escape="false" value="symptoms"/>' href="javascript:void (0);" class="serviceLi">
        <input type="hidden" name="doctorHead" value='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.head.path')"/><s:property value="doctorHead"/>'/>
		<input type="hidden" name="patientId" value='<s:property value="patientId"/>'>
		<input type="hidden" name="doctorId" value='<s:property value="doctorId"/>'>
		<input type="hidden" name="serviceId" value='<s:property value="id"/>'>
		<input type="hidden" name="doctorName" value='<s:property value="doctorName"/>'>
		<input type="hidden" name="doctorTitleName" value='<s:property value="titleName"/>'>
		<input type="hidden" name="departmentName" value='<s:property value="departmentName"/>'>
		<input type="hidden" name="hospitalName" value='<s:property value="hospitalName"/>'>
        <s:if test="doctorId == null || doctorId == ''">
		    <span style="float: left; margin-right: 10px; max-width: 260px; overflow:hidden; text-overflow: ellipsis;white-space: nowrap;">
                <s:property escape="false" value="symptoms"/>
            </span>
            <span style="color:red;">咨询未接收</span>
        </s:if>
        <s:else>
            <span style="float: left; margin-right: 10px; max-width: 260px; overflow:hidden;text-overflow: ellipsis;white-space: nowrap;">
                <s:property escape="false" value="symptoms"/>
            </span>
            <span style="color:blue;">[查看咨询]</span>
        </s:else>
	</a>
	<p>
		<span>(<s:if test="gender == 1">男</s:if><s:else>女</s:else>,<s:property value="age"/>岁)</span> 
		<span class="minTimes">
			<s:property value="@com.jiuyi.qujiuyi.common.Util@getPassTime(createTime)"/>
		</span>
	</p>
</s:iterator>