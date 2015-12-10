<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-优秀医师</title>
	    <meta name="description" content="791去就医预约挂号官网。">
	    <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/other.css">
        <style type="text/css">
            .scrollDiv {
                width: 8px;
                position: absolute;
                top: 0;
                background: red;
                border-radius: 10px;
                z-index: 10;
            }
        </style>
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
            <!--main-content-->
            <div class="mainCont">
                <!--left-->
	            <div class="leftCon">
	                <ul class="hotUl_order">
	                    <li class="excellent_order">今日排名</li>
	                    <li >本周排名</li>
	                    <li >本月排名</li>
	                </ul>
	                <div class="hotNews" id="hotNews">
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_One">1</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_up"></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Two">2</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_up"></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Three">3</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">4</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_up"><!--指数上升--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">5</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"><!--指数下降--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">6</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"><!--指数下降--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">7</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"><!--指数下降--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">8</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"><!--指数下降--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                    <div class="hotNewsList">
	                        <span class="excellent_doc_info docInfo_One">
	                            <p class="p_Other">9</p>
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Two">
	                            <img class="info_img" src="images/medical/doctor_img_1.png">
	                        </span>
	
	                        <span class="excellent_doc_info docInfo_Three">
	                            <ul class="doc_Ul_left">
	                                <li>金正恩<span style="font-size: 14px; color: #333;">副主任医师</span></li>
	                                <li style="font-size: 14px; color: #333;">小儿呼吸科</li>
	                                <li><span class="doc_ZhiShu">192</span><span class="doc_ZhiShu_down"><!--指数下降--></span></li>
	                            </ul>
	                        </span>
	                        <hr class="botHr"/>
	                    </div>
	
	                </div>
	            </div>
                <!--right-->
	            	<div class="rightCon">
	                <!--nav-->
	                <div class="newsNavMod">
	                    <a href="javascript:void (0);" class="active">全部</a>
	                    <a href="javascript:void (0);">内科</a>
	                    <a href="javascript:void (0);">外科</a>
	                    <a href="javascript:void (0);">皮肤科</a>
	                    <a href="javascript:void (0);">儿科</a>
	                    <a href="javascript:void (0);">妇产科</a>
	                </div>
	                <!--news-list-->
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <div class="newsList">
	                    <div class="lis1"><img src="images/medical/doctor_img_1.png" alt="img"></div>
	                    <div class="lis2">
	                        <ul class="lisUl">
	                            <li>
	                            	<span style="font-size: 20px;color: #333; font-family: 'Microsoft Yahei', 'Hiragino Sans GB', 'STHeiti Light ', Arial, sans-serif">
	                            		米要和
	                            	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	                            	<span style="font-size: 14px; color: #333;">
	                            		主任医师
	                            	</span>
	                            </li>
	                            <br/>
	                            <li class="brief">
	                                <span style="display: block;height: 80px;float: left;">
	                                	擅长：
	                                </span>
	                                <p style="display: block">近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr近日来，Welldoc突然成为了移动医疗圈热议的话题，这家创始于2005年个人健康管理移动医疗公司的发展和业务模式迎来了Dr。<a href="http://www.baidu.com" target="_blank" class="readmore">[原文链接]</a>
	                                </p>
	                            </li>
	                        </ul>
	                    </div>
	                    <span class="tipsName">标签：</span>
	                    <ul class="tips">
	                        <li>银屑病，花斑癣，牛皮癣</li>
	                    </ul>
	                </div>
	                <!--分页-->
	                <div id="page8"></div>
	            </div>
            	<!-- right end -->
            </div>
        </div>
    
        <!--footer-->
        <div class="footer" style="margin-top: 0;">
            <div class="con">
                <ul class="footerLis" style="width: 500px;">
                    <li><h1>关于791</h1></li>
                    <li>791（去就医）实现患者医疗的可及性</li>
                </ul>
                <ul class="footerLis" style="">
                    <li><h1>联系我们</h1></li>
                    <li>重庆总公司 重庆柒玖壹健康管理股份有限公司</li>
                    <li>电话+86 23-62919872</li>
                    <li>地址：重庆市南岸区金山支路10号</li>
                    <li>邮编：400060</li>
                    <li>电邮：info@51791.com</li>
                </ul>
                <ul class="footerLis" style="float: right;">
                    <li><h1>加入我们</h1></li>
                    <li>职位招聘</li>
                    <li>平台合作</li>
                </ul>
            </div>
        </div>
        <!--底部-->
        <div class="bootCon">
            <div class="con">
                <img src="images/index/police.png" alt="网警备案">
    
                <p><span style="font-family: '宋体';font-size: 20px;font-weight: bold;">Copyright</span><span
                        style="color: #000;font-size: 16px;">&copy;重庆玖壹健康管理有限公司 渝ICP备14010607号</span>
                    <span style="font-size: 16px;color: #bcbcbc;">互联网医疗保健信息服务审核同意书(审核申请中...)</span></p>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="js/medical/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/medical/medical.js"></script>
    <script type="text/javascript" src="js/medical/scroll.js"></script>
</html>