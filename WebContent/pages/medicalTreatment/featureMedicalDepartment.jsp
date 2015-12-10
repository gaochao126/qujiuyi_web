<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-特色专科</title>
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
            <!--newsTop-->
            <div class="newsTop">
                <ul class="topUl">
                    <li>
                        <div class="firstImg">
                            <img src="images/medical/img1.jpg" alt="img">
                            <span class="showMes">我学者发现白血病新抑癌</span>
                        </div>
                    </li>
                    <li>
                        <div class="midDiv">
                            <img src="images/medical/img2.jpg" alt="img">
                            <span class="showMes">"千里送心"救病危男孩</span>
                        </div>
                        <div class="midDiv">
                            <div class="midBot" style="margin-right: 13px;">
                                <img src="images/medical/img4.jpg" alt="img">
                                <span class="showMes">上海已着手应对"独生子女父母养老"</span>
                            </div>
                            <div class="midBot">
                                <img src="images/medical/img5.jpg" alt="img">
                                <span class="showMes">危害足部健康的十大状况</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="rigMod">
                            <img src="images/medical/img3.jpg" alt="img">
                            <span class="showMes">世卫组织区域委员会年度会议纪要</span>
                        </div>
                        <div class="rigMod">
                            <img src="images/medical/img6.jpg" alt="img">
                            <span class="showMes">新农合筹资保障水平双提高</span>
                        </div>
                    </li>
                </ul>
            </div>
            <!--main-content-->
            <div class="mainCont">
                <!--left-->
                <input type="hidden" id="hospitalId" value="<s:property value="hospital.id"/>"/>
                <input type="hidden" id="departmentId" value="<s:property value="hospital.departmentId"/>"/>
                <div class="leftCon">
	                <h1 style="padding-bottom: 0px;"><s:property value="hospital.name"/></h1>
	                <h1 style="padding-top: 12px; padding-bottom: 0px;"><s:property value="hospital.departmentName"/></h1>
	
	                <div class="hotNews" id="hotNews">
	                    <div class="hotNewsList">
	                        <div class="hidMesDe">
	                            <p><s:property value="hospital.description"/><a href="department_departmentInfo.html?params.hospitalId=<s:property value="hospital.id"/>&params.departmentId=<s:property value="hospital.departmentId"/>" target="_blank" class="readmore">[完整介绍]</a></p>
	                        </div>
	                    </div>
	                </div>
	            </div>
                <!--right-->
                <div class="rightCon">
                	<div class="newsNavMod">
	                    <a href="javascript:void (0);" onclick="getDoctorByLevel(0)" class="active">全部</a>
	                    <a href="javascript:void (0);" onclick="getDoctorByLevel(1)">主任医师</a>
	                    <a href="javascript:void (0);" onclick="getDoctorByLevel(2)">副主任医师</a>
	                    <a href="javascript:void (0);" onclick="getDoctorByLevel(3)">主治医师</a>
	                    <a href="javascript:void (0);" onclick="getDoctorByLevel(4)">普通医师</a>
	                </div>
	                <div class="neirong">
	                
	                </div>
	            	<%-- <jsp:include page="/pages/medicalTreatment/specialDoctorList.jsp"></jsp:include> --%>
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
    <script type="text/javascript">
    $(function(){
		getDoctorByLevel(0);
	});
    
    function getDoctorByLevel(titleId){
    	var doctorList = $(".neirong");
    	var hospitalId = $("#hospitalId").val();
    	var departmentId = $("#departmentId").val();
    	$.ajax({
    		type:"post",
    		url:"medicalTreatment_queryDoctor.html?params.hospitalId="+hospitalId+"&params.parentDepartmentId="+departmentId+"&params.titleId="+titleId,
    		dataType:"text",
    		success:function(data){
    			doctorList.html(data);
    		}
    	}) 
    }
    </script>
</html>