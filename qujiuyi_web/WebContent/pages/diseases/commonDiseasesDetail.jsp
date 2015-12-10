<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <link href="images/791.ico" rel="Shortcut Icon">
        <title>791去就医-常见疾病详情</title>
        <style type="text/css">
            .hosBanl {
                width: 800px;
                height: 155px;
                /*overflow: hidden;*/
               /* background: #2cbade;*/
                position: relative;
                margin-top: 40px;
                margin-bottom: 40px;
            }
    
            .pointerl {
                position: absolute;
                cursor: pointer;
                width: 23px;
                height: 23px;
                background-color: #1a73db;
               /* overflow: hidden;*/
                top: 95px;
                
            }
    
            #leftArr1 {
    			margin-left:50px;
                background: url("images/index/chevronLeft.png") center;
            }
    
            #rightArr1 {
                right: 5px;
                background: url("images/index/chevronRight.png") center;
            }
    
            .hosBan1 ul {
                position: relative;
                width: 99999999999999px;
              /*  margin-left: 30px;*/
                height: 100%;
            }
    
            .hosBan1 ul li {
                float: left;
                width: 175px;
                height: 155px;
                overflow: hidden;
                margin-left: 19px;
                /*border-left: 1px solid red;*/
            }
    
            .hospitalMes {
                width: 165px;;
                height: 155px;
                overflow: hidden;
                /*background: #333000;*/
            }
    
            .hospitalMes img {
                width: 100%;
                height: 100%;
                overflow: hidden;
            }
    
            .hosTit {
                position: relative;
                display: block;
                bottom: 0;
                width: 90%;
                /*height: 30px;*/
                /*background: #ee82ee;*/
                /*line-height: 30px;*/
                color: #fff;
                text-align: center;
                z-index: 1;
                cursor: pointer;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
    
            .three {
                display: inline-block;
                position: relative;
                top: 3px;
                width: 28px;
                margin-left: 5px;
                height: 16px;
                overflow: hidden;
                background: url("images/icon/symbol.png") no-repeat;
            }
    
            .hosTit:hover {
                text-decoration: underline;
            }
    
            .modCon {
                width: 800px;
                height: auto;
               /* padding: 0 20px 0 20px;*/
                overflow: hidden;
                background: #fff;
                position: relative;
                margin-top: 20px;
            }
        </style>
    
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
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
                <div class="leftCon">
                    <h1>治疗该病最好的医院</h1>
                    <!--<ul class="hotUl">
                    </ul>-->
                    <div class="hotNews" id="hotNews">
                    <s:iterator value="recommendHospitals">
                    	<a href="hospital_hospitalInfo.html?params.id=<s:property value="hospitalId"/>">
                        <div class="hotNewsList">
                            <div class="hospImg">
                                <img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="diseases.icon"/>" alt="img">
                                <span class="hospName"><s:property value="hospitalName"/></span>
                            </div>
                        </div>
                        </a>
   			 		</s:iterator>
                    </div>
                </div>
                <!--right-->
                <div class="rightCon">
                    <!--nav-->
                    <div class="newsNavMod">
                        <a href="javascript:void (0);" class="active"><s:property value="diseases.name"/></a>
                    </div>
                    <!--news-list-->
                    <div class="newsList_Diseases_Detail">
                        <div class="lis1_Diseases_Detail"><img src="<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('server.file.url')"/><s:property value="diseases.icon"/>" alt="img"></div>
                        <div class="lis2_Diseases_Detail">
                            <ul class="hotUl_Diseases_Detail">
                                <li class="hotUlAc_Diseases_Detail" onclick="getP(0);">概述</li>
                                <li onclick="getP(1);">病因</li>
                                <li onclick="getP(2);">症状</li>
                                <li onclick="getP(3);">检查</li>
                                <li onclick="getP(4);">预防</li>
                            </ul>
    						<div class="neirong">
                            	<span class="span1 none">
                            		<p class="introduction"><s:property value="diseases.outline"/><a href="javascript:void(0)" class="readmore"></a></p>
                            	</span>
                            	<span class="span2 none">
                            		<p class="introduction"><s:property value="diseases.reason"/><a href="javascript:void(0)" class="readmore"></a></p>
                            	</span>
                            	<span class="span3 none">
                            		<p class="introduction"><s:property value="diseases.symptom"/><a href="javascript:void(0)" class="readmore"></a></p>
                            	</span>
                            	<span class="span4 none">
                            		<p class="introduction"><s:property value="diseases.censor"/><a href="javascript:void(0)" class="readmore"></a></p>
                            	</span>
                            	<span class="span5 none">
                            		<p class="introduction"><s:property value="diseases.precaution"/><a href="javascript:void(0)" class="readmore"></a></p>
                            	</span>
							</div>
                        </div>
                    </div>
    
                    <div class="guide">
                        <span class="zhiNan_log"></span>
                        <ul class="zhiNan_Ul">
                            <li>
                                发病部位：<span style="color: #777777"><s:property value="diseases.guideParts"/></span>
                            </li>
                            <li>
                                典型症状：<span style="color: #777777"><s:property value="diseases.guideSymptom" /></span>
                            </li>
                            <li>
                                传染性：<span style="color: #777777"><s:property value="diseases.guideInfection" /></span>
                            </li>
                            <li>
                                高发人群：<span style="color: #777777"><s:property value="diseases.guideCrowd"/></span>
                            </li>
                            <li>
                                对应科室：<span style="color: #777777"><s:property value="diseases.guideDepart"/></span>
                            </li>
                            <li>
                                检查项目：<span style="color: #777777"><s:property value="diseases.guideItem"/></span>
                            </li>
                        </ul>
                    </div>
    
                    <!--推荐医生-->
                    <s:if test="recommendDoctors.size() !=0 ">
                    <div class="top_doc">
                        	推荐医生
                    </div>
    
    				<s:iterator value="recommendDoctors">
                    <div class="newsList">
                        <div class="lis1"><a href="doctor_doctorInfo.html?params.id=<s:property value="doctorId"/>"><img src="images/doctorInfo/<s:property value="head"/>" alt="img"></a></div>
                        <div class="lis2">
                            <ul class="lisUl">
                                <li style="margin-bottom: 18px;"><span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">米要和</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px; color: #333;">主任医师</span></li>
                                <li class="brief">
                                    <span style="display: block;height: 80px;float: left;">擅长：</span><p style="display: block"><s:property value="skill"/><a href="http://www.baidu.com"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          target="_blank" class="readmore">[原文链接]</a>
                                </p>
                                </li>
                            </ul>
                        </div>
                        <span class="tipsName">标签：</span>
                        <ul class="tips">
                            <li>银屑病，花斑癣，牛皮癣</li>
                        </ul>
                    </div>
    				</s:iterator>
    				</s:if>
    				
    				<s:if test="recommendMedicine.size() !=0 ">
                    <!--推荐药品-->
                    <div class="top_doc">
                      	  推荐药品
                    </div>
                   
                    <div class="modCon">
                        <!--左边-->
                        <div class="pointer1" id="leftArr1"></div>
                        <!--中间内容-->
                        <div class="hosBan1">
                            <ul class="banLis" id="banLis">
                            	 <s:iterator value="recommendMedicine">
                                <li>
                                    <div class="hospitalMes">
                                        <a href="javascript:void (0)" class="picimglink">
                                            <img src="<s:property value="medicineImage"/>" alt="medicine">
                                        </a>
                                    </div>
                                </li>
                                 </s:iterator>
                            </ul>
                        </div>
                        <!--右边-->
                        <div class="pointer1" id="rightArr1"></div>
                    </div>
    				</s:if>
                    <!--分页-->
                    <div id="page8"></div>
    
                </div>
            </div>
        </div>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/medical/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/medical/medical.js"></script>
    <script type="text/javascript" src="js/medical/scroll.js"></script>
    <script type="text/javascript" src="js/koala.min.1.5.js"></script>
	<script type="text/javascript">
	    $(function(){
	        getP(0);
	    });
	     
	    function getP(params){
	    	var pNei = $(".neirong");
	    	
	    	if(params == 0){
	    		// $(this).addClass('hotUlAc_Common_Diseases');
	    	    // $(this).siblings().removeClass('hotUlAc_Common_Diseases');
	    		$('.span1').removeClass('none');
	    		$('.span1').siblings().addClass('none');
	    	}
			if(params == 1){
				$('.span2').removeClass('none');
	    		$('.span2').siblings().addClass('none');		
			}  
			if(params == 2){
				$('.span3').removeClass('none');
	    		$('.span3').siblings().addClass('none');
			}
			if(params == 3){
				$('.span4').removeClass('none');
	    		$('.span4').siblings().addClass('none');
			}
			if(params == 4){
				$('.span5').removeClass('none');
	    		$('.span5').siblings().addClass('none');
			} 
	    }
   	</script>
</html>