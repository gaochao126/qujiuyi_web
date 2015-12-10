<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <title>791去就医-医生注册</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href='css/main.css'/>
        <link rel="stylesheet" href="css/register.css">
    </head>
    <body>
    	<div class="con">
	    	<div>
	        	<a href="index.html"><img src="images/index/791logo.png" alt="logo" style="margin: 40px 0px 40px 0px; width: 250px;"></a>  
	        	<h3 class="docRigTitle">医生注册</h3>  		
	    	</div>
	    	<div class="stepCon">
	    		<ul>
	    			<li class="active">
	    				<span>1</span>&nbsp;
	    				验证手机号
	    			</li>
	    			<li >
	    				<span>2</span>&nbsp;
	    				填写个人信息
	    			</li>
	    			<li>
	    				<span>3</span>&nbsp;
	    				注册成功
	    			</li>
	    		</ul>
	    	</div>
	    </div>
    	<div class="totalCon">
    		<!--content-->
    		<div class="docRigCon">
				<!-- step1:手机号注册 -->
    			<div class="phoneRig">
    				<jsp:include page="/pages/doctor/step1.jsp" flush="true"/>
    				
				</div>	
				<!-- step2:填写验证信息 -->
    			<div class="phoneRig" style="display: none;">
    				<jsp:include page="/pages/doctor/step2.jsp" flush="true"/>
    				
				</div>	
				<!-- step3:填写验证信息 -->
    			<div class="phoneRig" style="display: none;">
    				<jsp:include page="/pages/doctor/step3.jsp" flush="true"/>
				</div>	
    		</div>
		    <!--footer-->
        	<%-- <jsp:include page="/pages/index/index_footer.jsp" flush="true"/> --%>
		</div>
        <form id="upload" method="post" enctype="multipart/form-data" style="display: none;"> 
            <input id="file" type="file" name="file" style="display: none"/>
        </form>
        <div class="dialogParent">
            <div class="dialog">
                <div class="dialogCloseIcon"></div>
                <div class="dialogContent"></div>
            </div>
        </div>
        <div class="dialogUnderlay"></div>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript">
     	// 发送验证码
       	$("#sendCode2").click(function(){
       	    if (isRegistered == 1) {
       	     	return;
       	    }
       	    
       		// 判断手机号码是否为空
     	    if ($("input[name='params.phone']").val() == "") {
     	       	$(".inputHint").html("*&nbsp;&nbsp;手机号必须填写");
     	       	return;
      	    }
       	    
       	    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
       	        $(".inputHint").html("*&nbsp;&nbsp;无效手机号");
       	        return;
       	    }
      	    
       	    var _this = $(this);
       	    _this.attr("disabled", "disabled");
       	    var time = 0;
       	    setInterval(function(){
       	        time ++;
       	        if (time >= 60) {
       	            _this.html("*&nbsp;&nbsp;重新获取验证码");
       	            clearInterval(_this[0]);
       	            _this.removeAttr("disabled");
       	        } else {
       	            _this.html("重新发送(" + (60 - time) + ")");
       	        }
       	    }, 1000);
      	    
       	    $.ajax({
       			type : "POST",
       			url : "doctor_sendVerifyCode.html",
       			data : {
       			    "params.phone" : $("input[name='params.phone']").val()
       			},
       			dataType : "json",
       			success : function(data) {
       			    if (data.resultCode != 0) {
       			        $(".inputHint").html("*&nbsp;&nbsp;" + data.resultDesc);
       			    } else {
       			        $(".inputHint").html("");
       			    }
       			}
    		});
       	});
     	
     	// 手机号输入点击事件
     	var isRegistered = 0;
       	$("input[name='params.phone']").keyup(function(){
       	    if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
       	     	$(".inputHint").html("*&nbsp;&nbsp;无效手机号");
       	    } else {
           	    $.ajax({
        			type : "get",
        			url : "doctor_isRegistered.html",
        			data : {
        			    "params.phone" : $("input[name='params.phone']").val()
        			},
        			dataType : "json",
        			success : function(data) {
        			    if (data.resultCode != 0) {
        			        isRegistered = 1;
        			        $(".inputHint").html("*&nbsp;&nbsp;" + data.resultDesc);
        			    } else {
        			        isRegistered = 0;
        			        $(".inputHint").html("");
        			    }
        			}
         		});
       	    }
       	});
     	
     	// 注册按钮点击事件
     	$("#docRigBtn_1").click(function(){
     	   	if (isRegistered == 1) {
      	     	return;
      	    }
     	    
     	    // 判断手机号码是否为空
     	    if ($("input[name='params.phone']").val() == "") {
     	       	$(".inputHint").html("*&nbsp;&nbsp;手机号必须填写");
     	       	return;
      	    }
     	    
     	    // 判断手机号码是否正确
     	   	if (!$("input[name='params.phone']").val().match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)) {
     	   		$(".inputHint").html("*&nbsp;&nbsp;无效手机号");
     	   		return;
      	    }
     	    
			// 判断验证码不为空
			if ($("input[name='params.verificationCode']").val() == "") {
			    $(".inputHint").html("*&nbsp;&nbsp;验证码必须填写");
			    return;
     	    }
     	    
     	    // 判断验证码是否正确
     	    if (!$("input[name='params.verificationCode']").val().match(/^[0-9]{6}$/)) {
     	       	$(".inputHint").html("*&nbsp;&nbsp;无效验证码");
     	       	return;
     	    }
     	    
     	  	 var _this = $(this);
      	    _this.attr("disabled", "disabled");
     	    
     	   	$.ajax({
      			type : "POST",
      			url : "doctor_doRegister.html",
      			data : {
      			    "params.phone" : $("input[name='params.phone']").val(),
      			    "params.verificationCode" : $("input[name='params.verificationCode']").val()
      			},
      			dataType : "json",
      			success : function(data) {
      			    if (data.resultCode != 0) {
      			      	$(".inputHint").html("*&nbsp;&nbsp;" + data.resultDesc);
      			      	_this.removeAttr("disabled");
      			    } else {
      			        $(".phoneRig").hide();
      			        $(".phoneRig:eq(1)").show();
      			        $(".stepCon li").removeClass("active");
      			        $(".stepCon li:eq(1)").addClass("active");
      			    }
      			}
       		});
     	    
     	   	var _this = $(this);
      	    _this.attr("disabled", "disabled");
     	});
     	
     	// 上传点击事件 
     	var type = 0;
     	function uploadClickEvt(_type) {
     	    type = _type;
     	   $("#file").click();
     	}
     	$("#file").change(function(){
     	   	uploadFile(type);
     	});
     	
     	// 上传回调
        function uploadCallBack(result) {
            var path = "";
            var img = result.detail.list[0];
            if (type == 4) {
                $("input[name='params.head']").val(result.detail.list[0]);
                path = '<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.head.path')"/>';
                img = "<img style='margin-right:2px;' src='" + path + result.detail.list[0] + "' height='100'/>";
                $("#head").html(img);
            } else if (type == 5) {
                $("input[name='params.idCardPath']").val(result.detail.list[0]);
                path = '<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.idcard.path')"/>';
                img = "<img style='margin-right:2px;' src='" + path + result.detail.list[0] + "' height='100'/>";
                $("#idCardPath").html(img);
            } else if (type == 6) {
                $("input[name='params.titleCardPath']").val(result.detail.list[0]);
                path = '<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.titlecard.path')"/>';
                img = "<img style='margin-right:2px;' src='" + path + result.detail.list[0] + "' height='100'/>";
                $("#titleCardPath").html(img);
            } else if (type == 7) {
                $("input[name='params.licenseCardPath']").val(result.detail.list[0]);
                path = '<s:property value="@com.jiuyi.qujiuyi.common.SysCfg@getString('doctor.licensecard.path')"/>';
                img = "<img style='margin-right:2px;' src='" + path + result.detail.list[0] + "' height='100'/>";
                $("#licenseCardPath").html(img);
            }
        }
     	
     	// 一级科室选择事件
     	$("#oneLevelDepartment").change(function(){
     	    if ($("#oneLevelDepartment").val() == 0) {
     	       $("#twoLevelDepartment").html('<option value="0">---请选择---</option>');
     	       return;
     	    }
     	   	$.ajax({
     			type : "POST",
     			url : "department_departmentListItem.html",
     			data : {
     			    "params.parentId" : $("#oneLevelDepartment").val(),
     			    "params.queryType" : "2"
     			},
     			dataType : "text",
     			success : function(data) {
     			  	$("#twoLevelDepartment").html('<option value="0">---请选择---</option>');
     			  	$("#twoLevelDepartment").append(data);
     			}
      		});
     	});
     	
     	var webCache = new Array();
     	function openDialog(action, name, value) {
     	   	webCache.inputName = name;
     		webCache.inputValue = value;
     		webCache.dialogOpen = 1;
     		webCache.dialogAction = action;
     		$(".dialogContent").html("");
     		$(".dialogUnderlay").show();
     		$(".dialogParent").show();
     		$.ajax({
     		    type     :   "POST",
     		    url      :   action,
     		    data     :   {"page.pageSize" : 10, "page.currentPage" : 1},
     		    dataType :   "text",
     		    success  :   function(data) {
     		        $(".dialogContent").html(data);
     		        $(".dialog .dataGrid table tbody tr:odd").addClass("odd");
     		    }
     		});
     	}
     	$(".dialogCloseIcon").on("click", function(){
    		$(".dialogUnderlay").hide();
    		$(".dialogParent").hide();
    		webCache.dialogOpen = 0;
    	});
     	function dialogQueryDataList(action) {
     		$.ajax({
     	        type     :   "POST",
     	        url      :   action,
     	        data     :   $(".dialog #serchForm").serialize(),
     	        dataType :   "text",
     	        success  :   function(data) {
     	            $(".dialogContent").html(data);
     	            $(".dialog .dataGrid table tbody tr:odd").addClass("odd");
     	        }
     	    });
     	}
     	function turnPage(currentPage) {
     		$("#currentPage").val(currentPage);
     		$.ajax({
     	        type     :   "POST",
     	        url      :   webCache.dialogOpen == 0 ? webCache.action : webCache.dialogAction,
     	        data     :   webCache.dialogOpen == 0 ? $("#serchForm").serialize() : $(".dialog #serchForm").serialize(),
     	        dataType :   "text",
     	        success  :   function(data) {
     	        	if(webCache.dialogOpen == 0) {
     		            $(".body .data").html(data);
     		            webCache.condition = $("#serchForm").serialize();
     		            $(".body .dataGrid table tbody tr:odd").addClass("odd");
     	        	} else {
     	        		$(".dialogContent").html(data);
     		            $(".dialogContent .dataGrid table tbody tr:odd").addClass("odd");
     		            
     		            $(".dialog .dataGrid table tbody tr").click(function(){
     			        	$(webCache.inputName).val($(this).find("input[name='name']").val());
     			        	$(webCache.inputValue).val($(this).find("input[name='value']").val());
     			        	$(".dialogUnderlay").hide();
     			    		$(".dialogParent").hide();
     			    		webCache.dialogOpen = 0;
     			        });
     	        	}
     	        }
     	    });
     	}
     	
     	// 个人资提交
     	$("#docRigBtn_2").click(function(){
     	   	var _this = $(this);
      	    _this.attr("disabled", "disabled");
     	   	$.ajax({
    			type : "POST",
    			url : "doctor_commitPersonageInformation.html",
    			data : $("#personageInformation").serialize(),
    			dataType : "json",
    			success : function(data) {
    			    if (data.resultCode != 0) {
    			        alert(data.resultDesc);
      			      	$(".inputHint").html("*&nbsp;&nbsp;" + data.resultDesc);
      			      	_this.removeAttr("disabled");
      			    } else {
      			        $(".phoneRig").hide();
      			        $(".phoneRig:eq(2)").show();
      			        $(".stepCon li").removeClass("active");
      			        $(".stepCon li:eq(2)").addClass("active");
      			    }
    			}
     		});
     	});
    </script>
</html>