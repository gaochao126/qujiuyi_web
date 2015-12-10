<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="famousDoctorList.size() >= 8">
	<s:iterator value="famousDoctorList" begin="0" end="7">
	<div class="recDocLis" onclick="window.location.href='doctor_doctorInfo.html?params.id=<s:property value="id"/>'">
		<div class="docImg">
			<img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.headPortraitPath')"/><s:property value="head"/>' alt="doc">
		</div>
		<div class="docCc">
			 <h6><s:property value="name"/></h6>
			 <p><s:property value="departmentName"/>&nbsp;<span class="docTit"><s:property value="titleName"/></span></p>
			 <p><s:property value="hospitalName"/></p>
		</div>
		<div class="forte">
			 <p><span class="shanchang">擅长：</span><s:property value="skill"/></p>
		</div>
		<button type="button" class="regBtn">预约</button>
	</div>
	</s:iterator>
</s:if>
<s:else>
	<s:iterator value="famousDoctorList">
	<div class="recDocLis" onclick="window.location.href='doctor_doctorInfo.html?params.id=<s:property value="id"/>'">
		<div class="docImg">
			<img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.headPortraitPath')"/><s:property value="head"/>' alt="doc">
		</div>
		<div class="docCc">
			 <h6><s:property value="name"/></h6>
			 <p><s:property value="departmentName"/>&nbsp;<span class="docTit"><s:property value="titleName"/></span></p>
			 <p><s:property value="hospitalName"/></p>
		</div>
		<div class="forte">
			 <p><span class="shanchang">擅长：</span><s:property value="skill"/></p>
		</div>
		<button type="button" class="regBtn">预约</button>
	</div>
	</s:iterator>
</s:else>
<script>
	$('.forte').dotdotdot();
</script>