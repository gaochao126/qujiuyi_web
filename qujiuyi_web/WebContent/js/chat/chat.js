/**
 * 
 */
Easemob.im.config = {
	xmppURL : 'wss://im-api.easemob.com/ws/',
	apiURL : '',
	appkey : "cqqijiuyi#qujiuyi",
	https : true
}

var conn = null;
$(function() {
	conn = new Easemob.im.Connection();
})
var chat = {
	registMsgCallback : function(callback) {
		conn.init({
			onOpened : function() {
				conn.setPresence();
			},
			onTextMessage : function(message) {
				callback(message);
			},
			onError : function(e) {
				console.log(e.msg);
			}
		});
	},
	openConn : function(username, password) {
		conn.open({
			user : username,
			pwd : password,
			appKey : Easemob.im.config.appkey
		});
	}
}


/**
 * 聊天操作JS
 */

//创建聊天界面，设置接受者，发送者，服务ID
var doctorHead = "";
$("body").on("click", ".serviceLi", function(){
    var serviceId = $(this).find("input[name='serviceId']").val();
    if ($("#chatForm input[name='params.serviceId']").val() == serviceId) {
        return;
    } else {
        $("#chatForm input[name='params.serviceId']").val(serviceId);
    }
	var patientId = $(this).find("input[name='patientId']").val();
	var doctorId = $(this).find("input[name='doctorId']").val();
	$("#chatForm input[name='params.receiver']").val(doctorId);
	var doctorName = $(this).find("input[name='doctorName']").val();
	var doctorTitleName = $(this).find("input[name='doctorTitleName']").val();
	var departmentName = $(this).find("input[name='departmentName']").val();
	var hospitalName = $(this).find("input[name='hospitalName']").val();
	doctorHead = $(this).find("input[name='doctorHead']").val();
	if (doctorId != '') {
    	$("#charDiv").find("#doctorHead").attr("src", doctorHead);
    	$("#charDiv").find("#doctorName").html(doctorName);
    	$("#charDiv").find("#doctorTitleName").html(doctorTitleName);
    	$("#charDiv").find("#departmentName").html(departmentName);
    	$("#charDiv").find("#hospitalName").html(hospitalName);
    	$("#charDiv").removeClass("none");
    	$.ajax({
            type : "get",
            url : "consult_chatList.html",
            data: {
                      "params.userType"    :  "2",
                      "params.targetType"  :  "1",
                      "params.serviceType" :  "1",
                      "params.userId"      :  patientId,
                      "params.targetId"    :  doctorId,
                      "params.serviceId"   :  serviceId
                  },
            dataType : "text",
            success : function(data) {
                $("#DP_chatContent #mCSB_2_container").html(data);
                $("#serch_more_btn").attr("href", "javascript:serchMoreMsg('" + patientId + "','" + doctorId + "','" + serviceId + "','" + doctorHead + "')");
                $(".docLinerHead img").attr("src", doctorHead);
                var h1 = $("#DP_chatContent").height();
                var h2 = $("#DP_chatContent #mCSB_2_container").height();
                $("#DP_chatContent #mCSB_2_container").css("top", h1 - h2 + "px");
                $("#mCSB_2_dragger_vertical").css("top", parseInt(h1 - (h1 / h2 * h1 + 12)) + "px");
                setFocus.call($("#textArea")[0]);
            }
        });
	} else {
        alert("该消息还没有医生受理，请耐心等待！");
    }
});

// 接收消息
function callback(data) {
    var cmd = jQuery.parseJSON(data.ext.em_apns_ext).cmd;
    if (cmd == "pushMessage") { // 聊天
        var chatType = jQuery.parseJSON(data.ext.em_apns_ext).chatType;
        var serviceId = jQuery.parseJSON(data.ext.em_apns_ext).serviceId;
        var chatContent = jQuery.parseJSON(data.ext.em_apns_ext).chatContent;
        if (chatType == 1) {// 文本消息
            var html = '<div class="linerCon"><i class="docLinerHead"><img width="40px" height="40px" src="' + doctorHead + '"/></i><p class="docLiner">' + chatContent +  '</p></div>';
            $("#DP_chatContent #mCSB_2_container").append(html);
            var h1 = $("#DP_chatContent").height();
            var h2 = $("#DP_chatContent #mCSB_2_container").height();
            $("#DP_chatContent #mCSB_2_container").css("top", h1 - h2 + "px");
            $("#mCSB_2_dragger_vertical").css("top", parseInt(h1 - (h1 / h2 * h1 + 12)) + "px");
        } else if (chatType == 2) {// 图片消息
            var html = '<div class="linerCon"><i class="docLinerHead"><img width="40px" height="40px" src="' + doctorHead + '"/></i><p class="docLiner">' + '<img src="' + $("#chat_img").val() + chatContent + '"/>' +  '</p></div>';
            $("#DP_chatContent #mCSB_2_container").append(html);
            var h1 = $("#DP_chatContent").height();
            var h2 = $("#DP_chatContent #mCSB_2_container").height();
            $("#DP_chatContent #mCSB_2_container").css("top", h1 - h2 + "px");
            $("#mCSB_2_dragger_vertical").css("top", parseInt(h1 - (h1 / h2 * h1 + 12)) + "px");
        }
    } else if (cmd == "consultResponse") { //医生接诊通知
        var serviceId = jQuery.parseJSON(data.ext.em_apns_ext).serviceId;
        var acceptStatus = jQuery.parseJSON(data.ext.em_apns_ext).acceptStatus;
        var doctorId = jQuery.parseJSON(data.ext.em_apns_ext).sender;
        if (acceptStatus == 1) {
            $.ajax({
                type : "post",
                url : "consult_chatConsultListItem.html",
                dataType : "text",
                success : function(data) {
                    $(".hisList").html(data);
                }
            });
        }
    }
}

//绑定回车
$("body").on("keydown", "#textArea", function(e){
	if (e.keyCode == "13") {
	    sendChat(1, $("#textArea").val().replace("\r", "").replace("\n", ""));
    }
});
$("body").on("keyup", "#textArea", function(e){
    if (e.keyCode == "13") {
        $("#textArea").val('');
    }
});

//聊天发送按钮
$("body").on("click", ".enterBtn", function(){
    sendChat(1, $("#textArea").val());
});

// 发送聊天
function sendChat(type, msg) {
    $("#textArea").val('');
    setFocus.call($("#textArea")[0]);
	var userHead = $("#headPortrait").val();
    if (msg == '') {
        return;
    }
    var html = '';
    if (type == 1) {
        html = '<div class="linerCon"><i class="patLinerHead"><img src="' + userHead + '" alt="head"></i><p class="userLiner">' + msg +  '</p></div>';
    } else {
        html = '<div class="linerCon"><i class="patLinerHead"><img src="' + userHead + '" alt="head"></i><p class="userLiner">' + '<img src="' + $("#chat_img").val() + msg + '"/>' +  '</p></div>';
    }
    $("#DP_chatContent #mCSB_2_container").append(html);
    var h1 = $("#DP_chatContent").height();
    var h2 = $("#DP_chatContent #mCSB_2_container").height();
    $("#DP_chatContent #mCSB_2_container").css("top", h1 - h2 + "px");
    $("#mCSB_2_dragger_vertical").css("top", parseInt(h1 - (h1 / h2 * h1 + 12)) + "px");
    $("#chatForm input[name='params.chatType']").val(type);
    $("#chatForm input[name='params.chatContent']").val(msg);
    $.ajax({
        type : "post",
        url : "consult_sendChat.html",
        data : $("#chatForm").serialize(),
        dataType : "json",
        success : function(data) {
            if (data.resultCode != 0) {
                alert(data.resultDesc);
            }
        }
    });
}

// 查询更多消息
function serchMoreMsg(patientId, doctorId, serviceId, doctorHead){
    var chatId = $("#charDiv").find(".linerCon").first().find("input[name='id']").val();
    $.ajax({
        type : "get",
        url : "consult_chatList.html",
        data: {
                  "params.userType"    :  "2",
                  "params.targetType"  :  "1",
                  "params.serviceType" :  "1",
                  "params.userId"      :  patientId,
                  "params.targetId"    :  doctorId,
                  "params.serviceId"   :  serviceId,
                  "params.selectType"  :  "1",
                  "params.chatId"      :  chatId
              },
        dataType : "text",
        success : function(data) {
            $("#serch_more_btn").remove();
            $("#DP_chatContent #mCSB_2_container").prepend(data);
            $("#serch_more_btn").attr("href", "javascript:serchMoreMsg('" + patientId + "','" + doctorId + "','" + serviceId + "','" + doctorHead + "')");
            $(".docLinerHead img").attr("src", doctorHead);
        }
    });
}