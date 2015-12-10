<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="baidu-site-verification" content="3u3HWsRyvx" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <link href="images/791.ico" rel="Shortcut Icon">
        <meta charset="utf-8">
        <title>791去就医</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，网上预约挂号">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/index.css">
       <!--  <link rel="stylesheet" href="css/index2.css"> -->
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
        
        <!--banner-->
        <jsp:include page="/pages/index/index_banner.jsp" flush="true"/>
        
        <!--content-->
        <div class="content">
        	<span class="kf"></span>
            <!--contentLeft-->
            <div class="contentLeft">
                <!--找医院-->
                <div class="hospitalMod" style="margin-top: 50px;">
                    <!--栏目名-->
                    <div class="titMod"><span>医院</span></div>
                    <!--内容-->
                    <div class="modCon">
                        <!--医院轮播-->
                        <!--左边-->
                        <div class="pointer" id="leftArr"></div>
                        <!--中间内容-->
                        <div class="hosBan">
                            <ul class="banLis" id="banLis">
                                <s:iterator value="hotHospitalList">
                                    <li>
                                        <div class="hospitalMes">
                                            <a href='hospital_hospitalInfo.html?params.id=<s:property value="id"/>' class="picimglink">
                                                <img src='<s:property value="head"/>' alt="hospital">
                                                <span class="hosTit" title='<s:property value="name"/>'>
                                                    <span class="hospitalNameBg"><span class="hosNameLen"><s:property value="name"/></span></span>
                                                    <s:if test="level == 7"><span class="three">三甲</span></s:if>
                                                </span>
                                            </a>
                                        </div>
                                    </li>
                                </s:iterator>
                            </ul>
                        </div>
                        <!--右边-->
                        <div class="pointer" id="rightArr"></div>
                
                        <div class="areaChoseDiv">
                            <!--区域选择-->
                            <jsp:include page="/pages/index/index_cityList.jsp" flush="true"/>
                            
                            <!--医院展示列表-->
                            <div class="hospitalLis">
                                <jsp:include page="/pages/index/index_hospitalList.jsp" flush="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--科室挂号-->
                <div class="hospitalMod">
                    <div class="titMod"><span>科室</span></div>
                    <div class="modCon" id="departmentList">
                        <ul class="hosRoom">
                            <s:iterator value="oneLevelDepartmentList">
                                <li title='<s:property value="name"/>' onclick="window.location.href='doctor_chooseDoctor.html?params.departmentId=<s:property value="id"/>';" style="cursor:pointer;">
                                    <img src='images/icon/<s:property value="icon"/>'><s:property value="name"/>
                                </li>
                            </s:iterator>
                        </ul>
                    </div>
                </div>
                
                <!--名医推荐-->
               <div class="hospitalMod">
				    <div class="titMod"><span>名医</span>
				        <a href="javascript: void (0);" class="moreMod">更多医生</a>
				    </div>
				    <div class="modCon">
				        <ul class="doctorRec">
				            <li class="docAc" onclick="getFomousDoctors(0)">全部</li>
				            <li onclick="getFomousDoctors(1)">内科</li>
				            <li onclick="getFomousDoctors(2)">外科</li>
				            <li onclick="getFomousDoctors(4)">儿科</li>
				            <li onclick="getFomousDoctors(3)">妇产科</li>
				            <li onclick="getFomousDoctors(6)">五官科</li>
				        </ul>
				        <div class="recDoc">
				            
				        </div>
				    </div>
				</div>
                
                <!--健康资讯-->
                <div class="hospitalMod">
                    <div class="titMod"><span>资讯</span></div>
                    <div class="modCon">
                    	<div class="mesUl">
					    	<div class="InfoName" onclick="changeBtn(this);" onmousedown="getHealthNew('index_communityHealth.html');">
						        <a href="javascript:void (0);">更多资讯</a>
					    	</div>
					    	<div class="InfoName5" onclick="changeBtn(this);" onmousedown="getHealthNew('index_caseAnalysis.html');">
						        <a href="javascript:void (0);">病例分析</a>
					    	</div>
					    	<div class="InfoName1" onclick="changeBtn(this);" onmousedown="getHealthNew('index_famousPrescription.html');">
						        <a href="javascript:void (0);">名医名方</a>
					    	</div>
					    	<div class="InfoName2" onclick="changeBtn(this);" onmousedown="getHealthNew('index_healthCare.html');">
						        <a href="javascript:void (0);">养生保健</a>
					    	</div>
					    	<div class="InfoName3" onclick="changeBtn(this);" onmousedown="getHealthNew('index_newDrugIntroduct.html');">
						        <a href="javascript:void (0);">新药介绍</a>
					    	</div>
					    	<div class="InfoName4" onclick="changeBtn(this);" onmousedown="getHealthNew('index_medicalNews.html');">
						        <a href="javascript:void (0);"  class="active">健康资讯</a>
					    	</div>
					    </div>
                        <!-- <ul class="mesUl">
                            <li style="background: url('images/btnBg/Rectangle_actived5.png');" class="mesUlAct" id="mesUl1" onclick="changeBtn(this);" onmousedown="getHealthNew('index_medicalNews.html');">健康资讯</li>
                            <li style="background: url('images/btnBg/Rectangle_normal4.png');" id="mesUl2" onclick="changeBtn(this);" onmousedown="getHealthNew('index_newDrugIntroduct.html');">新药介绍</li>
                            <li style="background: url('images/btnBg/Rectangle_normal5.png');" id="mesUl3" onclick="changeBtn(this);" onmousedown="getHealthNew('index_healthCare.html');">养生保健</li>
                            <li style="background: url('images/btnBg/Rectangle_normal3.png');" id="mesUl4" onclick="changeBtn(this);" onmousedown="getHealthNew('index_caseAnalysis.html');">病例分析</li>
                            <li style="background: url('images/btnBg/Rectangle_normal2.png');" id="mesUl5" onclick="changeBtn(this);" onmousedown="getHealthNew('index_famousPrescription.html');">名医名方</li>
                            <li style="background: url('images/btnBg/Rectangle_normal1.png');" id="mesUl6" onclick="changeBtn(this);" onmousedown="getHealthNew('index_communityHealth.html');">更多资讯</li>
                        </ul> -->
                        <div class="infoCon">
                            
                        </div>
                    </div>
                </div>
                
                <!--返回顶部-->
                <div id="go-top" class="dn"></div>
            </div>
            
            <!--contentRight-->
            <div class="contentRight">
                <!--快速预约-->
                <div class="quickReg">
                    <h6>快速预约</h6>
                    <!--<hr />-->
                    <form id="chooseDoctor" method="post" action="doctor_chooseDoctor.html">
                        <select name="params.provinceId" id="provinceId" style="margin-top: 20px;">
                            <option value="0">选择您想挂号的省份</option>
                            <s:iterator value="provinceList">
                                <option value='<s:property value="provinceId"/>'><s:property value="provinceName"/></option>
                            </s:iterator>
                        </select>
                        <select name="params.cityId" id="cityId">
                            <option value="0">选择您想挂号的城市</option>
                        </select>
                        <select name="params.hospitalId" id="hospitalId">
                            <option value="0">选择您想挂号的医院</option>
                        </select>
                        <select name="params.departmentId" id="departmentId">
                            <option value="0">选择您想挂号的科室</option>
                        </select>
                    </form>
                    <button type="button" class="quickBtn">一键预约</button>
                </div>
            
                <!--最新签约-->
                <div class="newContract">
                    <div class="newContractTit">公告信息</div>
                    <ul class="contractList">
                        <li title="重庆市第五人民医院上线公告重庆市第五人民医院上线公告">重庆市第五人民医院上线公告重庆市第五人民医院上线公告</li>
                        <li title="预约挂号须知预约挂号须知预约挂号须知">预约挂号须知预约挂号须知预约挂号须知</li>
                        <li title="市中医院（道门口）预约挂号须知预约挂号须知预约挂号须知预约挂号须知">市中医院（道门口）预约挂号须知预约挂号须知预约挂号须知预约挂号须知</li>
                        <li title="关于2015年端午节号源更新公告关于2015年端午节号源更新公告关于2015年端午节号源更新公告">关于2015年端午节号源更新公告关于2015年端午节号源更新公告关于2015年端午节号源更新公告</li>
                    </ul>
                </div>
            
                <!--常见疾病-->
                <div class="comDis">
                    <h6>常见疾病 <a href="javascript: void (0);">更多疾病</a></h6>
                    <ul class="comDisLis">
                       
                    </ul>
                </div>
            
                <!--检验报告查询-->
                <div class="queryDis">
                    <h6>检验检查报告查询</h6>
                    <select name="queClass" id="queClass">
                        <option value="0">查询类型</option>
                        <option value="1">检验报告</option>
                        <option value="2">检查报告</option>
                    </select>
                    <select name="QueNum" id="QueNum">
                        <option value="0">病人ID号</option>
                        <option value="1">就诊卡号</option>
                        <option value="2">检查单号</option>
                    </select>
                    <input type="text" id="yourNum" placeholder="请输入您的号码">
                    <input type="text" id="yourName" placeholder="请输入您的姓名">
                    <button type="button" id="queryBtn">提交查询</button>
                </div>
            
                <!--名医专栏-->
			    <div class="doctorColumn">
			        <h6>名医专栏 <a href="javascript: void (0);">更多访谈</a></h6>
			        <div class="doctorColLis">
			            <span class="InterNum"></span>
			            <img src="images/doctorInfo/1.jpg" alt="doc">
			            <div class="colLis">
			               <p><span class="columnDocName">卢柳西</span><span class="columnDocClass">普通医师</span></p>
			               <p>重庆市第五人民医院</p>
			            </div>
			        </div>
			        <div class="doctorColLis">
			            <span class="InterNum"></span>
			            <img src="images/doctorInfo/2.jpg" alt="doc">
			            <div class="colLis">
			                <p><span class="columnDocName">展群岭</span><span class="columnDocClass">主任医师</span></p>
			               <p>重庆市第五人民医院</p>
			            </div>
			        </div>
			    </div>
             
                <!--二维码-->
                <div class="codeMod">
                    <img src="images/index/code.png" alt="code">
                    <span>关注“791去就医”微信公众号</span>
                    <span>快速体验预约挂号服务</span>
                </div>
            </div>
            
        </div>
            <!--友情链接-->
            <jsp:include page="/pages/index/index_friendLink.jsp" flush="true"/>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <script type="text/javascript" src="js/tools.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/koala.min.1.5.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript">
    	$(function(){
    		getHealthNew('index_medicalNews.html');//初始查询健康资讯
    		getCommonDiseases();//初始查询常见疾病
    		getFomousDoctors(0);//初始查询全部推荐医生
    	});
    	
    	//获得健康资讯
    	function getHealthNew(url){
    		var infoCon = $('.infoCon');
    		$.ajax({
                type : "post",
                url : url,
                dataType : "text",
                success : function(data) {
                	infoCon.html(data);
                }
            });
    	}
    	
    	//获得常见疾病
    	function getCommonDiseases(){
    		var comDisLis = $('.comDisLis');
    		
    		$.ajax({
                type : "post",
                url : "index_commonDiseases.html",
                dataType : "text",
                success : function(data) {
                	comDisLis.html(data);
                }
            });
    	}
    	
    	//获得推荐医生
    	function getFomousDoctors(params){
    		var recDoc = $('.recDoc');
    		$.ajax({
                type : "post",
                url : "index_queryOneLevelDoctor.html?params.parentId="+params,
                dataType : "text",
                success : function(data) {
                	recDoc.html(data);
                	$('.forte').dotdotdot();
                }
            });
    	}
    </script>
</html>