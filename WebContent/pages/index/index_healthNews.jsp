<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
	<s:if test="hotNews.size() != 0">
		<s:if test="hotNews.size() == 1">
			<!-- 健康资讯 -->
			<s:if test="hotNews[0].category1 == 1">
				<div class="infoCon1">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:if>
			<!-- 新药介绍 -->
			<s:elseif test="hotNews[0].category1 == 5">
				<div class="infoCon1">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 养生保健 -->
			<s:elseif test="hotNews[0].category1 == 26">
				<div class="infoCon1">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 病例分析 -->
			<s:elseif test="hotNews[0].category1 == 31">
				<div class="infoCon1">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 名医名方 -->
			<s:elseif test="hotNews[0].category1 == 38">
				<div class="infoCon1">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 更多资讯（社区医疗）未添加链接 -->
			<s:elseif test="hotNews[0].category1 == 12">
				<div class="infoCon1">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
			</s:elseif>
		</s:if>
		
		<!-- 两条记录 -->
		<s:if test="hotNews.size() == 2">
			<!-- 健康资讯 -->
			<s:if test="hotNews[0].category1 == 1">
				<div class="infoCon1">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:if>
			<!-- 新药介绍 -->
			<s:elseif test="hotNews[0].category1 == 5">
				<div class="infoCon1">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 养生保健 -->
			<s:elseif test="hotNews[0].category1 == 26">
				<div class="infoCon1">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 病例分析 -->
			<s:elseif test="hotNews[0].category1 == 31">
				<div class="infoCon1">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 名医名方 -->
			<s:elseif test="hotNews[0].category1 == 38">
				<div class="infoCon1">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 更多资讯（社区医疗） -->
			<s:elseif test="hotNews[0].category1 == 12">
				<div class="infoCon1">
					<img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img">
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img">
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
			</s:elseif>
		</s:if>
		
		<!-- 大于三个 -->
		<s:if test="hotNews.size() >= 3">
			<!-- 健康资讯 -->
			<s:if test="hotNews[0].category1 == 1">
				<div class="infoCon1">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<a href="news_medicalNewsDetail.html?params.id=<s:property value="hotNews[2].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:if>
			<!-- 新药介绍 -->
			<s:elseif test="hotNews[0].category1 == 5">
				<div class="infoCon1">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<a href="news_newDrugIntroductDetail.html?params.id=<s:property value="hotNews[2].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 养生保健 -->
			<s:elseif test="hotNews[0].category1 == 26">
				<div class="infoCon1">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<a href="news_healthCareDetail.html?params.id=<s:property value="hotNews[2].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 病例分析 -->
			<s:elseif test="hotNews[0].category1 == 31">
				<div class="infoCon1">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<a href="news_caseAnalysisDetail.html?params.id=<s:property value="hotNews[2].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 名医名方 -->
			<s:elseif test="hotNews[0].category1 == 38">
				<div class="infoCon1">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[0].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[1].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<a href="news_famousPrescriptionDetail.html?params.id=<s:property value="hotNews[2].id"/>"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img"></a>
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:elseif>
			<!-- 更多资讯（社区医疗） -->
			<s:elseif test="hotNews[0].category1 == 12">
				<div class="infoCon1">
					<img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[0].icon"/>" alt="img">
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[0].title"/>"><s:property value="hotNews[0].title"/></a></span>
				</div>
				
				<div class="infoCon2">
					<img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[1].icon"/>" alt="img">
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[1].title"/>"><s:property value="hotNews[1].title"/></a></span>
				</div>
				
				<div class="infoCon3">
					<img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="hotNews[2].icon"/>" alt="img">
					<span class="imgMess"><a href="javascript: void (0);" title="<s:property value="hotNews[2].title"/>"><s:property value="hotNews[2].title"/></a></span>
				</div>
			</s:elseif>
		</s:if>
	</s:if>