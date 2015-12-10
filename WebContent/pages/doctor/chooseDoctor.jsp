<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医快速预约科室详情介绍">
        <meta name="keywords" content="791，去就医，快速预约,快速预约科室详情">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-快速预约科室</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/hospitalItem.css">
        <style type="text/css">
            .departmentLev{
                /*border: 1px solid red;*/
                height: 60px;
                line-height: 60px;
                font-size: 18px;
                float: left;
                color: #a3a3a3;
            }
            .firstDep{
                width: 1050px;
                /*border: 1px solid red;*/
                float: left;
                overflow: hidden;
            }
            .firstDep li{
                width: auto;
                padding: 0 10px;
                max-width: 98px;
                height: 60px;
                /*line-height: 60px;*/
                float: left;
                /*border-bottom: 1px solid red;*/
                margin-right: 3px;
                margin-bottom: 10px;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
            .firstDep li a{
                font-size: 18px;
                color: rgba(0, 0, 0, 0.87);
                display: block;
                height: 55px;
                line-height: 60px;
                max-width: 98px;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                /*border-bottom: 1px solid red;*/
            }
            .firstDepAc{
                border-bottom: 2px solid #678ab4;
            }
            .secondDep{
                width: 1050px;
                /*border: 1px solid red;*/
                float: left;
                overflow: hidden;
            }
            .secondDep li{
                float: left;
                height: 60px;
                line-height: 60px;
                width: auto;
                padding: 0 10px;
                max-width: 98px;
                margin-right: 3px;
                margin-bottom: 10px;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
            .secondDep li a{
                font-size: 18px;
                color: rgba(0, 0, 0, 0.87);
                display: block;
                height: 55px;
                line-height: 60px;
                max-width: 98px;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
        </style>
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--content-->
        <div class="content con">
            <!--按科室分类-->
            <div class="con_item">
                <div class="item_tit">按科室分类</div>
                <div class="item_det">
                    <span class="departmentLev">一级科室：</span>
                    <ul class="firstDep">
                        <s:if test="params.departmentId == 0">
                            <li>
                                <input type="hidden" value='0'/>
                                <a href="javascript: void (0);" title="全部" class="firstDepAc">全部</a>
                            </li>
                        </s:if>
                        <s:else>
                            <li>
                                <input type="hidden" value='0'/>
                                <a href="javascript: void (0);" title="全部">全部</a>
                            </li>
                        </s:else>
                        <s:iterator value="oneLevelDepartmentList" status="status">
                            <s:if test="params.departmentId == id">
                                <li>
                                    <input type="hidden" value='<s:property value="id"/>'/>
                                    <a href="javascript: void (0);" title='<s:property value="name"/>' class="firstDepAc"><s:property value="name"/></a>
                                </li>
                            </s:if>
                            <s:else>
                                <li>
                                    <input type="hidden" value='<s:property value="id"/>'/>
                                    <a href="javascript: void (0);" title='<s:property value="name"/>'><s:property value="name"/></a>
                                </li>
                            </s:else>
                        </s:iterator>
                    </ul>
                    <span class="departmentLev">二级科室：</span>
                    <ul class="secondDep">
                        <s:if test="params.childDepartmentId == null or params.childDepartmentId == 0">
                            <li>
                                <input type="hidden" value='0'/>
                                <a href="javascript: void (0);" title="全部" class="firstDepAc">全部</a>
                            </li>
                        </s:if>
                        <s:else>
                            <li>
                                <input type="hidden" value='0'/>
                                <a href="javascript: void (0);" title="全部">全部</a>
                            </li>
                        </s:else>
                        <s:iterator value="twoLevelDepartmentList" status="status">
                            <s:if test="params.childDepartmentId == id">
                                <li>
                                    <input type="hidden" value='<s:property value="id"/>'/>
                                    <a href="javascript: void (0);" title='<s:property value="name"/>' class="firstDepAc"><s:property value="name"/></a>
                                </li>
                            </s:if>
                            <s:else>
                                <li>
                                    <input type="hidden" value='<s:property value="id"/>'/>
                                    <a href="javascript: void (0);" title='<s:property value="name"/>'><s:property value="name"/></a>
                                </li>
                            </s:else>
                        </s:iterator>
                    </ul>
                </div>
            </div>
    
            <!--医生列表-->
            <div class="doctorLis" style="margin-top: 32px;">
                <ul class="docLis">
                    <s:if test="params.titleId == null or params.titleId == 0">
                        <li class="docLisAct">全部<input type="hidden" value="0"/></li>
                    </s:if>
                    <s:else>
                        <li>全部<input type="hidden" value="0"/></li>
                    </s:else>
                    <s:if test="params.titleId == 1">
                        <li class="docLisAct">主任医师<input type="hidden" value="1"/></li>
                    </s:if>
                    <s:else>
                        <li>主任医师<input type="hidden" value="1"/></li>
                    </s:else>
                    <s:if test="params.titleId == 2">
                        <li class="docLisAct">副主任医师<input type="hidden" value="2"/></li>
                    </s:if>
                    <s:else>
                        <li>副主任医师<input type="hidden" value="2"/></li>
                    </s:else>
                    <s:if test="params.titleId == 3">
                        <li class="docLisAct">主治医师<input type="hidden" value="3"/></li>
                    </s:if>
                    <s:else>
                        <li>主治医师<input type="hidden" value="3"/></li>
                    </s:else>
                    <s:if test="params.titleId == 4">
                        <li class="docLisAct">普通医师<input type="hidden" value="4"/></li>
                    </s:if>
                    <s:else>
                        <li>普通医师<input type="hidden" value="4"/></li>
                    </s:else>
                </ul>
                <!--医生详情列表-->
                <ul class="doctorUl">
                    <s:iterator value="doctorList" status="status">
                        <li  onclick="window.location.href='doctor_doctorInfo.html?params.id=<s:property value="id"/>'">
                            <div class="docHead"><a href="javascript: void (0);"><img src='<s:property value="head"/>'></a></div>
                            <div class="docMes">
                                <h1><s:property value="name"/><label class="docZw"><s:property value="titleName"/></label></h1>
                                <span class="hosName"><s:property value="hospitalName"/></span>
                                <span class="departClass"><s:property value="departmentName"/></span>
                            </div>
                            <div class="docPro">
                                <p><s:property value="experience"/></p>
                            </div>
                        </li>
                    </s:iterator>
                </ul>
            </div>
        </div>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
        
        <form id="chooseDoctor" method="post" action="doctor_chooseDoctor.html">
            <input type="hidden" name="params.hospitalId" value='<s:property value="params.hospitalId"/>'/>
            <input type="hidden" name="params.departmentId" value='<s:property value="params.departmentId"/>'/>
            <input type="hidden" name="params.childDepartmentId" value='<s:property value="params.childDepartmentId"/>'/>
            <input type="hidden" name="params.titleId" value='<s:property value="params.titleId"/>'/>
        </form>
    </body>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript">
        $('.docPro').dotdotdot();
        
        // 一级科室点击事件
        $(".firstDep li").live("click", function () {
            if ($(this).hasClass("firstDepAc")) {
                return;
            }
            $(".firstDep li").find('a').removeClass('firstDepAc');
            $(this).find('a').addClass('firstDepAc');
            $("#chooseDoctor").find("input[name='params.departmentId']").val($(this).find("input").val());
            $("#chooseDoctor").find("input[name='params.childDepartmentId']").val("0");
            $("#chooseDoctor").find("input[name='params.titleId']").val("0");
            $("#chooseDoctor").submit();
        });
        
        // 二级科室点击事件
        $(".secondDep li").live("click", function () {
            if ($(this).hasClass("firstDepAc")) {
                return;
            }
            $(this).find('a').addClass('depUlAc');
            $(this).siblings().find('a').parent().find('a').removeClass('depUlAc');
            $("#chooseDoctor").find("input[name='params.childDepartmentId']").val($(this).find("input").val());
            $("#chooseDoctor").find("input[name='params.titleId']").val("0");
            $("#chooseDoctor").submit();
        });
        
        // 职称点击事件
        $(".docLis li").live("click", function () {
            if ($(this).hasClass("docLisAct")) {
                return;
            }
            $(this).addClass('docLisAct');
            $(this).siblings().removeClass('docLisAct');
            $("#chooseDoctor").find("input[name='params.titleId']").val($(this).find("input").val());
            $("#chooseDoctor").submit();
        });
    </script>
</html>