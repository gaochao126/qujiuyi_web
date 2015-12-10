<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-社区医疗</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，医疗动态">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    
        <!--content-->
        <div class="newsContent">
    
            <!--main-content-->
            <div class="mainCont">
                <!--left-->
                <div class="leftCon">
                    <h1>热点新闻</h1>
    
                    <ul class="hotUl">
                        <li>国内新药</li>
                        <li>国外新药</li>
                        <li>已获批文</li>
                        <li class="hotUlAc">将获批文</li>
                    </ul>
                    <div class="hotNews" id="hotNews">
                        <s:iterator value="hotNews">
                            <div class="hotNewsList">
                                <a href='news_newDrugIntroductDetail.html?params.id=<s:property value="id"/>'><s:property value="title"/></a>
                                <span class="times">山东瑞和有限公司</span>
                                <hr class="botHr"/>
                            </div>
                        </s:iterator>
                    </div>
                </div>
                <!--right-->
                <div class="rightCon">
                    <!--文章内容-->
                    <div class="rigMes">
                        <h1><s:property value="dataObj.title"/></h1>
                        <span class="authorMod"><s:property value="@com.jiuyi.qujiuyi.common.Util@getValueByKeyFromJson(dataObj.addition, 'vender')"/></span>
                        <!--titleMod-->
                        <div class="titleMod">
                            <p><s:property escape="false" value="dataObj.summary"/></p>
                        </div>
    
                        <!--content-->
                        <div class="newsDetails">
                            <s:property escape="false" value="dataObj.content"/>
                            <div class="shareMod">
                                <button type="button" class="iconBtn iconLike"></button><span class="tipNum">2</span>
                                <button type="button" class="iconBtn evaBtn"></button><span class="tipNum">3</span>
                                <!--share-->
                                <div class="shareForQQ">
                                    <i>分享到</i>
                                    <button type="button" class="shareWenXin"></button>
                                    <button type="button" class="shareSina"></button>
                                    <button type="button" class="shareQQ"></button>
                                </div>
                            </div>
                        </div>
    
                    </div>
    
                    <!--评论模块-->
                    <div class="postComment">
                        <h1>文章评论(<span>3</span>)</h1>
                        <!--未登录-->
                        <s:if test="#session.patient == null">
                            <span class="meatMod loginBef"><a href="patient_login.html">登录</a>后参与讨论</span>
                        </s:if>
                        <!--已登录-->
                        <s:else>
                            <textarea id="textArea" placeholder="你怎么看？"></textarea>
                            <span class="meatMod logAft">
                                <span class="userHead" style="margin-right: 10px;"><img src="images/medical/user_head_1.png" alt="head"></span>
                                <span class="userNu">
                                    signed as<a href="javascript:void (0);">时不我待</a><button type="button" class="subBtn">提交评论</button>
                                </span>
                            </span>
                        </s:else>
                        <!--评论列表-->
                        <ul class="commentList">
                            <li>
                                <span class="userHead"><img src="images/medical/head.png" alt="head"></span>
                                <div class="comRig">
                                    <span class="userNameMod">压马路<i>&nbsp;&bull;&nbsp;24分钟前</i></span>
                                    <p>这是评论这是评论这是评论这是评论这是评论这是评论这是评论这是评</p>
                                    <button type="button" class="repBtn">回复</button>
                                </div>
                            </li>
                            <li>
                                <span class="userHead"><img src="images/medical/head.png" alt="head"></span>
                                <div class="comRig">
                                    <span class="userNameMod">压马路<i>&nbsp;&bull;&nbsp;24分钟前</i></span>
                                    <p>这是评论这是评论这是评论这是评论这是评论这是评论这是评论这是评</p>
                                    <button type="button" class="repBtn">回复</button>
                                </div>
                            </li>
                            <li>
                                <span class="userHead"><img src="images/medical/head.png" alt="head"></span>
                                <div class="comRig">
                                    <span class="userNameMod">压马路<i>&nbsp;&bull;&nbsp;24分钟前</i></span>
                                    <p>这是评论这是评论这是评论这是评论这是评论这是评论这是评论这是评</p>
                                    <button type="button" class="repBtn">回复</button>
                                </div>
                            </li>
                        </ul>
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
</html>