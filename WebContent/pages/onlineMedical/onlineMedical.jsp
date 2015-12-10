<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-在线医疗</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/firstNAV/onlineMedical.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
		   <div class="onlineCon">
	        <!--left-->
	        <div class="onlineLeft">
	            <!--区域选择-->
	            <div class="onlineAddChose"><h1>重庆 <button type="button">[<span>切换</span>]</button></h1></div>
	            <!--切换mod-->
	            <div class="addChoseMod" style="display: none;">
	                <span>请选择城市：</span>
	                <ul class="cityChoseList">
                        <s:iterator value="provinceList">
	                       <li><s:property value="provinceName"/></li>
                        </s:iterator>
	                </ul>
	            </div>
	            <div class="onlineAddChoseCon">
	                <!--开通服务-->
	                <div class="lineList">
	                    <span>开通服务</span>
	                    <ul class="openServiceList">
	                        <li title="图文咨询" class="activeList" onclick="choseServerType()">图文咨询</li>
	                        <li title="电话咨询">电话咨询</li>
	                        <li title="视频咨询">视频咨询</li>
	                       <!--  <li title="图文咨询">图文咨询</li> -->
	                    </ul>
	                </div>
	                <!--科室筛选-->
	                <div class="lineList">
	                    <span>科室筛选</span>
	                    <ul class="classChoseList">
	                    	<li title="全部" class="activeList" onmousedown="choseDepartment(0)">全部</li>
	                    	<s:iterator value="oneLevleDepartmentList">
	                    	 <li title="<s:property value="name"/>" onmousedown="choseDepartment(<s:property value="id"/>)"><s:property value="name"/></li>
	                    	</s:iterator>
	                    </ul>
	                </div>
	                <!--医院筛选-->
	                <div class="lineList">
	                    <span>医院筛选</span>
	                    <ul class="choseHospital">
	                       	<li title="全部" class="activeList" onmousedown="choseHospital(0)">全部</li>
	                    	<s:iterator value="hospitalList">
	                    		<li title="<s:property value="name"/>" onmousedown="choseHospital(<s:property value="id"/>)"><s:property value="name"/></li>
	                    	</s:iterator>
	                    </ul>
	                </div>
	            </div>
	            <!-- 请求参数 -->
				<form id="queryDoctorConditions" action="onlineMedical_queryDoctor.html" method="post">
					<input type="hidden" name="params.doctorType" value="1" />
					<input type="hidden" name="params.hospitalId" value="0"/>
					<input type="hidden" name="params.departmentId" value="0"/>
				</form>
	            <!--医生列表-->
	            <div class="onlineDoctor">
	           		<ul class="docTitList">
						<li class="docListActive">综合</li>
						<li>患者评价</li>
						<li>接诊量</li>
						<li id="docNum" style="background: none;margin: 0px;">找到<i class="doctorCount">0</i>位医生</li>
					</ul>
					<div class="doctorCon dataList">
					</div>
					<!--分页-->
					<div id="page8"></div>
				</div>
	            
	        </div>
	        <div class="onlineRig">
	            <div class="titModTop" style="background: #02bae0;">
	                <div class="titModTop1"><h1 style="color: #02bae0;">免费咨询</h1><span>身体不适，全科问诊</span></div>
	            </div>
	            <div class="titModTop" style="background: #50e1c0;">
	                <div class="titModTop2"><h1 style="color: #50e1c0;">一元问诊</h1><span>特邀专家，爱心解答</span></div>
	            </div>
	            <!--相关新闻-->
	            <div class="aboutNews">
	                <h1>相关新闻</h1>
	                <div class="newsListMod" id="hotNews">
	                    <ul class="newLists">
	                    	<s:iterator value="dataList">
	                        	 <li><a href='news_medicalNewsDetail.html?params.id=<s:property value="id"/>'><s:property value="title"/></a><span class="times"><s:property value="@com.jiuyi.qujiuyi.common.Util@getPassTime(createDate)"/></span></li>
	                        </s:iterator>
	                    </ul>
	                </div>
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
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript">
    	$(function(){
    		choseDepartment(0);
    		choseHospital(0);
    	});
    	
   		$('.docExpert').dotdotdot();
   	    
   	    //<!--点击切换城市-->
   	    $(".onlineAddChose").find("button").click(function(){
   	        if ($(".addChoseMod").css('display') == "none") {
   	         	$(".addChoseMod").show();
   	        } else {
   	         	$(".addChoseMod").hide();
   	        }
   	    });
   	    
   	 	jQuery.fn.isChildAndSelfOf = function(b){ return (this.closest(b).length > 0); };
   	 	$(document).click(function(event){
   	 	    if ($(event.target).isChildAndSelfOf(".onlineAddChose")) {
   	 	        return;
   	 	    }
   	 	    if (!$(event.target).isChildAndSelfOf(".addChoseMod")) {
   	 	    	$(".addChoseMod").hide();
   	 	    }
   	 	});
   	 	
   	 	//绑定点击变色现在
   	 	$(".choseHospital li").live('click',function(){
   	 		$(this).addClass('activeList');
	 	 	$(this).siblings().removeClass('activeList');
   	 	});
   	 	
   	 	$(".classChoseList li").live('click',function(){
	   	 	$(this).addClass('activeList');
	 	 	$(this).siblings().removeClass('activeList');
   	 	});
   	 	
   	 	$(".openServiceList li").live('click',function(){
	   	 	$(this).addClass('activeList');
	 	 	$(this).siblings().removeClass('activeList');
   	 	});
   	 	
   	 	//选择科室
   	 	function choseDepartment(departmentId){
   	 		$("input[name='params.departmentId']").val(departmentId);
   	 		var doctorCon = $(".doctorCon");
   	 		$.ajax({
	   	 		type : "POST",
				url : $("#queryDoctorConditions").attr("action"),
				data : $("#queryDoctorConditions").serialize(),
				dataType : "text",
				success : function(data) {
					doctorCon.html(data);
					$('.doctorsC p').dotdotdot();
					var doctorCount = $("#totalRecords").val();
					$('.doctorCount').html(doctorCount);
				}
   	 		});
   	 	}
   	 	//医院选择
   	 	function choseHospital(hospitalId){
   	 		$("input[name='params.hospitalId']").val(hospitalId);
   	 		var doctorCon = $(".doctorCon");
	 		$.ajax({
	   	 		type : "POST",
				url : $("#queryDoctorConditions").attr("action"),
				data : $("#queryDoctorConditions").serialize(),
				dataType : "text",
				success : function(data) {
					doctorCon.html(data);
					$('.doctorsC p').dotdotdot();
					var doctorCount = $("#totalRecords").val();
					$('.doctorCount').html(doctorCount);
				}
	 		});
   	 	}
   	 	
    </script>
    
</html>