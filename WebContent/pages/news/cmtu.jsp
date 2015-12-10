<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="utf-8">
    <title>791去就医-中华医联</title>
    <meta name="description" content="791去就医预约挂号官网。">
    <meta name="keywords" content="791，去就医，医疗动态">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <link href="images/791.ico" rel="Shortcut Icon">
    <link rel="stylesheet" href="css/tool.css">
    <link rel="stylesheet" href="css/cmtu.css">
</head>
<body>
    <!--top-->
    <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
    
    <!--导航栏-->
    <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>

    <!--content-->
    <div class="cmtuCon">
        <div class="cmtLeft">
            <img src="images/medical/cmtu_logo.png" alt="cmtuLogo">
            <div class="addMod">
                <span>地址：</span>
                <ul>
                    <li>中华人民共和国</li>
                    <li>香港特别行政区</li>
                    <li>新界元朗锦田公路183号</li>
                </ul>
            </div>
            <div class="addMod">
                <span>网址：</span>
                <ul>
                    <li><a href="http://www.cmtu.com" target="_blank">www.cmtu.com</a></li>
                </ul>
            </div>
        </div>
        <div class="cmtRig">
            <h1>中华医疗技术联盟</h1>
            <p>中华医疗技术联盟(中华医联、CMTU)是经中华人民共和国香港行政区政府批准于2015年8月成立的社团组织。本着为世界华人健康服务的宗旨，CMTU致力于医疗技术的信息交流与技术进步，欢迎世界范围内广大华人医生加入CMTU。CMTU在世界主要国家设有分会，下设有50余个专委会。在大陆的主要城市和港澳台地区均设有工作委员会。</p>
        </div>
    </div>

    <!--footer-->
    <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
</body>
</html>