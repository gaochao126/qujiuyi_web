<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="791去就医科室详情介绍">
        <meta name="keywords" content="791，去就医，科室,科室详情">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <title>791去就医-科室详情</title>
        <meta charset="utf-8">
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/hospitalItem.css">
        <style type="text/css">
            .item_det h1 {
                font-weight: normal;
                color: #558ec5;
            }
    
            .depAct {
                width: auto;
                float: left;
                margin-bottom: 30px;
            }
    
            .depAct li {
                /*border: 1px solid red;*/
                padding: 0 10px 0 10px;
                width: auto;
                height: 50px;
                line-height: 50px;
                font-size: 20px;
                color: rgba(0, 0, 0, 0.87);
                /*background: #dce9f9;*/
                text-align: center;
                vertical-align: middle;
            }
    
            .depAct li img {
                vertical-align: middle;
                margin-right: 10px;
            }
    
            .depUl {
                clear: both;
                /*border: 1px solid red;*/
                width: 90%;
                height: auto;
                overflow: hidden;
            }
    
            .depUl li {
                float: left;
                width: 170px;
                height: 60px;
                /*line-height: 70px;*/
                padding-top: 10px;
                /*border-bottom: 1px solid red;*/
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
    
            .depUl li a {
                display: block;
                float: left;
                /*border: 1px solid red;*/
                font-size: 18px;
                color: rgba(0, 0, 0, 0.87);
                height: 50px;
                line-height: 50px;
                width: auto;
                max-width: 150px;
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
            }
    
            .depUl li a:hover {
                border-bottom: 2px solid #658ab4;
            }
    
            .depUlAc {
                border-bottom: 2px solid #658ab4;
            }
        </style>
        <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
        <script type="text/javascript" src="js/tools.js"></script>
        <!--多行文本超出...显示-->
        <script type="text/javascript" src="js/jquery.dotdotdot.min.js"></script>
    
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--医院详情模块-->
        <div class="content con">
            <!--医院介绍-->
            <div class="con_item">
                <!--医院名称-->
                <div class="item_tit"><span id="hosName">重庆市第五人民医院</span></div>
                <!--医院信息介绍-->
                <div class="item_det">
                    <div class="synopsis">
                        <h1><s:property value="department.name"/></h1><br/>
    
                        <h3>简介：</h3><br/>
                        <s:property escape="false" value="department.description"/>
                    </div>
                </div>
            </div>
    
            <!--科室列表-->
            <div class="department" style="border: none;">
                <div class="item_tit"><span>按科室挂号</span></div>
                <div class="item_det">
                    <ul class="depAct">
                        <li><img src='images/icon/<s:property value="department.icon"/>'><s:property value="department.name"/></li>
                    </ul>
                    <ul class="depUl">
                        <s:if test="params.childDepartmentId == null or params.childDepartmentId == 0">
                            <li>
                                <input type="hidden" value='0'/>
                                <a href="javascript: void (0);" title="全部" class="depUlAc">全部</a>
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
                                    <a href="javascript: void (0);" title='<s:property value="name"/>' class="depUlAc"><s:property value="name"/></a>
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
            <div class="doctorLis">
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
                        <li onclick="window.location.href='doctor_doctorInfo.html?params.id=<s:property value="id"/>'">
                            <div class="docHead"><a href="javascript: void (0);"><img src='<s:property value="head"/>'></a></div>
                            <div class="docMes">
                                <h1><s:property value="name"/><label class="docZw"><s:property value="titleName"/></label></h1>
                                <span class="hosName"><s:property value="hospitalName"/></span>
                                <span class="departClass"><s:property value="departmentName"/></span>
                            </div>
                            <div class="docPro">
                                <p>毕业于重庆医科大学，从医10余年，擅长治疗心血管疾病、高血压、肺心病等危急重症抢救。</p>
                            </div>
                        </li>
                    </s:iterator>
                </ul>
            </div>
        </div>
        
        <!--footer-->
        <jsp:include page="/pages/index/index_footer.jsp" flush="true"/>
        
        <form id="chooseDoctor" method="post" action='department_departmentInfo.html?params.hospitalId=<s:property value="params.hospitalId"/>&params.departmentId=<s:property value="params.departmentId"/>'>
            <input type="hidden" name="params.childDepartmentId" value='<s:property value="params.childDepartmentId"/>'/>
            <input type="hidden" name="params.titleId" value='<s:property value="params.titleId"/>'/>
        </form>
    </body>
    <script type="text/javascript">
        $(function () {
            $('.docPro').dotdotdot();
            $(".depUl li").live("click", function () {
                $("#chooseDoctor").find("input[name='params.childDepartmentId']").val($(this).find("input").val());
                $("#chooseDoctor").find("input[name='params.titleId']").val("0");
                $("#chooseDoctor").submit();
            });
         	// 职称点击事件
            $(".docLis li").live("click", function () {
                $("#chooseDoctor").find("input[name='params.titleId']").val($(this).find("input").val());
                $("#chooseDoctor").submit();
            });
        });
    </script>
</html>