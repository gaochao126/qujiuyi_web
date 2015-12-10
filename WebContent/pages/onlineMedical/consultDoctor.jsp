<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

	<s:iterator value="dataList">
		<%-- <div class="doctorsC dataItem">
			<div class="docHead"><img src='<s:property value="head"/>' alt="head"></div>
			<h3><s:property value="name"/></h3>
			<h3><s:property value="departmentName"/></h3>
			<h3><s:property value="titleName"/></h3>
			<h3 title="<s:property value="hospitalName"/>"><s:property value="hospitalName"/></h3>
			<p title="<s:property value="skill"/>"><span>擅长：</span><s:property value="skill"/></p>
		    <ul>
		        <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
		        <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
		        <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
		    </ul>
		</div> --%>
		<div class="doctorsC dataItem">
			<div class="doctorsDesc">
				<div class="docDescBottom">
					<img src='<s:property value="head"/>' alt="head" class="docHead">
					<div class="docDescRight">
						<h3><s:property value="name"/><br>
                  				<small><s:property value="titleName"/></small>
                  			</h3>
						<span class="doctorScore"><s:property value="recommendScore"/></span>分<br />
						<span class="doctorScore">200</span>人咨询
					</div>
				</div>
				<div class="docDescBottom">
					<p class="docItemTitle"><s:property value="departmentName"/></p>
					<p class="docItemTitle"><s:property value="hospitalName"/></p>
					<p class="docExpert">
						擅长：<s:property value="skill"/>
					</p>
				</div>
			</div>
			<div class="doctorsService">
				<div class="docServiceItem docSerItem1">
					<p>
						20元/次
					</p>
					<div>
						<img src="images/firstNAV/consult_icon.png" />
						&nbsp;发图文
					</div>
					
				</div>
				<div class="docServiceItem docSerItem1">
					<p>
						20元/次
					</p>
					<div>
						<img src="images/firstNAV/call_icon.png" />
						&nbsp;打电话
					</div>
				</div>
				<div class="docServiceItem docSerItem2">
					<p>
						暂未开通
					</p>
					<div>
						<img src="images/firstNAV/video_icon.png" />
						&nbsp;视频
					</div>
				</div>
			</div>
		</div>		
	</s:iterator>
	
    <form action="onlineMedical_queryDoctor.html" id="resultForm">
    <input type="hidden" id="totalRecords" name="page.totalRecord" value="<s:property value="page.totalRecord"/>"/>
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
   
    <!-- 线上医生 -->
    <s:if test="params.doctorType != '' and params.doctorType != null">
        <input type="hidden" name="params.doctorType" value='<s:property value="params.doctorType"/>'/>
    </s:if>
    <!-- 医院ID -->
    <s:if test="params.hospitalId != '' and params.hospitalId != null">
        <input type="hidden" name="params.hospitalId" value='<s:property value="params.hospitalId"/>'/>
    </s:if>
    <s:else>
   	 	<input type="hidden" name="params.hospitalId" value='0'/>
    </s:else>
    <!-- 科室ID -->
    <s:if test="params.departmentId != '' and params.departmentId != null">
       <input type="hidden" name="params.departmentId" value='<s:property value="params.departmentId"/>'/>
    </s:if>
    <s:else>
       <input type="hidden" name="params.departmentId" value='0'/>
    </s:else>
	</form>

					


