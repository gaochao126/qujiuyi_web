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
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
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
            <!--quesHistory-->
            <div class="quesHistory">
                <!--historyLeft-->
                <div class="historyLeft">
                    <h1>免费咨询</h1>
                    <div id="historyLeft">
                        <div class="hisList">
                        	<jsp:include page="/pages/consult/chatConsultListItem.jsp" flush="true"/>
                        </div>
                    </div>
                </div>
                <!--historyRight-->
                <div class="historyRight none" id="charDiv">
                   <!--top-->
    	           <div class="hisRogTop">
    	               <div class="doctorOk">
    	                   <!-- <div class="doctorOk" style="display: none;">  -->
    	                   <img id="doctorHead" src="">
    	                   <p><span id="doctorName" class="docNames"></span><span id="doctorTitleName"></span></p>
                           <p><span id="departmentName"></span><span id="hospitalName"></span></p>
    	                   <button type="button">评价</button>
    	               </div>
                    </div>
                    <div class="hisRogCon" id="DP_chatContent"></div>
                    <!--bot-->
                    <div class="hisRogBot" id="hisRogBot">
                        <button type="button" class="addBtn" onclick="$('#file').click();"></button><!-- 添加图片 -->
                        <form id="upload" method="post" enctype="multipart/form-data" style="display: none;"> 
                            <input id="file" type="file" name="file" style="display: none" onchange="uploadFile(8);"/>
                        </form>
                        <textarea id="textArea"></textarea>
                        <button type="button" class="enterBtn">发送</button>
                    </div>   
                </div>
            </div>
            <input type="hidden" id="chat_img" value='<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('chat.image.virtualUrl')"/>'/>
            <form id="chatForm">
                <input type="hidden" name="params.sender" value='<s:property value="#session.patient.id"/>'/>
                <input type="hidden" name="params.senderType" value='2'/>
                <input type="hidden" name="params.senderName" value='<s:property value="#session.patient.name"/>'/>
                <input type="hidden" name="params.senderHead" value='<s:property value="#session.patient.headPortrait"/>'/>
                <input type="hidden" name="params.receiver" value=''/>
                <input type="hidden" name="params.receiverType" value='1'/>
                <input type="hidden" name="params.chatType" value=''/>
                <input type="hidden" name="params.chatContent" value=''/>
                <input type="hidden" name="params.serviceType" value='1'/>
                <input type="hidden" name="params.serviceId" value=''/>
            </form>
        </div>
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/medical/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type='text/javascript' src='js/chat/strophe.js'></script>
	<script type='text/javascript' src='js/chat/json2.js'></script>
	<script type="text/javascript" src="js/chat/easemob.im-1.0.7.js"></script>
    <script type="text/javascript" src="js/medical/medical.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/DateUtil.js"></script>
    <script type="text/javascript" src="js/chat/chat.js"></script>
    <script type="text/javascript">
    	//美化滚动条
        $("#historyLeft").mCustomScrollbar({theme:"minimal"});
        $("#DP_chatContent").mCustomScrollbar({theme:"minimal"});
    
	  	//页面加载函数聊天
	    $(function(){
	    	var name = $("#md5Id").val();
	    	var pass = $("#md5Pass").val();
	    	chat.registMsgCallback(callback);
	    	chat.openConn(name,pass);
	    });
	    
	    // 上传回调
        function uploadCallBack(result) {
            sendChat(2, result.detail.list[0]);
        }
    </script>
</html>