<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-特色医疗</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/other.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <style type="text/css">
            .scrollDiv {
                width: 8px;
                position: absolute;
                top: 0;
                background: red;
                border-radius: 10px;
                z-index: 10;
            }
        </style>
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    
        <!--content-->
        <div class="newsContent">
            <!--main-content-->
            <div class="mainCont">
                <!--left-->
                <div class="leftCon">
                    <h1>热门医院</h1>
                    <div class="hotNews" id="hotNews" style="height: 645px;">
                        <s:iterator value="hotHospitalList">
                            <div class="hotNewsList" onclick="window.location.href='hospital_hospitalInfo.html?params.hospitalId=<s:property value="id"/>';">
                               <div class="hospImg">
                                   <img src='<s:property value="head"/>'/>
                                   <span class="hospName" style="bottom:10px;"><s:property value="name"/></span>
                               </div>
                            </div>
                        </s:iterator>
                    </div>
                </div>
                <!--right-->
                <div class="rightCon">
                    <!--nav-->
                    <div class="newsNavMod">
                        <a href="javascript:void (0);" class="active">全部</a>
                        <!-- <a href="javascript:void (0);">内科</a>
                        <a href="javascript:void (0);">外科</a>
                        <a href="javascript:void (0);">不孕不育</a>
                        <a href="javascript:void (0);">肿瘤</a> -->
    
                    </div>
                    <!--news-list-->
                    <s:iterator value="specialHospitalList">
                    
                    <div class="newsList">
                        <div class="lis1"><img src='<s:property value="head"/>' alt="img" onclick="window.location.href='medicalTreatment_specialDepartment.html?params.hospitalId=<s:property value="id"/>&params.parentDepartmentId=<s:property value="departmentId"/>'"></div>
                        <div class="lis2">
                            <ul class="lisUl">
                                <li><a href="medicalTreatment_specialDepartment.html?params.hospitalId=<s:property value="id"/>&params.parentDepartmentId=<s:property value="departmentId"/>" class="hosTitle"><s:property value="name"/></a><a href="medicalTreatment_specialDepartment.html?params.hospitalId=<s:property value="id"/>&params.parentDepartmentId=<s:property value="departmentId"/>" class="hosTitle"><s:property value="departmentName"/></a></li>
                                <li class="author">
                                        <span class="nameTime_left">
                                        </span>
                                        <span class="disShare_right">
                                            <span class="disCuss">&nbsp;&nbsp;</span>
                                            <span class="share"><span style="display: block;width: 30px;height: 50px; float: left;" >分享</span>
                                                 <a href="javascript:void(0)" class="shareImgA qq" ></a>
                                                 <a href="javascript:void(0)" class="shareImgA weiBo"></a>
                                                 <a href="javascript:void(0)" class="shareImgA weiXin"></a>
                                            </span>
                                        </span>
                                </li>
                                <li class="brief">
                                    <p><s:property value="description"/>
                                        <a href="medicalTreatment_specialDepartment.html?params.hospitalId=<s:property value="id"/>&params.parentDepartmentId=<s:property value="departmentId"/>" class="hosTitle"><s:property value="name"/></a><a href="medicalTreatment_specialDepartment.html?params.hospitalId=<s:property value="id"/>&params.parentDepartmentId=<s:property value="departmentId"/>" target="_blank" class="readmore">[查看详情]</a></p>
                                </li>
                            </ul>
                        </div>
                        <span class="tipsName">特色治疗：</span>
                        <ul class="tipps">
                            <li><s:property value="specialTreatment"/></li>
                        </ul>
                    </div>
    				</s:iterator>
    
                    <!--分页-->
                    <div id="page8"></div>
    
                </div>
            </div>
        </div>
    
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/medical/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/medical/medical.js"></script>
    <script type="text/javascript" src="js/medical/scroll.js"></script>
   	
   
</html>