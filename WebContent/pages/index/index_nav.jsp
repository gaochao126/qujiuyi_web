<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="index_nav">
    <div class="nav_mod">
        <div>
            <ul class="main_nav">
            	<s:if test="params.currentPage == 'index'">
                	<li onclick="window.location.href='index.html'" class="main_navAc">
                		首页
                	</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='index.html'">
                    	首页
                    </li>
                </s:else>
             	<s:if test="params.currentPage == 'consultDoctor'">
                	<li onclick="window.location.href='consult_consultDoctor.html'" class="main_navAc">
                		咨询医师
                		<img src="images/index/free.png" >
                	</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='consult_consultDoctor.html'">
                    	咨询医师
                    	<img src="images/index/free.png">
                    </li>
                </s:else>
                <s:if test="params.currentPage == 'onlineMedical'">
                    <li onclick="window.location.href='onlineMedical_reqOnlineMedical.html'" class="main_navAc">
                    	在线医疗
                    <img src="images/index/pay.png" ></li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='onlineMedical_reqOnlineMedical.html'">
                    	在线医疗
                    	<img src="images/index/pay.png" >
                    </li>
                </s:else>
                <s:if test="params.currentPage == 'DPInterate'">
                	<li onclick="window.location.href='DPInteraction_DPInterate.html'" class="main_navAc">
	                	医患互动
	                	<img src="images/index/open.png" >
                	</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='DPInteraction_DPInterate.html'">
                    	医患互动
                    	<img src="images/index/open.png" >
                    </li>
                </s:else>
                <s:if test="params.currentPage == 'appointmentRegister'">
                    <li onclick="window.location.href='register_appointmentRegister.html'" class="main_navAc">预约挂号</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='register_appointmentRegister.html'">预约挂号</li>
                </s:else>
             	<s:if test="params.currentPage == 'myInspection'">
                	<li onclick="window.location.href='inspection_myInspection.html'" class="main_navAc">
	                	检查检验
                	</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='inspection_myInspection.html'">
                    	检查检验
                    </li>
                </s:else>
                <li><a href = "http://yao.51791.com/" target="_blank">在线购药</a></li>
                <s:if test="params.currentPage == 'VIPService'">
                	<li onclick="window.location.href='VIPService_VIPService.html'" class="main_navAc">会员服务</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='VIPService_VIPService.html'">会员服务</li>
                </s:else>
                <li>慢病管理</li>
             	<s:if test="params.currentPage == 'medicalAid'">
                	<li onclick="window.location.href='medAid_medicalAid.html'" class="main_navAc">医疗救助</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='medAid_medicalAid.html'">医疗救助</li>
                </s:else>
                <li><a href = "http://222.180.171.34:51114/" target="_blank">学术探讨</a></li>
             	
             	<s:if test="params.currentPage == 'onlineLearning'">
                	<li onclick="window.location.href='onlineLearning_onlineLearning.html'" class="main_navAc">医师学习</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='onlineLearning_onlineLearning.html'">医师学习</li>
                </s:else>
            </ul>
        </div>
    </div>
</div>
    <div class="second_mod">
        <div>
            <ul class="second_nav">
            	<li class="hotSpan">
            		热门标签：
            	</li>
            	<!--  class="colorOrange"橙色字体 -->
                <s:if test="params.currentPage == 'medicalNews'">
                    <li onclick="window.location.href='news_medicalNews.html'" class="colorOrange">医疗动态</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_medicalNews.html'" >医疗动态</li>
                </s:else>
                <s:if test="params.currentPage == 'newDrugIntroduct'">
                    <li onclick="window.location.href='news_newDrugIntroduct.html'" class="colorOrange">新药介绍</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_newDrugIntroduct.html'" >新药介绍</li>
                </s:else>
                <s:if test="params.currentPage == 'specialMedicalTreatment'">
                    <li onclick="window.location.href='medicalTreatment_specialMedicalTreatment.html'" class="colorOrange">特色医疗</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='medicalTreatment_specialMedicalTreatment.html'">特色医疗</li>
                </s:else>
                <s:if test="params.currentPage == 'healthRecord'" >
                    <li onclick="window.location.href='news_healthRecord.html'" class="colorOrange">健康档案</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_healthRecord.html'">健康档案</li>
                </s:else>
                <s:if test="params.currentPage == 'communityHealth'">
                    <li onclick="window.location.href='news_communityHealth.html'" class="colorOrange">社区医疗</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_communityHealth.html'">社区医疗</li>
                </s:else>
                <s:if test="params.currentPage == 'caseAnalysis'">
                    <li onclick="window.location.href='news_caseAnalysis.html'" class="colorOrange">病例分析</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_caseAnalysis.html'">病例分析</li>
                </s:else>
                <s:if test="params.currentPage == 'excellentDoctor'">
                    <li onclick="window.location.href='news_excellentDoctor.html'" class="colorOrange">优秀医师</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_excellentDoctor.html'">优秀医师</li>
                </s:else>
                <s:if test="params.currentPage == 'commonDiseases'" >
                    <li onclick="window.location.href='diseases_commonDiseases.html'" class="colorOrange">常见疾病</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='diseases_commonDiseases.html'">常见疾病</li>
                </s:else>
                <s:if test="params.currentPage == 'famousPrescription'" >
                    <li onclick="window.location.href='news_famousPrescription.html'" class="colorOrange">名医名方</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_famousPrescription.html'">名医名方</li>
                </s:else>
                <s:if test="params.currentPage == 'healthCare'" >
                    <li onclick="window.location.href='news_healthCare.html'"  class="colorOrange">养生保健</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_healthCare.html'">养生保健</li>
                </s:else>
                <s:if test="params.currentPage == 'cmtu'" >
                    <li onclick="window.location.href='news_cmtu.html'" class="colorOrange">中华医联</li>
                </s:if>
                <s:else>
                    <li onclick="window.location.href='news_cmtu.html'">中华医联</li>
                </s:else>
            </ul>
        </div>
    </div>