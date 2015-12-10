<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator value="dataList">
    <div class="newsList dataItem">
        <div class="lis1">
            <img src="images/medical/img.png" alt="img">
        </div>
        <div class="lis2">
            <ul class="lisUl">
                <li><a href="javascript:void(0);" class="newsTitle">渝中区大溪沟卫生服务中心</a></li>
                <li class="author_Com">
                    <span class="nameTime_left">
                         地址：&nbsp;&nbsp;&nbsp;&nbsp;<span title='重庆市大溪沟余粮铺94-15重庆市大溪沟余粮铺94-15'>重庆市大溪沟余粮铺94-15</span>
                    </span>
                    <span class="disShare_right">
                       <span class="disCuss">评论&nbsp;&nbsp;(10125)</span>
                       <span class="share"><span style="display: block;width: 30px;height: 50px; float: left;" >分享</span>
                            <a href="javascript:void(0)" class="shareImgA qq" ></a>
                            <a href="javascript:void(0)" class="shareImgA weiBo"></a>
                            <a href="javascript:void(0)" class="shareImgA weiXin"></a>
                       </span>
                   </span>
                </li>
                <li class="phone_Com">
                     电话：&nbsp;&nbsp;&nbsp;&nbsp;023-89756524
                </li>
                <li class="info_Com" title="近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健">
                        近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健
                </li>
            </ul>
        </div>
        <span class="tipsName">标签：</span>
        <ul class="tips">
            <li style="color: #6dd5f1;"><s:property value="tags"/></li>
        </ul>
    </div>
</s:iterator>
<form action="news_communityHealthItem.html">
    <input type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
    <input type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
    <input type="hidden" name="page.totalPage" value='<s:property value="page.totalPage"/>'/>
    <s:if test="params.category2 != '' and params.category2 != null">
        <input type="hidden" name="params.category2" value='<s:property value="params.category2"/>'/>
    </s:if>
</form>