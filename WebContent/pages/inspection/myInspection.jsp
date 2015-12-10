<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-检查检验</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/firstNAV/inspection.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="css/medicalNews.css">
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
                <ul class="topUl">
                    <li>
                        <div class="firstImg">
                            <img src="images/medical/img1.jpg" alt="img">
                            <span class="showMes">我学者发现白血病新抑癌</span>
                        </div>
                    </li>
                    <li>
                        <div class="midDiv">
                            <img src="images/medical/img2.jpg" alt="img">
                            <span class="showMes">"千里送心"救病危男孩</span>
                        </div>
    
                        <div class="midDiv">
                            <div class="midBot" style="margin-right: 13px;">
                                <img src="images/medical/img4.jpg" alt="img">
                                <span class="showMes">上海已着手应对"独生子女父母养老"</span>
                            </div>
                            <div class="midBot">
                                <img src="images/medical/img5.jpg" alt="img">
                                <span class="showMes">危害足部健康的十大状况</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="rigMod">
                            <img src="images/medical/img3.jpg" alt="img">
                            <span class="showMes">世卫组织区域委员会年度会议纪要</span>
                        </div>
                        <div class="rigMod">
                            <img src="images/medical/img6.jpg" alt="img">
                            <span class="showMes">新农合筹资保障水平双提高</span>
                        </div>
                    </li>
                </ul>
            </div>
			<div class="mainCont">
	            <!--left-->
	            <div class="inspectionLeft">
	                <!--top-->
	                <div class="insLeftTop">
	                    <div class="topNews">
	                        <h1>共抗艾滋，共担责任，共享未来</h1>
	                        <p>高度警觉</p>
	                        <ul>
	                            <li>近期体重骤减10%以上</li>
	                            <li>慢性腹泻或咳嗽长达一个月以上</li>
	                            <li>持续或间歇发热达一个月以上</li>
	                            <li>全身可触及有淋巴结肿大</li>
	                            <li>反复出现带状疱疹或是慢性播散性单纯疱疹感染、口咽部有念珠菌感染。</li>
	                        </ul>
	                        <button type="button" class="insBtn">申请检测</button>
	                    </div>
	                </div>
	                <!--bottom-->
	                <div class="insLeftBot">
	                    <h1>您只需完成简单步骤</h1>
	                    <h3>通过检测即可知晓个人健康状况。</h3>
	                    <div style="background: url('images/firstNAV/computer.png') no-repeat;width: 225px;margin-left: 30px;">
	                        <h2><span>1</span>申请</h2>
	                        <p>申请获取检查所需的血液的提取容器。</p>
	                    </div>
	                    <div style="background: url('images/firstNAV/code.png') no-repeat;width: 245px;">
	                        <h2><span>2</span>登记</h2>
	                        <p>当收到容器后，切记在网上将你容器的条形码进行准确无误的登记，以便我们跟踪您的检查进度。</p>
	                    </div>
	                    <div style="background: url('images/firstNAV/box.png') no-repeat;width: 180px;">
	                        <h2><span>3</span>寄回</h2>
	                        <p>我们提供的容器里包含有详细的提取操作说明，按照说明提供可检验的血液。完成后，请将带有血液的容器打包好寄回。</p>
	                    </div>
	                    <button type="button" class="insBtn">申请检测</button>
	                </div>
	            </div>
	            <!--right-->
	            <div class="inspectionRig">
	                <div class="insRigTop">
	                    <h1>检查检验报告查询</h1>
	                    <select name="checkType">
	                        <option value="0">查询类型</option>
	                        <option value="1">检验报告</option>
	                        <option value="2">检查报告</option>
	                    </select>
	                    <select name="checkTypeNum" style="width: 80px;">
	                        <option value="0">病人ID</option>
	                        <option value="1">就诊卡</option>
	                        <option value="2">检查单</option>
	                    </select>
	                    <input type="text" id="checkNum" placeholder="请输入您的号码">
	                    <input type="text" id="userNameInp" placeholder="请输入您的姓名">
	                    <button type="button">提交查询</button>
	                </div>
	                <div class="insRigBot">
	                    <h1>看不明白检查检验结果？</h1>
	                    <p>我们的医生都准备好了，选择医生为你解读检查检验报告单吧！</p>
	                    <div class="insBotCon" id="hotNews">
	                        <div class="docLisCon">
	                            <img src="images/firstNAV/doctor_head.png" alt="head">
	                            <div class="docMesCon">
	                                <p><span>彭方毅</span>主任医师</p>
	                                <p>中医内科</p>
	                            </div>
	                        </div>
	                        <div class="docLisCon">
	                            <img src="images/firstNAV/doctor_head.png" alt="head">
	                            <div class="docMesCon">
	                                <p><span>袁野</span>主任医师</p>
	                                <p>中医内科</p>
	                            </div>
	                        </div>
	                        <div class="docLisCon">
	                            <img src="images/firstNAV/doctor_head.png" alt="head">
	                            <div class="docMesCon">
	                                <p><span>夏涛</span>主任医师</p>
	                                <p>中医内科</p>
	                            </div>
	                        </div>
	                        <div class="docLisCon">
	                            <img src="images/firstNAV/doctor_head.png" alt="head">
	                            <div class="docMesCon">
	                                <p><span>彭方毅</span>主任医师</p>
	                                <p>中医内科</p>
	                            </div>
	                        </div>
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
    <script type="text/javascript" src="js/medical/scroll.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
</html>