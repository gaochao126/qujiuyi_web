<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医确认预约">
        <meta name="keywords" content="791，去就医，确认预约">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-确认预约</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/appointItem.css">
        <style type="text/css">
                /*自定义layer类*/
            body .demo-class .layui-layer-title {
                background: #c00;
                color: #fff;
                border: none;
            }
    
            body .demo-class .layui-layer-btn {
                border-top: 1px solid #E9E7E7
            }
    
            body .demo-class .layui-layer-btn a {
                background: #333;
            }
    
            body .demo-class .layui-layer-btn .layui-layer-btn1 {
                background: #000;
            }
    
            body .demo-class {
                border: 6px solid #72b3ff;
                border: 6px solid #72b3ff;
                border-radius: 5px;
                box-shadow: none
            }
        </style>
    </head>
    <body>
    <div class="main">
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
    
        <!--content-->
        <div class="content">
            <!--已选择的医生-->
            <div class="conTit"><span>已选择的医生</span></div>
            <ul class="docHeadUl">
                <li class="docHead">
                    <img src='<s:property value="params.doctorHead"/>'>
                    <span class="headBg"></span>
                </li>
                <li class="docMes">
                    <h1><s:property value="params.doctorName"/><label class="docClass"><s:property value="params.doctorTitleName"/></label></h1>
                    <span><s:property value="params.hospitalName"/></span>
                    <span><s:property value="params.departmentName"/></span>
                    <span>擅长：<s:property value="params.doctorSkill"/></span>
                </li>
                <li class="appointMes">
                    <span>接诊时间：<strong><s:property value="params.registerDate"/></strong></span>
                    <span>挂号费用：<strong><s:property value="params.registerPrice"/></strong>元</span>
                </li>
            </ul>
    
            <!--填写预约信息-->
            <div class="conTit"><span>请填写预约信息</span></div>
            <div class="userList">
                <div class="userListTit"><span>常用就诊人</span>
                    <button type="button" class="addBtn">[ 添加 ]</button>
                </div>
                <!--常用就诊人列表-->
                <jsp:include page="/pages/register/choosePatientItem.jsp" flush="true"/>
                <!--提交-->
                <div class="subMod">
                    <button type="button" class="subBtn" onclick="window.location.href='register_paySuccess.html';">提交预约单</button>
                    <span><input type="checkbox" checked>同意 <a href="javascript: void(0);" onclick="protocolMod();">《791去就医用户协议》</a></span>
                </div>
            </div>
        </div>
        
        <!-- 隐藏块-->
        <div id="cache_div" style="display: none;">
            <div class="addMod"><span class="tipsBtn">提示</span>
                <form onsubmit="javascript:return false;">
                    <div class="addCont"><i>为了您的正确就诊，您所填就诊人信息必须真实有效，且预约挂号、配药服务均为实名制服务。</i>
                        <input type="hidden" name="params.birthday"/> 
                        <input type="hidden" name="params.id" value="-1"/> 
                        <input type="hidden" name="params.isDefault" value="0"/> 
                        <input type="hidden" name="params.certificateType" value="2"/> 
                        <span class="titSp">
                        <em>*</em>真实姓名</span>
                        <input type="text" name="params.name" value="">
                        <span class="tips"></span>
                        <span class="titSp">
                            <em>*</em>性别</span>
                            <input type="radio" name="params.gender" checked="checked" value="1">男
                            <input type="radio" name="params.gender" value="2">女<span class="tips">
                        </span>
                        <span class="titSp"><em>*</em>身份证号</span><input type="text" name="params.certificateNumber">
                        <span class="tips"></span>
                        <span class="titSp"><em>*</em>手机号</span><input type="tel" name="params.phone">
                        <span class="tips" id="hint_span"></span>
                        <span class="tips" style="padding-left: 120px;font-size: 16px;color: #4a90e2;"><input type="checkbox">设置为常用就诊人</span>
                    </div>
                    <button type="button" class="saveBtn">保存</button>
                </form>
            </div>
        </div>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <script type="text/javascript" src="js/tools.js"></script>
    <script type="text/javascript">
     	// 给table添加属性 
    	$("table").attr("border", "0");
    
        <!--新增就诊人-->
        $(".addBtn").live('click', function () {
            layer.open({
                type:1,
                title:false,
                area:'505px',
                closeBtn:true,
                shadeClose:true,
                skin:'demo-class',
                content:$("#cache_div").html()
            });
            $(".saveBtn").click(function(){
                if ($(".layui-layer-content").find("input[name='params.name']").val() == '') {
                    $(".layui-layer-content #hint_span").html("姓名必须填写");
                    return;
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val() == '') {
                    $(".layui-layer-content #hint_span").html("身份证号码必须填写");
                    return;
                }
                if (!$(".layui-layer-content").find("input[name='params.certificateNumber']").val().match(/^[1-9]\d{5}((1[0-9]{3})|(200[0-9])|(201[0-5]))(0\d|1[0-2])(([0|1|2]\d)|(3[0_1]))\d{3}([0-9]|[X])$/) && !$(".layui-layer-content").find("input[name='params.certificateNumber']").val().match(/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/)) {
                    $(".layui-layer-content #hint_span").html("无效身份证");
                    return;
                }
                if ($(".layui-layer-content").find("input[name='params.phone']").val() == '') {
                    $(".layui-layer-content #hint_span").html("手机号码必须填写");
                    return;
                }
                if (!$(".layui-layer-content").find("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
                    $(".layui-layer-content #hint_span").html("无效手机号");
        	        return;
        	    }
                if ($(".layui-layer-content").find("input[type='checkbox']").attr("checked") == "checked") {
                    $(".layui-layer-content").find("input[name='params.isDefault']").val("1");
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val().length == 18) {
                    var certificateNumber = $(".layui-layer-content").find("input[name='params.certificateNumber']").val();
                    var birthday = certificateNumber.substring(6, 10) + "-" + certificateNumber.substring(10, 12) + "-" + certificateNumber.substring(12, 14) + " 00:00:00";
                    $(".layui-layer-content").find("input[name='params.birthday']").val(birthday);
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val().length == 15) {
                    var certificateNumber = $(".layui-layer-content").find("input[name='params.certificateNumber']").val();
                    var birthday = "19" + certificateNumber.substring(6, 8) + "-" + certificateNumber.substring(9, 10) + "-" + certificateNumber.substring(10, 12) + " 00:00:00";
                    $(".layui-layer-content").find("input[name='params.birthday']").val(birthday);
                }
                $.ajax({
        			type : "POST",
        			url : "register_addRelative.html",
        			data : $(".layui-layer-content form").serialize(),
        			dataType : "json",
        			success : function(data) {
        			    if (data.resultCode != 0) {
        			        $(".layui-layer-content #hint_span").html(data.resultDesc);
        			    } else {
        			        window.location.href = "register_choosePatient.html";
        			    }
        			}
                });
            });
        });

        <!--修改就诊人-->
        $(".updateBtn").click(function () {
            layer.open({
                type:1,
                title:false,
                area:'505px',
                closeBtn:true,
                shadeClose:true,
                skin:'demo-class',
                content:$("#cache_div").html()
            });
            $(".layui-layer-content").find("input[name='params.id']").val($(this).parent().find("input[name='id']").val());
            $(".layui-layer-content").find("input[name='params.phone']").val($(this).parent().find("input[name='phone']").val());
            $(".layui-layer-content").find("input[name='params.name']").val($(this).parent().find("input[name='name']").val());
            $(".layui-layer-content").find("input[name='params.birthday']").val($(this).parent().find("input[name='birthday']").val());
            $(".layui-layer-content").find("input[name='params.certificateNumber']").val($(this).parent().find("input[name='certificateNumber']").val());
            if ($(this).parent().find("input[name='gender']").val() == 2) {
                $($(".layui-layer-content").find("input[name='params.gender']")[1]).click();
            }
            if ($(this).parent().find("input[name='isDefault']").val() == 1) {
                $(".layui-layer-content").find("input[type='checkbox']").click();
            }
            $(".saveBtn").click(function(){
                if ($(".layui-layer-content").find("input[name='params.name']").val() == '') {
                    $(".layui-layer-content #hint_span").html("姓名必须填写");
                    return;
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val() == '') {
                    $(".layui-layer-content #hint_span").html("身份证号码必须填写");
                    return;
                }
                if (!$(".layui-layer-content").find("input[name='params.certificateNumber']").val().match(/^[1-9]\d{5}((1[0-9]{3})|(200[0-9])|(201[0-5]))(0\d|1[0-2])(([0|1|2]\d)|(3[0_1]))\d{3}([0-9]|[X])$/) && !$(".layui-layer-content").find("input[name='params.certificateNumber']").val().match(/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/)) {
                    $(".layui-layer-content #hint_span").html("无效身份证");
                    return;
                }
                if ($(".layui-layer-content").find("input[name='params.phone']").val() == '') {
                    $(".layui-layer-content #hint_span").html("手机号码必须填写");
                    return;
                }
                if (!$(".layui-layer-content").find("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
                    $(".layui-layer-content #hint_span").html("无效手机号");
        	        return;
        	    }
                if ($(".layui-layer-content").find("input[type='checkbox']").attr("checked") == "checked") {
                    $(".layui-layer-content").find("input[name='params.isDefault']").val("1");
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val().length == 18) {
                    var certificateNumber = $(".layui-layer-content").find("input[name='params.certificateNumber']").val();
                    var birthday = certificateNumber.substring(6, 10) + "-" + certificateNumber.substring(10, 12) + "-" + certificateNumber.substring(12, 14) + " 00:00:00";
                    $(".layui-layer-content").find("input[name='params.birthday']").val(birthday);
                }
                if ($(".layui-layer-content").find("input[name='params.certificateNumber']").val().length == 15) {
                    var certificateNumber = $(".layui-layer-content").find("input[name='params.certificateNumber']").val();
                    var birthday = "19" + certificateNumber.substring(6, 8) + "-" + certificateNumber.substring(9, 10) + "-" + certificateNumber.substring(10, 12) + " 00:00:00";
                    $(".layui-layer-content").find("input[name='params.birthday']").val(birthday);
                }
                $.ajax({
        			type : "POST",
        			url : "register_modRelative.html",
        			data : $(".layui-layer-content form").serialize(),
        			dataType : "json",
        			success : function(data) {
        			    if (data.resultCode != 0) {
        			        $(".layui-layer-content #hint_span").html(data.resultDesc);
        			    } else {
        			        window.location.href = "register_choosePatient.html";
        			    }
        			}
                });
            });
        });

        <!--删除就诊人-->
        $('.delBtn').live('click', function () {
            var _this = $(this);
            layer.confirm('确认删除？', {
                title:false,
                closeBtn:false,
                btn:['确定', '取消'] //按钮
            }, function () {
                $.ajax({
        			type : "POST",
        			url : "register_delRelative.html",
        			data : {"params.id" : _this.parent().find("input[name='id']").val()},
        			dataType : "json",
        			success : function(data) {
        			    if (data.resultCode != 0) {
        			        $(".layui-layer-content #hint_span").html(data.resultDesc);
        			    } else {
        			        window.location.href = "register_choosePatient.html";
        			    }
        			}
                });
            }, function () {
                
            });
        });
            
        <!--791用户协议-->
        function protocolMod() {
            layer.open({
                type:1,
                title:false,
                shadeClose:true,
                skin:'layui-layer-rim', //加上边框
                area:['420px', '240px'], //宽高
                content:'791去就医用户协议'
            });
        }
    </script>
</html>