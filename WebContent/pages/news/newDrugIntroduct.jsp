<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-新药介绍</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/other.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
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
                    <h1>热点新药</h1>
    
                    <ul class="hotUl">
                        <li class="hotUlAc">国内新药</li>
                        <li>国外新药</li>
                        <li>将获批文</li>
                        <li>已获批文</li>
                        <li>中药</li>
                        <li>化学</li>
                        <li>整形</li>
                    </ul>
                    <div class="hotNews" id="hotNews">
                        <s:iterator value="hotNews">
                            <div class="hotNewsList">
                                <a href='news_newDrugIntroductDetail.html?params.id=<s:property value="id"/>'><s:property value="title"/></a>
                                <span class="times"><s:property value="@com.jiuyi.qujiuyi.common.Util@getValueByKeyFromJson(addition, 'vender')"/></span>
                                <hr class="botHr"/>
                            </div>
                        </s:iterator>
                    </div>
                </div>
                <!--right-->
                <div class="rightCon">
                    <!--nav-->
                    <div class="newsNavMod">
                        <s:if test="params.category2 == ''">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="0"/>全部</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="0"/>全部</a>
                        </s:else>
                        <s:if test="params.category2 == 6">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="6"/>家中常备</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="6"/>家中常备</a>
                        </s:else>
                        <s:if test="params.category2 == 7">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="7"/>糖尿病</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="7"/>糖尿病</a>
                        </s:else>
                        <s:if test="params.category2 == 8">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="8"/>肝胆脾肾</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="8"/>肝胆脾肾</a>
                        </s:else>
                        <s:if test="params.category2 == 9">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="9"/>癌症用药</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="9"/>癌症用药</a>
                        </s:else>
                        <s:if test="params.category2 == 10">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="10"/>中药</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="10"/>中药</a>
                        </s:else>
                        <s:if test="params.category2 == 11">
                            <a href="javascript:void (0);" class="active"><input type="hidden" value="11"/>心脑血管</a>
                        </s:if>
                        <s:else>
                            <a href="javascript:void (0);"><input type="hidden" value="11"/>心脑血管</a>
                        </s:else>
                    </div>
                    <!--news-list-->
                    <div id="newsList" class="dataList">
                        <jsp:include page="/pages/news/newDrugIntroductItem.jsp" flush="true"/>
                    </div>
                    
                    <!--分页-->
                    <div id="page8"></div>
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
    <script type="text/javascript">
        $(".newsNavMod a").click(function(){
            var _this = $(this);
            if (_this.hasClass("active")){
                return;
            }
            $(this).addClass('active');
            $(this).siblings().removeClass('active');
            $.ajax({
                type : "GET",
                url : "news_newDrugIntroductItem.html",
                data : {
                    "params.category2"      :  _this.find("input").val()
                },
                dataType : "text",
                success : function(data) {
                    $("#newsList").html(data);
                    $('.brief p').dotdotdot({
                        after:'a.readmore'
                    });
                }
            });
        });
    </script>
</html>