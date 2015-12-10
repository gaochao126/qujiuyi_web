<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-会员服务</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
	    <link rel="stylesheet" href="css/tool.css">
	    <link rel="stylesheet" href="css/medicalNews.css">
	    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/firstNAV/VIPService.css" />
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
		<div class="newsContent">
	        <!--newsTop-->
	        <div class="newsTop">
	        	<img src="images/VIPService/ad_img.png" />
	        </div>
	   </div>
	    <div class="VIPCon">
	        <!--left-->
	        <div class="VIPLeft">
	        	<div class="VIPLeftTop">
	        		显赫如您，我们为您奉上私人专属健康管家，全程打理您的健康；在这里请卸下一份疲惫，一份健康牵挂，让我们为您无可挑剔的生活品味，提供最专业、高端的健康管理服务。
	        		成为民众体验会员后，您将尊享全方位健康风险评估，永久性健康档案，24小时健康管理秘书等一系列专属特权服务。
	        	</div>
	        	<div class="VIPLeftCon">
	        		<h3>会员特权</h3>
	        		<div class="VIPLeftConCon">
	        			六大会员核心服务，让您获得健康的同时彰显尊贵身份
	        		</div>
	        		<div class="VIPLeftService">
		        		<div class="VIPLeftServiceItem ServiceItemYellow">
		        			<img src="images/VIPService/icon1.png" class="ServiceImg" data-img = "1"/>
		        			<div class="ServiceName">
		        				专属私人医生
		        				<span>
		        					一对一咨询名医
		        				</span>
		        			</div>
		        		</div>
		        		<div class="VIPLeftServiceItem ServiceItemBlue">
		        			<img src="images/VIPService/icon2.png" class="ServiceImg" data-img = "2"/>
		        			<div class="ServiceName">
		        				全程陪诊
		        				<span>
		        					省时省心
		        				</span>
		        			</div>
		        		</div>
		        		<div class="VIPLeftServiceItem ServiceItemRed">
		        			<img src="images/VIPService/icon3.png" class="ServiceImg" data-img = "3"/>
		        			<div class="ServiceName">
		        				专家解读报告
		        				<span>
		        					全面分析检查检验报
		        				</span>
		        				<span style="padding-top: 0px;">告单</span>
		        			</div>
		        		</div>
	        		</div>
	        		<div class="VIPLeftService">
		        		<div class="VIPLeftServiceItem ServiceItemRed">
		        			<img src="images/VIPService/icon4.png" class="ServiceImg" data-img = "4"/>
		        			<div class="ServiceName">
		        				24小时健康秘书
		        				<span>
		        					全程跟踪健康状况
		        				</span>
		        			</div>
		        		</div>
		        		<div class="VIPLeftServiceItem ServiceItemGreen">
		        			<img src="images/VIPService/icon5.png" class="ServiceImg" data-img = "5"/>
		        			<div class="ServiceName">
		        				绿色转诊通道
		        				<span>
		        					三甲医院快速就医
		        				</span>
		        			</div>
		        		</div>
		        		<div class="VIPLeftServiceItem ServiceItemYellow">
		        			<img src="images/VIPService/icon6.png" class="ServiceImg" data-img = "6"/>
		        			<div class="ServiceName">
		        				健康档案管理
		        				<span>
		        					大数据分析健康状况
		        				</span>
		        			</div>
		        		</div>
	        		</div>
	        	</div>
	        </div>
	        <!--right-->
	        <div class="VIPRight">
	        	<div class="VIPRightTop">
	        		<h3>会员服务直通车</h3>
	        		<div class="VIPRightTopExpress">
	        			<div class="ExpressIcon ExpressIconExam">
	        				<span class="ExpressIconName">体检预约</span>
	        			</div>
	        			<div class="ExpressIcon ExpressIconArchives">
	        				<span class="ExpressIconName">健康档案</span>
	        			</div>
	        			<div class="ExpressIcon ExpressIconConsultation">
	        				<span class="ExpressIconName">办理咨询</span>
	        			</div>
	        		</div>
	        	</div>
	        	<div class="VIPRightBottom">
	        		<h3>寻找会员套餐</h3>
	        		<div class="VIPRightBotCon">
	        			<span class="VIPRightBotName">
	        				性别
	        			</span>
	        			<select class="VIPRightSelect selectOne">
	        				<option>男</option>	
	        				<option>女</option>	
	        			</select>
	        			<span class="VIPRightBotName">
	        				出生年份（年）
	        			</span>
	        			<select class="VIPRightSelect selectOne">
	        				<option>1989</option>	
	        				<option>1990</option>	
	        				<option>1991</option>	
	        			</select>
	        			<span class="VIPRightBotName">
	        				价格区间
	        			</span>
	        			<div class="priceSection">
	        				<select class="VIPRightSelect selectTwo">
	        					<option>20</option>
	        				</select>
	        				<div class="waveLine">~</div>
	        				<select class="VIPRightSelect selectTwo">
	        					<option>50</option>
	        				</select>
	        			</div>
	        			<button class="screenBtn">
	        				筛选
	        			</button>
	        			<span class="VIPRightBotName">
	        				您适合的会员套餐为
	        			</span>
	        			<!--<span class="ScreenResult noResult">
	        				无
	        			</span>-->
	        			<span class="ScreenResult finalResult">
	        				专属私人医生：89元/月
	        			</span>
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
    <script type="text/javascript" src="js/medical/scroll.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script>
	$(".ServiceImg").mousemove(function(){
		var src1=$(this).attr("src");
		var icon=$(this).data('img');
		var img="images/VIPService/icon"+icon+"_hover.png";
		$(this).attr("src",img);
	}).mouseout(function(){
		var src1=$(this).attr("src");
		var icon=$(this).data('img');
		var img="images/VIPService/icon"+icon+".png";
		$(this).attr("src",img);
	})
</script>
</html>