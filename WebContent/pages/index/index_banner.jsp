<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="banner">
    <!--在线客服-->
    <%-- <span class="kf"></span> --%>
    <div id="fsD1" class="focus">
        <div style="width: 1200px;position: relative; margin: 0 auto;">
            <s:if test="#session.patient == null">
                <!--登录框-->
                <jsp:include page="/pages/index/index_login.jsp" flush="true"/>
            </s:if>
            <s:else>
                <!--个人信息框-->
                <jsp:include page="/pages/index/index_info.jsp" flush="true"/>
            </s:else>
        </div>
        <div id="D1pic1" class="fPic">
            <div class="fcon" style="display: none;">
                <a href="javascript:void (0);"><img src="images/index/banner-modified1.png" style="opacity: 1; "></a>
                <!--<span class="shadow"></span>-->
            </div>
            <div class="fcon" style="display: none;">
                <a href="javascript:void (0);"><img src="images/index/banner-modified2.png" style="opacity: 1; "></a>
            </div>
        </div>
        <div class="fbg">
            <div class="D1fBt" id="D1fBt">
                <a href="javascript:void(0)" target="_self" class=""><i>1</i></a>
                <a href="javascript:void(0)" target="_self" class=""><i>2</i></a>
            </div>
        </div>
    </div>
</div>