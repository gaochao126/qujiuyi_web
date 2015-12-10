<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-个人中心</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
	    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/userCenter/userCenter.css" />
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
	   	<div class="mainCon">
			<div class="userCCon">
				<!--left-->
				<jsp:include page="/pages/userCenter/userCenter_Left.jsp" flush="true"/> 
                
				<!--right-->
				<div class="userCConRigght">
				<!-- 以下是动态改变部分 -->
					<!-- 我的配药 -->
					<%-- <jsp:include page="/pages/userCenter/myPrescription.jsp" flush="true"/> --%>
					<!-- 待评价 -->
					<%-- <jsp:include page="/pages/userCenter/toBeEvaluated.jsp" flush="true"/> --%>
					<!-- 已评价 -->
					<%-- <jsp:include page="/pages/userCenter/hasBeenEvaluated.jsp" flush="true"/> --%>
					<!-- 就诊人管理-->
					<%-- <jsp:include page="/pages/userCenter/managePatient.jsp" flush="true"/> --%>
					<!-- 收藏医生-->
					<%-- <jsp:include page="/pages/userCenter/collectDoctor.jsp" flush="true"/> --%>
					<!-- 修改密码-->
					<%-- <jsp:include page="/pages/userCenter/changePSW.jsp" flush="true"/> --%>
					<!--账户设置-->
					<%-- <jsp:include page="/pages/userCenter/accountSetting.jsp" flush="true"/> --%>
					<!--我的钱包-->
					<%-- <jsp:include page="/pages/userCenter/myWallet.jsp" flush="true"/> --%>
					<!--提现页面-->
					<%-- <jsp:include page="/pages/userCenter/withdrawals.jsp" flush="true"/> --%>
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
    <script type="text/javascript" src="js/common.js"></script>
    <script>
	    $(".serviceItem a").click(function(){
			$(this).addClass("active");
			$(this).siblings().removeClass("active");
		})
		/* 收藏医生界面需用到 */
		//$(".docInteraction").dotdotdot();
	    
	    // 菜单点击事件
	    $(".userCNav li a").click(function(){
	        var _this = $(this);
	        $.ajax({
    			type : "get",
    			url : _this.parent().find("input").val(),
    			dataType : "text",
    			success : function(data) {
    			    $(".userCConRigght").html(data);
    			}
            });
	    });
	    
	    // 首次点击我的预约
	    $($(".userCNav li a")[0]).click();
	</script>
</html>