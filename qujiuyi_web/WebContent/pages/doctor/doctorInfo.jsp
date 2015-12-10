<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医医生详情介绍">
        <meta name="keywords" content="791，去就医，医生详情">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-医生详情</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/doctorInfo.css">
        <style type="text/css">
            .opened {
                height: auto;
            }
    
            .toggle .close, .opened  .toggle .open {
                display: none;
                /*border: 1px solid #000;*/
                /*width: 100px;*/
                /*height: 30px;*/
                position: relative;
            }
    
            .toggle .opened, .opened .toggle .close {
                display: inline;
                /*border: 1px solid red;*/
                /*width: 100px;*/
                /*height: 30px;*/
                position: relative;
            }
            .open ,.close{
                color: #4a90e2;
            }
        </style>
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>

        <!--content-->
        <div class="content" style="margin-top: 20px;">
            <div class="con_div">
                <div class="con_top docHead">
                    <img src='<s:property value="dataObj.head"/>'>
                    <span class="headBg"></span>
                </div>
                <div class="con_top docMes">
                    <h1><s:property value="dataObj.name"/><label class="docClass"><s:property value="dataObj.titleName"/></label></h1>
                    <span><s:property value="dataObj.hospitalName"/></span>
                    <span><s:property value="dataObj.departmentName"/></span>
                    <span title='<s:property value="dataObj.skill"/>'>擅长：<s:property value="dataObj.skill"/></span>
                </div>
                <!--收藏-->
                <button type="button" class="collectBtn collect0">收藏</button>
                <!--执业经历-->
                <div class="experienceMod">
                    <span>执业经历：</span>
                    <p><s:property value="dataObj.experience"/></p>
                </div>
                <!--预约挂号-->
                <div class="con_bot">
                    <!--title-->
                    <div class="con_bot_tit"><span>预约挂号</span></div>
                    <ul class="dayUl" id="week_btn">
                        <li class="dayUlAc">本周</li>
                        <li>未来一周</li>
                        <li>未来两周</li>
                    </ul>
                    <div id="registerPlanList" style="display: none;">
                        <s:iterator value="registerPlan_1">
                            <i>
                                <input type="hidden" name="id" value='<s:property value="id"/>'/>
                                <input type="hidden" name="registerDate" value='<s:date name="registerDate" format="MM-dd"/>'/>
                                <input type="hidden" name="_registerDate" value='<s:date name="registerDate" format="yyyy-MM-dd"/>'/>
                                <input type="hidden" name="registerCount" value='<s:property value="registerCount"/>'/>
                                <input type="hidden" name="timeZone" value='<s:property value="timeZone"/>'/>
                                <input type="hidden" name="price" value='<s:property value="price"/>'/>
                            </i>
                        </s:iterator>
                        <s:iterator value="registerPlan_2">
                            <i>
                                <input type="hidden" name="id" value='<s:property value="id"/>'/>
                                <input type="hidden" name="registerDate" value='<s:date name="registerDate" format="MM-dd"/>'/>
                                <input type="hidden" name="_registerDate" value='<s:date name="registerDate" format="yyyy-MM-dd"/>'/>
                                <input type="hidden" name="registerCount" value='<s:property value="registerCount"/>'/>
                                <input type="hidden" name="timeZone" value='<s:property value="timeZone"/>'/>
                                <input type="hidden" name="price" value='<s:property value="price"/>'/>
                            </i>
                        </s:iterator>
                        <s:iterator value="registerPlan_3">
                            <i>
                                <input type="hidden" name="id" value='<s:property value="id"/>'/>
                                <input type="hidden" name="registerDate" value='<s:date name="registerDate" format="MM-dd"/>'/>
                                <input type="hidden" name="_registerDate" value='<s:date name="registerDate" format="yyyy-MM-dd"/>'/>
                                <input type="hidden" name="registerCount" value='<s:property value="registerCount"/>'/>
                                <input type="hidden" name="timeZone" value='<s:property value="timeZone"/>'/>
                                <input type="hidden" name="price" value='<s:property value="price"/>'/>
                            </i>
                        </s:iterator>
                    </div>
                    <!--排班表-->
                    <jsp:include page="/pages/doctor/registerPlan_1.jsp" flush="true"/>
                    <jsp:include page="/pages/doctor/registerPlan_2.jsp" flush="true"/>
                    <jsp:include page="/pages/doctor/registerPlan_3.jsp" flush="true"/>
                </div>

                <!--医生评价-->
                <div class="con_bot">
                    <!--title-->
                    <div class="con_bot_tit">
                        <span>医生评价</span>
                        <ul class="satisfactionMod">
                            <li class="satAc">全部(0)</li>
                            <li>非常满意(0)</li>
                            <li>满意(0)</li>
                            <li>一般(0)</li>
                        </ul>
                    </div>
                    <!--评价列表-->
                    <div class="reviewMod">
                        <div class="reviewList">
                            <div class="reviewListTit">
                                <span class="revDate">2015-11-05</span>
                                <span class="revName">天天喝</span>
                                <span class="revMale">女</span>
                                <span class="revAge">26岁</span>
                            </div>
                            <div class="revCon">
                                <i class="goodRev"></i><!--非常满意-->
                                <div class="revConP">医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。医生解答问题十分仔细，而且态度也很好，根据医生的解答，一些问题也得到了及时有效的解决，十分感谢医生的热忱帮助。</div>
                            </div>
                        </div>
                        <div class="reviewList">
                            <div class="reviewNo">
                                <p>暂无评价，您可以在预约挂号并成功就诊后分享你的点评！</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
        
        <form id="choosePatient" method="post" action="register_choosePatient.html">
            <input type="hidden" name="params.doctorName" value='<s:property value="dataObj.name"/>'/>
            <input type="hidden" name="params.doctorHead" value='<s:property value="dataObj.head"/>'/>
            <input type="hidden" name="params.doctorTitleName" value='<s:property value="dataObj.titleName"/>'/>
            <input type="hidden" name="params.hospitalName" value='<s:property value="dataObj.hospitalName"/>'/>
            <input type="hidden" name="params.departmentName" value='<s:property value="dataObj.departmentName"/>'/>
            <input type="hidden" name="params.doctorSkill" value='<s:property value="dataObj.skill"/>'/>
            <input type="hidden" name="params.registerPlanId"/>
            <input type="hidden" name="params.registerDate"/>
            <input type="hidden" name="params.registerPrice"/>
        </form>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/tools.js"></script>
    <script type="text/javascript">
    	// 给table添加属性 
		$("table").attr("border", "0");
    	
    	// 排班计划tab页切换事件
    	$("#week_btn li").click(function(){
    	    if ($(this).hasClass("dayUlAc")) {
    	        return;
    	    }
    	    
    	    $("#week_btn li").removeClass("dayUlAc");
    	    $(this).addClass("dayUlAc");
    	    
    	    for (var i = 0; i < $("#week_btn li").length; i++) {
    	        if ($($("#week_btn li")[i]).hasClass("dayUlAc")) {
    	            $(".docRoster").hide();
    	            $($(".docRoster")[i]).show();
    	        }
    	    }
    	});
    	
    	// 初始排班计划数据
    	$("#registerPlanList i").each(function(){
    	    var id = $(this).find("input[name='id']").val();
    	    var registerDate = $(this).find("input[name='registerDate']").val();
    	    var _registerDate = $(this).find("input[name='registerDate']").val();
    	    var registerCount = $(this).find("input[name='registerCount']").val();
    	    var timeZone = $(this).find("input[name='timeZone']").val();
    	    var price = $(this).find("input[name='price']").val();
    	    var weekArray = ["星期一", "星期二", "星期三","星期四","星期五", "星期六", "星期日"];
            var timeZoneArray = ["上午", "下午", "晚上"];
    	    $("table").each(function(){
    	        var _this = $(this);
    	        var dateDays = _this.find("thead").find(".dateDay");
    	        for (var i = 0; i< dateDays.length; i++) {
    	            if ($(dateDays[i]).html() == registerDate) {
    	                var _tr = $(_this.find("tr")[parseInt(timeZone) + 1]);
    	                var _th = $(_tr.find("th")[i + 1]);
    	                var html = "";
    	                html += '<input type="hidden" name="id" value="' + id + '">';
    	                html += '<input type="hidden" name="registerDate" value="' + _registerDate + '(' + weekArray[i] + ')' + timeZoneArray[timeZone] + '">';
    	                html += '<input type="hidden" name="price" value="' + parseFloat(price).toFixed(2) + '">';
    	                html += '<button type="button" class="appointYes"><span class="appYesOrNo">可预约</span><span class="appointNum">' + registerCount + '</span></button>';
    	                _th.html(html);
    	            }
    	        }
    	    });
    	});
    	
    	$(".appointYes").click(function(){
            $("#choosePatient").find("input[name='params.registerPlanId']").val($(this).parent().find("input[name='id']").val());
            $("#choosePatient").find("input[name='params.registerDate']").val($(this).parent().find("input[name='registerDate']").val());
            $("#choosePatient").find("input[name='params.registerPrice']").val($(this).parent().find("input[name='price']").val());
    	    $("#choosePatient").submit();
    	});
    </script>
</html>