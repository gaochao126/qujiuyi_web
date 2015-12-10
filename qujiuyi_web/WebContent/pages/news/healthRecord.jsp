<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="utf-8">
    <title>791去就医-健康档案</title>
    <meta name="description" content="791去就医预约挂号官网。">
    <meta name="keywords" content="791，去就医，医疗动态">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <link href="images/791.ico" rel="Shortcut Icon">
    <link rel="stylesheet" href="css/tool.css">
    <link rel="stylesheet" href="css/medicalNews.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <style type="text/css">
        .healthCon{width: 1200px;height: auto;overflow: hidden;margin-top: 25px;margin-bottom: 30px;}
        .heaLef{width: 355px;height: auto;overflow: hidden;float: left;background: #fff;}
        .heaRig{width: 820px;height: auto;float: right;background: #fff;}
        .leftTit{width: 100%;height: 45px;line-height: 45px;background: #2cbade;text-align: center;font-size: 20px;color: #fff;}
        .blueHeath{margin: 20px;margin-bottom: 0;padding: 20px;width: 275px;height: auto;overflow: hidden;background: #daf8ff;}
        .blueHeath p{color: #10add4;font-size: 18px;line-height: 28px;}
        .personMod{padding: 20px;width: 315px;height: auto;}
        .personMod h1{font-size: 18px;color: #333;line-height: 30px;}
        .personMod p{color: #333;font-size: 20px;line-height: 28px;}
        .titleTip{width: 275px;height: 44px;line-height: 44px;margin-bottom: 24px;background: #2bbbdd;color: #fff;padding-left: 25px;float: left;font-size: 18px;}
        .logoMod{background: url("images/medical/top_img.jpg") no-repeat;width: 750px;height: 169px;overflow: hidden;}
        .loginMod{width: 100%;height: auto;overflow: hidden;margin-top: 50px;text-align: center;}
        .inputMod{width: 340px;height: 70px;text-align: center;}
        .inputMod input{width: 310px;height: 40px;line-height: 40px;padding-left: 30px;border: 1px solid #6e89a7;outline: none;border-radius: 3px;}
        .userPhone{background: url("images/medical/phone2.png") no-repeat 5px;}
        .pwdPhone{background: url("images/medical/lock.png") no-repeat 5px;}
        .inpTips{display: block;width: 100%;height: 30px;line-height: 30px;color: #5e6d8e;clear: both;}
        .codeInp{width: 200px !important;float: left;padding-left: 10px !important;}
        .inputMod a{display: block;width: 120px;height: 40px;float: right;border: 1px solid #6b88aa;border-radius: 3px;overflow: hidden;}
        .inputMod a img{width: 120px;height: 40px;}
        .loginBtn{width: 340px;height: 50px;font-size:20px;line-height: 50px;background: #4990e2;color: #fff;border: none;outline: none;cursor: pointer;margin-bottom: 80px;}
        .forMod{width: 340px;height: 70px;line-height: 30px;overflow: hidden;}
        .forMod input{width: 15px;height: 15px;border-radius: 3px;outline: none;float: left;margin-top:8px;margin-right: 5px;}
        .forPwd{display: block;width: 80px;height: auto;overflow: hidden;font-size: 12px;text-align: left;float: left;color: #4a4a4a;}
        .regMod{display: block;width: 200px;height: 30px;overflow: hidden;float: right;text-align: right;}
        .regMod a{color: #4a90e2;font-size: 12px;margin-left: 10px;}
    </style>
</head>
<body>
<div class="main">
    <!--top-->
    <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
    
    <!--导航栏-->
    <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>

    <!--content-->
    <div class="healthCon">
        <!--left-->
        <div class="heaLef">
            <div class="leftTit">个人健康档案</div>
            <div class="blueHeath"><p>个人健康档案是用来记录个人一生中生命体征的变化以及自身所从事过的与健康相关的一切行为与事件。它是一个动态连续且全面的记录过程，通过其中详细完整的健康记录，为每个人提供全方位的健康服务。它必须包含上述所有的相关内容，将作为今后一切医疗服务的依据。系统分为：个人基本信息、诊疗资料、保健资料。所有资料都按此分类方式。</p></div>
            <div class="personMod">
                <h1>个人基本信息</h1>
                <p>是个人健康档案系统的主索引，所有健康档案系统中的内部都可以通过这个主索引去查找。个人基本信息中除了记录姓名、性别等信息外，其他资料的信息也要在个人基本信息中记录，包括：出生情况、各次诊疗的概要、各次体验接种等保健概要。</p>
            </div>
            <div class="personMod">
                <h1>诊疗资料</h1>
                <p>是记录个人在医院中每次进行就诊后所产生的数据。诊疗资料分为门诊、急诊和住院三个部分分别存储，存储的诊疗资料的数据结构按照统一的标准进行保存，采用符合HL7 CDA标准格式的XML文件来保存诊疗资料，方便进行数据的交换。</p>
            </div>
            <div class="personMod">
                <h1>保健资料</h1>
                <p>保健资料中的数据种类最多，包括新生儿的预防接种信息、家族病史、预防免疫信息、个人健康体检、慢性疾病随访、出院康复等。保健资料的数据从出生后就开始记录，按照资料产生的时间顺序进行保存。</p>
            </div>
        </div>
        <!--right-->
        <div class="heaRig">
            <div class="titleTip">一个791账号，记录一生健康</div>
            <div class="logoMod"></div>
            <div class="loginMod">
                <div class="inputMod">
                    <input type="text" class="userPhone" placeholder="请输入手机号码" maxlength="11" onkeyup="checkPhoneNum();">
                    <span class="inpTips"></span>
                </div>
                <div class="inputMod">
                    <input type="password" class="pwdPhone" placeholder="请输入密码" maxlength="15" onkeyup="checkPwd();">
                    <span class="inpTips"></span>
                </div>
                <div class="inputMod">
                    <input type="text" class="codeInp" placeholder="验证码" maxlength="6" onkeyup="checkImgCode();">
                    <a href="javascript:void (0);"><img src="images/reg/code.jpg" alt=""></a>
                    <span class="inpTips"></span>
                </div>
                <div class="forMod">
                    <span class="forPwd"><input type="checkbox"> 记住密码</span>
                    <span class="regMod"><a href="javascript:void (0);">免费注册</a><a href="javascript:void (0);">忘记密码？</a></span>
                    <span class="inpTips"></span>
                </div>
                <button type="button" class="loginBtn" onclick="loginRec();">登&nbsp;&nbsp;录</button>
            </div>
        </div>
    </div>

    <!--footer-->
    <div class="footer" style="margin-top: 0;">
        <div class="con">
            <ul class="footerLis" style="width: 500px;">
                <li><h1>关于791</h1></li>
                <li>791（去就医）实现患者医疗的可及性</li>
            </ul>
            <ul class="footerLis" style="">
                <li><h1>联系我们</h1></li>
                <li>重庆总公司 重庆柒玖壹健康管理股份有限公司</li>
                <li>电话+86 23-62919872</li>
                <li>地址：重庆市南岸区金山支路10号</li>
                <li>邮编：400060</li>
                <li>电邮：info@51791.com</li>
            </ul>
            <ul class="footerLis" style="float: right;">
                <li><h1>加入我们</h1></li>
                <li>职位招聘</li>
                <li>平台合作</li>
            </ul>
        </div>
    </div>
    <!--底部-->
    <div class="bootCon">
        <div class="con">
            <img src="images/index/police.png" alt="网警备案">

            <p><span style="font-family: '宋体';font-size: 20px;font-weight: bold;">Copyright</span><span
                    style="color: #000;font-size: 16px;">&copy;重庆玖壹健康管理有限公司 渝ICP备14010607号</span>
                <span style="font-size: 16px;color: #bcbcbc;">互联网医疗保健信息服务审核同意书(审核申请中...)</span></p>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
//<!--手机号验证-->
    function checkPhoneNum(){
        var objVal = $('.userPhone');
        var tips = objVal.siblings('span');
        if(objVal.val()==""||objVal.val()==null||objVal.val()==undefined){
            tips.html('*手机号码不能为空！');
            return false;
        }else{
            if (/^[1][3587]\d{9}$/.test(objVal.val())) {
                tips.html("");
                return true;
            } else {
                tips.html("*用户名格式不对！");
                return false;
            }
        }
    }
//    <!--验证密码-->
    function checkPwd(){
        var objVal = $('.pwdPhone');
        var tips = objVal.siblings('span');
        if (objVal.val() == ""||objVal.val() == null||objVal.val() == undefined) {
            tips.html("*密码不能为空！");
            return false;
        } else {
            if (objVal.val().length < 16 && objVal.val().length >= 6) {
                tips.html("");
                return true;
            } else {
                tips.html("*请输入至少6位且不超过16位数的密码!");
                return false;
            }
        }
    }
//图形验证码
    function checkImgCode() {
        var objVal = $('.codeInp');
        var tips = objVal.siblings('span');
        if (objVal.val() == ""||objVal.val() == null||objVal.val() == undefined) {
            tips.html("*验证码不能为空！");
            return false;
        } else {
            tips.html("");
            return true;
        }
    }
//<!--检查所有-->
    function checkRecAll(){
        var flag = false;
        if(checkPhoneNum()){
            flag = true;
        }else{
            flag = false;
        }
        if(checkPwd()){
            flag = true;
        }else{
            flag = false;
        }
        if(checkImgCode()){
            flag = true;
        }else{
            flag = false;
        }
        if(checkPhoneNum()&&checkPwd()&&checkImgCode()){
            flag = true;
        }else{
            flag = false;
        }
        return flag;
    }
//    <!--登录按钮-->
    function loginRec(){
        if(checkRecAll()){
        }else{
            checkRecAll();
        }
    }
</script>
</html>