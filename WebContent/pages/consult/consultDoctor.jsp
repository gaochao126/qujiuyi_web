<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-咨询医师</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/firstNAV/consultCon.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
	    <div class="consultCon">
	        <!--咨询医师列表-->
	        <div class="conCon">
	            <!--left-->
	            <div class="consultLeft">
	                <div class="talkMod">
	                    <div class="talkTop"><h1>免费向注册医师提问</h1><a href="consult_consultDoctorDetail.html" id="history">提问历史</a></div>
	                    <div class="talkCon" id="talkCon">
	                        <div class="conditionDes" contenteditable="true"></div>
	                    </div>
	                    <div class="talkBot">
	                        <form action="consult_createMyConsult.html" id="myConsultForm" method="post">
	                            <input type="hidden" name="params.symptoms">                                    
	                            <input type="hidden" name="params.symptomsImages">  
	                            <span style="margin-left: 60px;">年龄</span><input type="number" min="0" max="150" maxlength="3" id="patientAge" name="params.age">
	                            <span style="margin-left: 50px;">男</span><input type="radio" name="params.gender" value="1"/>
	                            <span style="margin-left: 30px;">女</span><input type="radio" name="params.gender" value="2"/>
	                            <div id="imgs" style="position: absolute; top: 15px; height: 50px; left:340px; width: auto;"></div>
	                            <button type="button" id="addPic" onclick="$('#file').click();" style="margin-right: 10px;">添加图片</button>
	                        </form>
	                        <div class="subCon">
		                        <button type="button" id="subBtn">提交问题</button>
	                        </div>
	                    </div>
	                    <form id="upload" method="post" enctype="multipart/form-data" style="display: none;"> 
	                        <input id="file" type="file" name="file" style="display: none" onchange="uploadFile(3);"/>
	                    </form>
	                </div>
	                
	            </div>
	            <!--right-->
	            <div class="consultRig">
	                <h1>截止目前注册医师<span>756</span>位</h1>
	                <p>我们这里有：</p>
	                <ol>
	                    <li>公立医院医生提供在线咨询服务；</li>
	                    <li>执业药师为您提供处方审核和用药指南；</li>
	                    <li>保健师、营养师、心理咨询师提供康复护理、饮食指导和心理辅导。</li>
	                </ol>
	                <!--医生list-->
	                <ul class="docList">
	                    <li>
	                        <img src="images/medical/doctor_head_1.png" alt="head">
	                        <div class="docListCon">
	                            <h1>金戈</h1>
	                            <p title="重庆市第五人民医院">重庆市第五人民医院</p>
	                            <p title="神经内科">神经内科</p>
	                            <span class="docAt">擅长：</span>
	                            <i title="脑血管疾病、中枢神经系统感染性疾病、抑郁症、神经康复等方面的诊断、治疗和研究。">脑血管疾病、中枢神经系统感染性疾病、抑郁症、神经康复等方面的诊断、治疗和研究。</i>
	                        </div>
	                    </li>
	                    <li>
	                        <img src="images/medical/doctor_head_2.png" alt="head">
	                        <div class="docListCon">
	                            <h1>伉奕</h1>
	                            <p title="重庆市第五人民医院">重庆市第五人民医院</p>
	                            <p title="神经内科">神经内科</p>
	                            <span class="docAt">擅长：</span>
	                            <i title="脑血管疾病、中枢神经系统感染性疾病、抑郁症、神经康复等方面的诊断、治疗和研究。">脑血管疾病、中枢神经系统感染性疾病、抑郁症、神经康复等方面的诊断、治疗和研究。</i>
	                        </div>
	                    </li>
	                </ul>
	            </div>
	        </div>
	        <!--quesHistory-->
	    </div>
	    <div class="popPayBack">
	    	<div class="popPayCon">
	    		<div>
	    			<h3>请使用微信支付费用</h3>
	    			<img src="images/index/code.png">
	    		</div>
	    		<div class="weixinChat">
	    		</div>
	    		<p>一、目前仅支持微信支付</p>
	    		<p>二、关于支付的小教程<a href="javascript:void(0)">[查看详情]</a></p>
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
        $("#subBtn").click(function(){
        	$("input[name='params.symptoms']").val($(".conditionDes").html());
        	if ($.trim($("input[name='params.age']").val()) == '') {
        	    alert("年龄必须填写");
        	    return;
        	}
        	//弹窗
        	/* $(".popPayBack").show();
        	$(".popPayCon").show(); */
        	$.ajax({
    			type : "POST",
    			url : $("#myConsultForm").attr("action"),
    			data : $("#myConsultForm").serialize(),
    			dataType : "json",
    			success : function(data) {
    				if (data.resultCode == 0) {
    					window.location.href = "consult_consultDoctorDetail.html";
    				} else {
    					alert(data.resultDesc);
    				}
    			}
    		});
        });
        
        // 上传回调
        function uploadCallBack(result) {
            var img = "<img style='margin-right:2px;' src='http://222.180.171.34:51104/symptoms/" + result.detail.list[0] + "' height='50' width='50'/>";
            var symptomsImages = $("input[name='params.symptomsImages']").val();
            if (symptomsImages != '') {
                $("input[name='params.symptomsImages']").val(symptomsImages + "," + result.detail.list[0]);
            } else if (symptomsImages == '') {
                $("input[name='params.symptomsImages']").val(result.detail.list[0]);
            }
            $("#imgs").append(img);
        }
    </script>
</html>