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
	                        <li title="图文咨询" class="activeList">图文咨询</li>
	                        <li title="电话咨询">电话咨询</li>
	                        <li title="视频咨询">视频咨询</li>
	                        <li title="图文咨询">图文咨询</li>
	                    </ul>
	                </div>
	                <!--科室筛选-->
	                <div class="lineList">
	                    <span>科室筛选</span>
	                    <ul class="classChoseList">
	                        <li title="妇产科">妇产科</li>
	                        <li title="儿科">儿科</li>
	                        <li title="骨科" class="activeList">骨科</li>
	                        <li title="肿瘤科">肿瘤科</li>
	                        <li title="五官科">五官科</li>
	                        <li title="内科">内科</li>
	                        <li title="外科">外科</li>
	                        <li title="皮肤性病科">皮肤性病科</li>
	                        <li title="中医科">中医科</li>
	                        <li title="精神心理">精神心理</li>
	                    </ul>
	                </div>
	                <!--医院筛选-->
	                <div class="lineList">
	                    <span>医院筛选</span>
	                    <ul>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院" class="activeList">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                        <li title="重庆医科大学附属人民医院">重庆医科大学附属人民医院</li>
	                    </ul>
	                </div>
	            </div>
	
	            <!--医生列表-->
	            <div class="onlineDoctor">
	                <ul class="docTitList">
	                    <li class="docListActive">综合</li>
	                    <li>患者评价</li>
	                    <li>接诊量</li>
	                    <li id="docNum" style="background: none;margin: 0px;">找到<i>1203</i>位医生</li>
	                </ul>
	                <div class="doctorCon">
	                    <div class="doctorsC">
	                        <div class="docHead"><img src="images/firstNAV/doctor_head.png" alt="head"></div>
	                        <h3>金戈</h3>
	                        <h3>内科</h3>
	                        <h3>主任医师</h3>
	                        <h3>重庆市第五人民医院重庆市第五人民医院</h3>
	                        <p title="病毒性肝炎，肝胆硬化"><span>擅长：</span>病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化</p>
	                        <ul>
	                            <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
	                            <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
	                            <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
	                        </ul>
	                    </div>
	                    <div class="doctorsC">
	                        <div class="docHead"><img src="images/firstNAV/doctor_head.png" alt="head"></div>
	                        <h3>金戈</h3>
	                        <h3>内科</h3>
	                        <h3>主任医师</h3>
	                        <h3>重庆市第五人民医院重庆市第五人民医院</h3>
	                        <p title="病毒性肝炎，肝胆硬化"><span>擅长：</span>病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化</p>
	                        <ul>
	                            <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
	                            <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
	                            <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
	                        </ul>
	                    </div>
	                    <div class="doctorsC">
	                        <div class="docHead"><img src="images/firstNAV/doctor_head.png" alt="head"></div>
	                        <h3>金戈</h3>
	                        <h3>内科</h3>
	                        <h3>主任医师</h3>
	                        <h3>重庆市第五人民医院重庆市第五人民医院</h3>
	                        <p title="病毒性肝炎，肝胆硬化"><span>擅长：</span>;病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化</p>
	                        <ul>
	                            <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
	                            <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
	                            <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
	                        </ul>
	                    </div>
	                    <div class="doctorsC">
	                        <div class="docHead"><img src="images/firstNAV/doctor_head.png" alt="head"></div>
	                        <h3>金戈</h3>
	                        <h3>内科</h3>
	                        <h3>主任医师</h3>
	                        <h3>重庆市第五人民医院重庆市第五人民医院</h3>
	                        <p title="病毒性肝炎，肝胆硬化"><span>擅长：</span>病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化，肝胆硬化病毒性肝炎，肝胆硬化，肝胆硬化病毒性肝炎，肝胆硬化，肝胆硬化病毒性肝炎，肝胆硬化，肝胆硬化病毒性肝炎，肝胆硬化</p>
	                        <ul>
	                            <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
	                            <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
	                            <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
	                        </ul>
	                    </div>
	                    <div class="doctorsC">
	                        <div class="docHead"><img src="images/firstNAV/doctor_head.png" alt="head"></div>
	                        <h3>金戈</h3>
	                        <h3>内科</h3>
	                        <h3>主任医师</h3>
	                        <h3>重庆市第五人民医院重庆市第五人民医院</h3>
	                        <p title="病毒性肝炎，肝胆硬化"><span>擅长：</span>病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化病毒性肝炎，肝胆硬化</p>
	                        <ul>
	                            <li><img src="images/firstNAV/consult_icon.png" alt="con">图文</li>
	                            <li><img src="images/firstNAV/call_icon.png" alt="con">电话</li>
	                            <li><img src="images/firstNAV/video_icon.png" alt="con">视频</li>
	                        </ul>
	                    </div>
	                    <!--分页-->
	                    <div id="page8"></div>
	                </div>
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
	                        <li><a href="javascript:void (0);">医疗巨头进军基层 国内市场竞争加剧</a><span class="times">4小时前</span></li>
	                        <li><a href="javascript:void (0);">我国上市药品多为仿制药SFDA将淘汰不达标药品</a><span class="times">4小时前</span></li>
	                        <li><a href="javascript:void (0);">我国上市药品多为仿制药SFDA将淘汰不达标药品</a><span class="times">4小时前</span></li>
	                        <li><a href="javascript:void (0);">我国上市药品多为仿制药SFDA将淘汰不达标药品</a><span class="times">4小时前</span></li>
	                        <li><a href="javascript:void (0);">我国上市药品多为仿制药SFDA将淘汰不达标药品</a><span class="times">4小时前</span></li>
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
   		$('.doctorsC p').dotdotdot();
//      <!--开启分页-->
   	    laypage({
   	        cont:$('#page8'), //容器。值支持id名、原生dom对象，jquery对象,
   	        pages:7, //总页数
   	        groups:0, //连续分数数0
   	        prev:false, //不显示上一页
   	        next:'查看更多',
   	        skin:'flow', //设置信息流模式的样式
   	        jump:function (obj) {
   	            if (obj.curr === 6) {
   	                this.next = '没有更多了';
   	            }
   	        }
   	    });
   	    
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
    </script>
</html>