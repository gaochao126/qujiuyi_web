<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-医患互动</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
	    <link rel="stylesheet" href="css/tool.css">
	    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/firstNAV/DPInteraction.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
		<div class="DPCon">
		<!--left-->
			<div class="DPLeft">
				<!--向医生提问-->
				<div class="DPQTop">
					<h1>我要向医生提问</h1>
					<span>提问历史</span>
				</div>
				<div class="DPQContent">
					<textarea class="patientInput" placeholder="请详细描述您的症状、疾病或身体状况，以便医生了解您的情况"></textarea>
				</div>
				<div class="DPQBottom">
					<div class="DPQAge">
						年龄
						<input type="number" min="1" style="margin-left: 10px; width: 50px;"/>
					</div>
					<div class="DPQGender">
						<span>男</span>
						<input type="radio" name="sex" checked="checked"/>
						<span>女</span>						
						<input type="radio" name="sex" />
					</div>
					<div class="DPQAddpic">
						<img src="images/firstNAV/picture_add.png" class="DPQAddPicImg" />
						<button class="DPQAddBtn">添加图片</button>
					</div>
				</div>
				<div class="subQues">
					<button class="subBtn">提交问题</button>
				</div>
				<!--left bottom-->
				<div class="commonHot">
					<h1>常见疾病最热问题</h1>
					<div style="background: #FFFFFF; width: 100%;overflow: hidden;">
						<div class="newsNavMod">
					        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
					            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
					                <a href="javascript:void (0);" class="active">感冒</a>
					        		<a href="javascript:void (0);">怀孕</a>
					        		<a href="javascript:void (0);">高血压</a>
					        		<a href="javascript:void (0);">胃炎 </a>
					        		<a href="javascript:void (0);">流产</a>
					            </div>
					        </div>
					 	</div>
					 	 <div class="hotDisease">
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div>
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div> 
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div>
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div> 
					 	 	<a href="javascript:void(0)" class="seemore">还有4509条感冒相关问题>></a>
					 	 </div>
					</div>
					<h1>常见科室最热问题</h1>
					<div style="background: #FFFFFF; width: 100%;overflow: hidden;">
						<div class="newsNavMod">
					        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
					            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
					                <a href="javascript:void (0);" class="active">内科</a>
					        		<a href="javascript:void (0);">外科</a>
					        		<a href="javascript:void (0);">妇产科</a>
					        		<a href="javascript:void (0);">儿科 </a>
					        		<a href="javascript:void (0);">男科</a>
					        		<a href="javascript:void (0);">皮肤科</a>
					            </div>
					        </div>
					 	</div>
					 	 <div class="hotDisease">
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div>
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div> 
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div>
					 	 	<div class="hotDocCard">
					 	 		<div class="hotCardCon">
					 	 			<span class="hotDiseaseQ">Q:高血压片可不可以两天吃一次感觉自己萌萌哒
					 	 			</span>
					 	 			<span class="hotDiseaseInfo">
					 	 				女，50岁
					 	 			</span>
					 	 		</div>
					 	 		<img src="images/DocPatInteraction/doc2.png" class="hotDocHead"/>
					 	 		<div class="hotDocAnswer">您好，这建议您按医嘱服用，患了高血压建议低盐饮食，一定要禁酒避免情绪激动，如果有高血脂必须同时治疗，否则降压将无法达到效果
               					<a href="javascript:void(0)" class="readDetail">[详细]</a></div>
					 	 	</div> 
					 	 	<a href="javascript:void(0)" class="seemore">还有4509条内科相关问题>></a>
					 	 </div>
					</div>
				
				</div>
			</div>
		<!--right-->
			<div class="DPRight">
				<!--提问举例-->
				<div class="DPQExample">
					<h3>
						正确的提问举例
					</h3>
					<p>
						多年患有慢性支气管炎。最近一个多月，总是反复发热，血小板偏高，发烧时小便有血丝。在医院治疗好了十多天，
						但前天又开始发热了。请问医生反复发热与什么有关，怎么治疗？
					</p>
					<br />
					<h3>
						无效的提问举例
					</h3>
					<p>
						感冒了怎么办？
					</p>
					<span>
						这样的问题过于简单，可能得不到医生有效的回答
					</span>
				</div>
				<!--热门标签-->
				<div class="hotLable">
					<ul class="hotUl">
				        <li>头晕</li>
				        <li>乙肝</li>
				        <li>失眠</li>					        
				        <li>肾虚</li>
				        <li>肾虚</li>
				        <li>皮肤病</li>
				        <li>宫颈糜烂</li>
				        <li>月经不调</li>
				        <li>肾虚</li>
				        <li>皮肤病</li>
				        <li>就诊</li>
				        <li class="hotUlAc">头晕</li>
				        <li>乙肝</li>
				        <li>失眠</li>

				    </ul>
				</div>
				<!--医患沟通栏目-->
				<div class="comRecord">
					<span class="columnTitle">
						已经有<span class="redColor">2321</span>名医生加入医患沟通栏目
					</span>
					<div class="comRecordScroll">
						<div class="comRecordItem">
							<img src="images/DocPatInteraction/doc1.png" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									金戈
								</span>
								医生的回答被Liuyi采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
							<img src="" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									朱艮苗
								</span>
								医生的回答被Simon采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
							<img src="images/DocPatInteraction/doc1.png" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									朱艮苗
								</span>
								医生的回答被Simon采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
							<img src="images/DocPatInteraction/doc1.png" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									朱艮苗
								</span>
								医生的回答被Simon采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
							<img src="" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									朱艮苗
								</span>
								医生的回答被Simon采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
							<img src="images/DocPatInteraction/doc1.png" class="comRDocImg"/>
							<div class="comRDocInfo">
								<span class="comRDocName">
									朱艮苗
								</span>
								医生的回答被Simon采纳为满意
								<p class="comRTime" >
									24分钟前
								</p>
							</div>
						</div>
						<div class="comRecordItem">
						<img src="" class="comRDocImg"/>
						<div class="comRDocInfo">
							<span class="comRDocName">
								朱艮苗
							</span>
							医生的回答被Simon采纳为满意
							<p class="comRTime" >
								24分钟前
							</p>
						</div>
					</div>
					</div>
				</div>
				<!--已解决问题-->
				<div class="comRecord">
					<span class="columnTitle">
						解决<span class="redColor">1234</span>个问题
					</span>
					<div class="settledScroll">
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div>
						<div class="itemTop">
							<div class="settledCont">
								<span class="comRDocName">金戈</span>
								回复"什么是白癜风,哦多么痛的领悟"
							</div>
							<div class="settledTime">12分钟前</div>
						</div> 
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
    <script type="text/javascript" src="js/common.js"></script>
    <script>
	$(function () {
		$('.hotDocAnswer').dotdotdot({
            after:'a.readDetail'
        });
        $('.hotDiseaseQ').dotdotdot();
    })
		$(window).load(function(){
	        $(".comRecordScroll").mCustomScrollbar({theme:"minimal"});
	        $(".settledScroll").mCustomScrollbar({theme:"minimal"});
    	});
    	$('.newsNavMod a').live('click', function () {
        $(this).addClass('active');
        $(this).siblings().removeClass('active');
    });
	</script>
</html>