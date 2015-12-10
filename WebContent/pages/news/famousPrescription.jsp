<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="utf-8">
    <title>791去就医-名医名方</title>
    <meta name="description" content="791去就医预约挂号官网。">
    <meta name="keywords" content="791，去就医，医疗动态">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <link href="images/791.ico" rel="Shortcut Icon">
    <link rel="stylesheet" href="css/tool.css">
    <link rel="stylesheet" href="css/medicalNews.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <style type="text/css">
        .docListMod{position: relative;width: 355px;height: 740px;overflow: auto;}
        .doctorList{width: 100%;height: 165px;overflow: hidden;margin-bottom: 20px;}
        .docHead{width: 140px;height: 165px;overflow: hidden;float: left;margin-left: 25px;}
        .docHead img{width: 140px;height: 165px;}
        .docMess{width: 170px;height: 165px;overflow: hidden;float: right;}
        .docMess h1{font-size: 18px;color: #4a90e2;padding: 0;margin-bottom: 15px;}
        .docMess h3{font-size: 14px;color: #333;width: 100%;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height: 25px;}
        .docTag{margin-top: 10px;display: block;width: 100%;height: 16px;background: url("images/medical/tab.png") no-repeat;padding-left: 20px;color: rgba(0, 0, 0, 0.41);}
        .docMess p{width:95%;height: 40px;color: rgba(0, 0, 0, 0.40);margin-top:10px;}
        .shareAndCom{position:absolute;width: 220px;height: 35px;right: 0;top: 0;}
        .shareAndCom span{color: #4A90E2;}
        .shareTo{width: 140px;height: auto;display: block;float: right;overflow: hidden;vertical-align: middle;}
        .shareTo button{width: 20px;height: 20px;border: none;outline: none;cursor: pointer;margin-left: 10px;line-height: 20px;vertical-align: middle;}
        .shareToQQ{background: url("images/medical/qq.png") no-repeat;background-size: cover;}
        .shareToWeiXin{background: url("images/medical/weixin.png") no-repeat;background-size: cover;}
        .shareToSina{background: url("images/medical/weibo.png") no-repeat;background-size: cover;}
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
            <div class="leftCon" style="height: 820px;">
                <h1>名中医推荐</h1>
                <div class="docListMod">
                    <div class="doctorList">
                        <div class="docHead"><img src="images/medical/doctor_head_1.png" alt="doc"></div>
                        <div class="docMess">
                            <h1>金戈</h1>
                            <h3>重庆市第五人民医院</h3>
                            <h3>小儿呼吸科</h3>
                            <span class="docTag">标签：</span>
                            <p title="银屑病、胎记、慢性湿疹、荨麻疹、银屑病、胎记、慢性湿疹、荨麻疹">银屑病、胎记、慢性湿疹、荨麻疹、银屑病、荨麻疹疹疹</p>
                        </div>
                    </div>
                    <div class="doctorList">
                        <div class="docHead"><img src="images/medical/doctor_head_1.png" alt="doc"></div>
                        <div class="docMess">
                            <h1>金戈</h1>
                            <h3>重庆市第五人民医院</h3>
                            <h3>小儿呼吸科</h3>
                            <span class="docTag">标签：</span>
                            <p title="银屑病、胎记、慢性湿疹、荨麻疹、银屑病、胎记、慢性湿疹、荨麻疹">银屑病、胎记、慢性湿疹、荨麻疹、银屑病、荨麻疹疹疹</p>
                        </div>
                    </div>
                    <div class="doctorList">
                        <div class="docHead"><img src="images/medical/doctor_head_2.png" alt="doc"></div>
                        <div class="docMess">
                            <h1>金戈</h1>
                            <h3>重庆市第五人民医院</h3>
                            <h3>小儿呼吸科</h3>
                            <span class="docTag">标签：</span>
                            <p title="银屑病、胎记、慢性湿疹、荨麻疹、银屑病、胎记、慢性湿疹、荨麻疹">银屑病、胎记、慢性湿疹、荨麻疹、银屑病、荨麻疹疹疹</p>
                        </div>
                    </div>
                    <div class="doctorList">
                        <div class="docHead"><img src="images/medical/doctor_head_2.png" alt="doc"></div>
                        <div class="docMess">
                            <h1>金戈</h1>
                            <h3>重庆市第五人民医院</h3>
                            <h3>小儿呼吸科</h3>
                            <span class="docTag">标签：</span>
                            <p title="银屑病、胎记、慢性湿疹、荨麻疹、银屑病、胎记、慢性湿疹、荨麻疹">银屑病、胎记、慢性湿疹、荨麻疹、银屑病、荨麻疹疹疹</p>
                        </div>
                    </div>
                    <div class="doctorList">
                        <div class="docHead"><img src="images/medical/doctor_head_1.png" alt="doc"></div>
                        <div class="docMess">
                            <h1>金戈</h1>
                            <h3>重庆市第五人民医院</h3>
                            <h3>小儿呼吸科</h3>
                            <span class="docTag">标签：</span>
                            <p title="银屑病、胎记、慢性湿疹、荨麻疹、银屑病、胎记、慢性湿疹、荨麻疹">银屑病、胎记、慢性湿疹、荨麻疹、银屑病、荨麻疹疹疹</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--right-->
            <div class="rightCon">
                <!--nav-->
                <div class="newsNavMod" style="position: relative;">
                    <s:if test="params.category2 == ''">
                        <a href="javascript:void (0);" class="active" style="float:left;"><input type="hidden" value="0"/>全部</a>
                    </s:if>
                    <s:else>
                        <a href="javascript:void (0);" style="float:left;"><input type="hidden" value="0"/>全部</a>
                    </s:else>
                    <div style="width: 730px; float: left; position: relative; height: 60px;overflow: hidden;">
                        <div id="menu_items" style="width:730px; position: absolute; left: 0; top: 0;">
                            <s:iterator value="twoLevelNewsKindList">
                                <s:if test="params.category2 == id">
                                    <a href="javascript:void (0);" class="active"><input type="hidden" value='<s:property value="id"/>'/><s:property value="name"/></a>
                                </s:if>
                                <s:else>
                                    <a href="javascript:void (0);"><input type="hidden" value='<s:property value="id"/>'/><s:property value="name"/></a>
                                </s:else>
                            </s:iterator>
                        </div>
                        <div style="width:730px; height:10px; position: absolute; left: 0; top: 50px; z-index: 10000;"></div>
                    </div>
                    <div id="menu_change_btn" style="width:24px; height: 50px; background: url(images/common/change_left_btn.png);float: right;"></div>
                </div>
                <!--news-list-->
                <div id="newsList" class="dataList">
                    <jsp:include page="/pages/news/famousPrescriptionItem.jsp" flush="true"/>
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
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        <!--滚动条美化-->
        $(window).load(function(){
            $(".docListMod").mCustomScrollbar({theme:"minimal","callbacks":{
                whileScrolling:function(){
//                    console.log($(this).children().offset());
//                    console.log($("#mCSB_1_dragger_vertical").offsetHeight);
                }
//                onTotalScrollOffset: 1
            }});
        });
        <!--多行省略号-->
        $('.docMess p').dotdotdot({
            after:'a.readmore'
        });
    });
    
    // 二级菜单切换事件
    var activeObj = $(".newsNavMod .active");
    $("#menu_change_btn").click(function(){
        var height = parseInt($("#menu_items").css("height").replace("px", ""));
        height = parseInt(height / 50) * 50;
        var top =  parseInt($("#menu_items").css("top").replace("px", ""));
        top = 50 - top == height ? 0 : top - 50;
        $("#menu_items").css("top", top + "px");
        
        if (activeObj.find("input").val() != "0") {
            var _top = activeObj.position().top;
            if (_top != 0 - top) {
                activeObj.removeClass("active");
            } else {
                activeObj.addClass("active");
            }
        }
    });
    
    $(".newsNavMod a").click(function(){
        activeObj = $(this);
        var _this = $(this);
        if (_this.hasClass("active")){
            return;
        }
        $(".newsNavMod a").removeClass('active');
        $(this).addClass('active');
        $.ajax({
            type : "GET",
            url : "news_famousPrescriptionItem.html",
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