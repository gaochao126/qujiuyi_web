<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <div class="newsList dataItem">
        <div class="lis1" onclick="window.location.href='news_caseAnalysisDetail.html?params.id=<s:property value="id"/>';">
            <img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="icon"/>'>
        </div>
        <div class="lis2">
            <ul class="lisUl">
                <li>
                    <a href='news_caseAnalysisDetail.html?params.id=<s:property value="id"/>' class="newsTitle">
                        <s:property value="title"/>
                    </a>
                </li>
                <li class="author">
                    <span class="nameTime_left"> 
                        <a href="javascript:void (0);">
                        	<img src="images/medical/head.png" alt="head">
                        	&nbsp;&nbsp;&nbsp;&nbsp;圆圆
                        </a>&nbsp;&nbsp;&nbsp;&nbsp;
                    	<span class="times"><s:property value="@com.jiuyi.qujiuyi.common.Util@getPassTime(createDate)"/></span>
                     </span>
                      <span class="disShare_right">
                          <span class="disCuss">评论&nbsp;&nbsp;(<s:property value="commentCount"/>)</span>
                             <span class="share">
                             	<span style="display: block;width: 30px;height: 50px; float: left;" >分享</span>
                                <a href="javascript:void(0)" class="shareImgA qq" ></a>
                                <a href="javascript:void(0)" class="shareImgA weiBo"></a>
                                <a href="javascript:void(0)" class="shareImgA weiXin"></a>
                           </span>
                      </span>
                </li>
                <li class="brief">
                    <p><s:property value="summary"/></p>
                </li>
            </ul>
        </div>
        <p style="color: #777">
	                        关键词：<span style="color: #2cbade;">血友病</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                        科室：<span style="color: #2cbade;">外科</span>
        </p>
    </div>
</s:iterator>
<form action="news_caseAnalysisItem.html">
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
    <s:if test="params.category2 != '' and params.category2 != null">
        <input type="hidden" name="params.category2" value='<s:property value="params.category2"/>'/>
    </s:if>
</form>