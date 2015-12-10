<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <div class="newsList dataItem">
        <div class="lis1" onclick="window.location.href='diseases_commonDiseasesDetail.html?params.diseasesId=<s:property value="id"/>';">
        	
            <img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="icon"/>" alt="img">
        </div>
        <div class="lis2">
            <ul class="lisUl">
                <li style="margin-bottom: 18px; cursor: pointer;" onclick="window.location.href='diseases_commonDiseasesDetail.html?params.diseasesId=<s:property value="id"/>';">
                    <span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif"><s:property value="name"/></span>
                </li>
                <li class="brief">
                    <p style="display: block"><s:property value="outline"/><a href="diseases_commonDiseasesDetail.html?params.diseasesId=<s:property value="id"/>" target="_blank" class="readmore">[原文链接]</a>
                    </p>
                </li>
            </ul>
        </div>
        <span class="tipsName">相关科室：</span>
        <ul class="tips">
            <li style="color: #666"><s:property value="guideDepart"/></li>
        </ul>
    </div>
</s:iterator>
<form action="diseases_commonDiseasesItem.html">
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
    <s:if test="params.category != '' and params.category != null">
        <input type="hidden" name="params.category" value='<s:property value="params.category"/>'/>
    </s:if>
</form>