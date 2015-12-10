<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医医院详情介绍">
        <meta name="keywords" content="791，去就医，医院,医院详情">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <title>791去就医-医院详情</title>
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/hospitalItem.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--医院详情模块-->
        <div class="content con">
            <!--医院介绍-->
            <div class="con_item">
                <!--医院名称-->
                <div class="item_tit"><span class="hosName"><s:property value="dataObj.name"/></span></div>
                <!--医院信息介绍-->
                <div class="item_det">
                    <div style="height: auto; margin-bottom: 35px; overflow: hidden; width: 100%;">
                        <img src='<s:property value="dataObj.head"/>' style="float: left; margin-right: 35px; overflow: hidden; height: 267px; width: 295px;">
                        <div class="hos_mes">
                            <span id="hosAdd"><s:property value="dataObj.address"/></span>
                            <span id="hosPhone"><s:property value="dataObj.telephone"/></span>
                            <span id="domains"><a href="http://www.cq5y.com" target="_blank"><s:property value="dataObj.website"/></a></span>
                            <button type="button" id="appointBtn" onclick="window.location.href='doctor_chooseDoctor.html?params.hospitalId=<s:property value="dataObj.id"/>';">快速预约</button>
                        </div>
                    </div>
                    <!--简介-->
                    <div class="synopsis">
                        <h3>简介：</h3><br/>
                        <p><s:property value="dataObj.about"/></p>
                    </div>
                </div>
            </div>
    
            <!--课室列表-->
            <div class="department">
                <div class="item_tit"><span>科室列表</span></div>
                <div class="item_det">
                    <ul class="depLis">
                        <s:iterator value="departmentList">
                            <li>
                                <a href='department_departmentInfo.html?params.hospitalId=<s:property value="dataObj.id"/>&params.departmentId=<s:property value="id"/>' title='<s:property value="name"/>'>
                                    <img src='images/icon/<s:property value="icon"/>' alt="icon"><s:property value="name"/>
                                </a>
                            </li>
                        </s:iterator>
                    </ul>
                </div>
            </div>
        </div>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
</html>