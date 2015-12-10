<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医APP下载">
        <meta name="keywords" content="791，去就医，网上预约挂号,APP下载">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-APP下载</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/download.css">
        
    </head>
    <body>
        <!--header-->
    <div class="header">
        <div class="con">
            <a href="index.html"><img src="images/index/791logo.png" alt="logo"></a>
            <h3 class="topTitle">手机客户端</h3>
        </div>
    </div>
    <!--content-->
	<div class="totalContent">
	    <!--content-->
	    <div class="content">
	        <img src="images/icon/slogan.png" alt="logo">
	    </div>
	    <div class="content2">
	        <div class="downloadCon">
	        	<ul class="downloadTab">
	        		<li class="active" id="toPatient">用户版</li>
	        		<li id="toDoctor">医生版</li>
	        		<li></li>
	        	</ul>
	        	<div class="downloadChild">
	        		<div class="DLWindow" id="patientApp">
	        			<table>
        					<tr>
        						<th><h3 class="iosIcon">IOS下载</h3></th>
        						<th><h3 class="androidIcon">Android下载</h3></th>
        						<th><h3 class="weiIcon">关注微信公众号</h3></th>
        					</tr>
	        				<tbody>
	        					<tr>
	        						<td><!-- <img src="images/icon/ios_patient.png" /> --></td>
	        						<td><!-- <img src="images/icon/android_patient.png" /> --></td>
	        						<td><img src="images/icon/weixin.png" /></td>
	        					</tr>
	        				</tbody>
	        			</table>
	        		</div>
	        		<div  class="DLWindow" id="doctorApp">
	        			<table>
	        				<tr>
        						<th><h3 class="iosIcon">IOS下载</h3></th>
        						<th><h3 class="androidIcon">Android下载</h3></th>
        						<th></th>
        					</tr>
	        				<tbody>
	        					<tr>
	        						<td><img src="images/icon/ios_doctor.jpg" /></td>
	        						<td><img src="images/icon/android_doctor.png" /></td>
	        						<td></td>
	        					</tr>
	        				</tbody>
	        			</table>
	        		</div>
	        	</div>
	        </div>
	    </div>
	</div>
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <script type="text/javascript" src="js/tools.js"></script>
    <script type="text/javascript">
    $("#toPatient").click(function(){
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
		$("#patientApp").show();
		$("#doctorApp").hide();
	})
	$("#toDoctor").click(function(){
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
		$("#patientApp").hide();
		$("#doctorApp").show();
	})
    </script>
</html>