<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <div class="newsList dataItem">
        <div class="lis1" onclick="window.location.href='news_healthCareDetail.html?params.id=<s:property value="id"/>';">
            <img src='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="icon"/>' alt="img">
        </div>
        <div class="lis2">
            <ul class="lisUl">
                <li>
                    <a href='news_healthCareDetail.html?params.id=<s:property value="id"/>' class="newsTitle">
                        <s:property value="title"/>
                    </a>
                </li>
                <li class="author">
                     <span class="nameTime_left">王大雷&nbsp;&nbsp;&nbsp;&nbsp;<span class="times"><s:property value="@com.jiuyi.qujiuyi.common.Util@getPassTime(createDate)"/></span></span>
                     <span class="disShare_right">
                        <span class="disCuss">评论&nbsp;&nbsp;(<s:property value="commentCount"/>)</span>
                        <span class="share"><span style="display: block;width: 30px;height: 50px; float: left;" >分享</span>
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
        <span class="tipsName">标签：</span>
        <ul class="tips">
            <li style="color: #333;"><s:property value="tags"/></li>
        </ul>
    </div>
</s:iterator>
<form action="news_healthCareItem.html">
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
    <s:if test="params.category2 != '' and params.category2 != null">
        <input type="hidden" name="params.category2" value='<s:property value="params.category2"/>'/>
    </s:if>
</form>