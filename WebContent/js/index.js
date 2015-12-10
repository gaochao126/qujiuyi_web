// <!--超出多行显示-->
$('.forte').dotdotdot();
$(".contractList li").dotdotdot();

$("#moreAreaBtn").live("click", function () {
    $(".moreArea").slideToggle();
    $(this).toggleClass("moreAreaBtnBg2");
});
$(".doctorRec li").live('click',function(){
    $(this).addClass('docAc');
    $(this).siblings().removeClass('docAc');
});

//<!--切换健康之家-->
function changeBtn(obj){
	 $(obj).children().addClass('active');
     $(obj).siblings().find('a').removeClass('active');
}

//<!--banner轮播-->
Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });
Qfast(false, 'widgets', function () {
    K.tabs({
        id: 'fsD1',   //焦点图包裹id
        conId: "D1pic1",  //** 大图域包裹id
        tabId:"D1fBt",
        tabTn:"a",
        conCn: '.fcon', //** 大图域配置class
        auto: 1,   //自动播放 1或0
        effect: 'fade',   //效果配置
        eType: 'click', //** 鼠标事件
        pageBt:true,//是否有按钮切换页码
        bns: ['.prev', '.next'],//** 前后按钮配置class
        interval: 3000 //** 停顿时间
    });
});


$(".city_hospital_btn").click(function(){
    if ($(this).parent().hasClass("areaChose")) {
        $(this).css({'background':'#4890e5'});
        $(this).css({'color':'#fff'});
        $(this).siblings().css({'background':'#fff'});
        $(this).siblings().css({'color':'#333'});
    } else {
        
    }
    var _this = $(this);
    $.ajax({
        type : "POST",
        url : "index_getHospitalByCityId.html",
        dataType : "text",
        data : {
            "params.cityId" : _this.find("input[name='cityId']").val()
        },
        success : function(data) {
            $(".hospitalLis").html(data);
        }
    });
});

// 省份改变事件 
$("#provinceId").change(function(){
    var provinceId = $("#provinceId").val();
    $("#cityId").html('<option value="0">选择您想挂号的城市</option>');
    $("#hospitalId").html('<option value="0">选择您想挂号的医院</option>');
    $("#departmentId").html('<option value="0">选择您想挂号的科室</option>');
    if (provinceId == 0) {
        return;
    }
    $.ajax({
        type : "POST",
        url : "area_citySelect.html",
        dataType : "text",
        data : {
            "params.provinceId" : provinceId
        },
        success : function(data) {
            $("#cityId").html(data);
        }
    });
});

// 城市改变事件 
$("#cityId").change(function(){
    var provinceId = $("#provinceId").val();
    var cityId = $("#cityId").val();
    $("#hospitalId").html('<option value="0">选择您想挂号的医院</option>');
    $("#departmentId").html('<option value="0">选择您想挂号的科室</option>');
    if (cityId == 0) {
        return;
    }
    $.ajax({
        type : "POST",
        url : "hospital_hospitalSelect.html",
        dataType : "text",
        data : {
            "params.province" : provinceId,
            "params.city"     : cityId
        },
        success : function(data) {
            $("#hospitalId").html(data);
        }
    });
});

// 医院改变事件
$("#hospitalId").change(function(){
    var hospitalId = $("#hospitalId").val();
    $("#departmentId").html('<option value="0">选择您想挂号的科室</option>');
    if (hospitalId == 0) {
        return;
    }
    $.ajax({
        type : "POST",
        url : "department_departmentSelect.html",
        dataType : "text",
        data : {
            "params.hospitalId"    : hospitalId,
            "params.queryType"     : 1
        },
        success : function(data) {
            $("#departmentId").html(data);
        }
    });
});

// 验证码点击刷新事件 
$("#imgCode img").click(function(){
    var _this = $(this);
    _this.attr("src", "patient_verifyCode.html?params.width=70&params.height=35&params.left=2&params.top=24&params.size=24&version=" + Date.parse(new Date()) + Math.random());
});

// 登录点击事件 
$("#loginBtn").click(function(){
    if ($("input[name='params.phone']").val() == '') {
        $("#userNameError").html("<b>.</b> 用户名不能为空");
        return;
    }
    
    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
    	$("#userNameError").html("<b>.</b> 无效用户名");
        return;
    }
    
    if ($("input[name='params.password']").val() == '') {
    	$("#userNameError").html("");
    	$("#passwordError").html("<b>.</b> 密码不能为空");
        return;
    }
    
    if ($("input[name='params.verifyCode']").val() == '') {
    	$("#userNameError").html("");
    	$("#passwordError").html("");
    	$("#imgCodeError").html("<b>.</b> 验证码不能为空");
        return;
    }
    
    $.ajax({
        type : "POST",
        url : "patient_doLogin.html",
        data : {
            "params.phone"      :  $("input[name='params.phone']").val(),
            "params.password"   :  hex_md5($("input[name='params.password']").val()),
            "params.verifyCode" :  $("input[name='params.verifyCode']").val(),
            "params.autoLogin"  :  $("#forgetPwd").attr("checked") == "checked" ? 1 : 0
        },
        dataType : "json",
        success : function(data) {
            if (data.resultCode != 0) {
            	$(".input_mud p").html("");
                $(".tips").html(data.resultDesc);
            } else {
                window.location.href = "index.html";
            }
        }
    });
});


// 验证码输入框的回车事件
$("input[name='params.verifyCode']").keydown(function(e){
    if (e.keyCode==13) {
        $("#loginBtn").click();
    }
});

// 一键预约点击事件
$(".quickBtn").click(function(){
    var hospitalId = $("#hospitalId").val();
    var departmentId = $("#departmentId").val();
    if (hospitalId == "0") {
        alert("医院必须选择");
        return;
    }
    $("#chooseDoctor").submit();
});