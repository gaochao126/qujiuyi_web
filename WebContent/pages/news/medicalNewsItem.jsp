<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <div class="newsList dataItem">
        <div class="lis1" onclick="window.location.href='news_medicalNewsDetail.html?params.id=<s:property value="id"/>';">
            <img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="icon"/>'/>
        </div>
        <div class="lis2">
            <ul class="lisUl">
                <li>
                    <a href='news_medicalNewsDetail.html?params.id=<s:property value="id"/>' class="newsTitle">
                        <s:property value="title"/>
                    </a>
                </li>
                <li class="author">
                    <span class="times"><s:property value="@com.jiuyi.qujiuyi.common.Util@getPassTime(createDate)"/></span>
                </li>
                <li class="brief">
                    <p><s:property value="summary"/></p>
                </li>
            </ul>
        </div>
        <span class="tipsName">标签：</span>
        <ul class="tips">
            <li><s:property value="tags"/></li>
            <!-- <li>医疗监管</li>
            <li>移动互联网</li>
            <li>App</li> -->
        </ul>
    </div>
</s:iterator>
<form action="news_medicalNewsItem.html">
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
    <s:if test="params.category2 != '' and params.category2 != null">
        <input type="hidden" name="params.category2" value='<s:property value="params.category2"/>'/>
    </s:if>
</form>