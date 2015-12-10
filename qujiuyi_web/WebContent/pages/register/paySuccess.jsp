<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医预约成功">
        <meta name="keywords" content="791去就医，去就医确认预约">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-预约成功</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/appointItem.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
    
        <!--content-->
        <div class="content">
            <div class="conTit"><span>已选择的医生</span></div>
            <div class="appointCon">
                <div class="appointLeft">
                    <h1>恭喜您，您已预约成功！</h1>
    
                    <p>请就诊人在就诊日期凭本人身份证原件（儿童请携带户口本原件）到医院现场取号</p>
    
                    <p>您可以查看<a href="javascript: void (0);">我的预约</a></p>
                </div>
                <div class="appointCode">
                	<p style="margin:0px 70px 0px 88px; position: absolute;bottom: 0px;font-size: 16px; text-align: center;">扫描二维码关注791公众号</p>
                </div>
            </div>
    
            <!--订单信息-->
            <div class="conTit"><span>订单信息</span> <span class="orderNo">订单编号：<em class="orderNum">252909</em></span></div>
            <div class="orderMes">
                <ul class="orderMesList">
                    <li><i>就诊医院：</i><span class="orderCon"><a href="javascript: void (0);">重庆市第五人民医院</a></span></li>
                    <li><i>就诊时间：</i><span class="orderCon"><span class="colorSpan">2015-09-21（星期一）上午</span></span></li>
                    <li><i>就诊科室：</i><span class="orderCon">儿科（小儿呼吸科）</span></li>
                    <li><i>就诊费用：</i><span class="orderCon"><span class="colorSpan">23.00</span>元</span></li>
                    <li><i>就诊医生：</i><span class="orderCon"><a href="javascript: void (0);">曾小贤</a></span></li>
                    <li><i>就诊人：</i><span class="orderCon">吕子乔</span></li>
                    <li><i>医生职称：</i><span class="orderCon">专家号</span></li>
                    <li><i>下单时间：</i><span class="orderCon">2015-09-16 15:22:16</span></li>
                </ul>
            </div>
        </div>
    
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
</html>