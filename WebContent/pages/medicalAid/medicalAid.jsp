<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-医疗救助</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
	    <link rel="stylesheet" href="css/tool.css">
	    <link rel="stylesheet" href="css/medicalNews.css">
	    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/firstNAV/medicalAssis.css" />
    </head>
    <body>
        <!--top-->
        <jsp:include page="/pages/index/index_top.jsp" flush="true"/>
        
        <!--导航栏-->
        <jsp:include page="/pages/index/index_nav.jsp" flush="true"/>
    	<!--content-->
    	    <div class="medicalAssCon">
	        <!--left-->
	        <div class="assLeft">
	            <ul class="assTit">
	                <li class="assTit1" style="color: #f7731f;" onclick="changeLi(this);">医疗救助申请&nbsp;&nbsp;&nbsp;&nbsp;&gt;</li>
	                <li class="assTit2" onclick="changeLi(this);">申请填写须知&nbsp;&nbsp;&nbsp;&nbsp;&gt;</li>
	                <li class="assTit3" onclick="changeLi(this);">医疗救助计划&nbsp;&nbsp;&nbsp;&nbsp;&gt;</li>
	                <li class="assTit4" onclick="changeLi(this);">救助对象与范围&nbsp;&nbsp;&gt;</li>
	            </ul>
	        </div>
	
	        <!--right--><!--医疗救助申请书-->
	        <div class="assRig" id="assTit1">
	            <h1>医疗救助申请书</h1>
	            <div class="assRigCon">
	                <!--基本信息-->
	                <div class="assRigCon1">
	                    <h3><i style="background: url('images/medicalAid/1.png')"></i>基本信息</h3>
	                    <div class="assRigCon1Con">
	                        <div class="inputLis">
	                            <span>申请人姓名</span>
	                            <input type="text">
	                        </div>
	                        <div class="inputLis">
	                            <span>与患者关系</span>
	                            <input type="text" placeholder="若申请人为患者本人请填写“本人”">
	                        </div>
	                        <div class="inputLis">
	                            <span>申请人联系电话</span>
	                            <input type="text">
	                        </div>
	                        <div class="inputLis" style="clear: both;margin-top: 25px;">
	                            <span>患者姓名</span>
	                            <input type="text">
	                        </div>
	                        <div class="inputLis" style="margin-top: 25px;">
	                            <span>性别</span>
	                            <select><option>男</option><option>女</option></select>
	                        </div>
	                        <div class="inputLis">
	                            <span>患者联系电话</span>
	                            <input type="text">
	                        </div>
	                        <div class="inputLis">
	                            <span>出生年月</span>
	                            <input type="date">
	                        </div>
	                        <div class="inputLis" style="width: 100%;">
	                            <span>患者所在地</span>
	                            <select name="cmbProvince" id="cmbProvince">
	                            </select>
	                            <select name="cmbCity" id="cmbCity">
	                            </select>
	                            <select name="cmbArea" id="cmbArea">
	                            </select>
	                            <input type="text" id="add_mes">
	                        </div>
	                    </div>
	                </div>
	
	                <!--病情描述-->
	                <div class="assRigCon2">
	                    <h3><i style="background: url('images/medicalAid/2.png')"></i>病情描述</h3>
	                    <div class="assRigCon1Con">
	                        <div class="inputLis">
	                            <span>所患疾病</span>
	                            <input type="text">
	                        </div>
	                        <div class="inputMods">
	                            <span>病情描述</span>
	                            <div class="desInp">
	                                <textarea name="desInp" id="desInp"></textarea>
	                            </div>
	                            <button type="button" id="addPic">添加图片</button>
	                        </div>
	                    </div>
	                </div>
	
	            </div>
	            <button type="button" id="subBtn">立刻提交申请</button>
	        </div>
	
	        <!--申请填写须知-->
	        <div class="assRig none" id="assTit2">
	            <h1 style="background: #2cbade;">申请填写须知</h1>
	            <div class="assRigCon appMod" >
	              	  一、
	                <p>《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定</p>
	                <ol>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                </ol>
	              	  二、
	            </div>
	        </div>
	
	        <!--医疗救助计划-->
	        <div class="assRig none" id="assTit3">
	            <h1 style="background: #68aa1f;">医疗救助计划</h1>
	            <div class="assRigCon appMod" >
	               	 一、
	                <p>《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定</p>
	                <ol>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                </ol>
	               		 二、
	                <p>565665</p>
	            </div>
	        </div>
	
	        <!--援助对象与范围-->
	        <div class="assRig none" id="assTit4">
	            <h1 style="background: #2cbade;">援助对象与范围</h1>
	            <div class="assRigCon appMod" >
	               	 一、
	                <p>《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定《招聘管理制度》中的规定</p>
	                <ol>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                    <li>这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据这是测试数据</li>
	                </ol>
	                	二、
	                <p>565665</p>
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
    <script type="text/javascript" src="js/area.js"></script>
    <script type="text/javascript">
    addressInit('cmbProvince', 'cmbCity', 'cmbArea');
    function changeLi(obj){
        var myCass = null;
        if(obj.className=="assTit1"){
            myCass={
                color:'#f7731f'
            };
            $(obj).css(myCass);
            $(obj).siblings().css("color","#444");
            $('#assTit1').removeClass('none');
            $('#assTit2').addClass('none');
            $('#assTit3').addClass('none');
            $('#assTit4').addClass('none');
        }else if(obj.className=="assTit2"){
            myCass={
                color:'#4a90e2'
            };
            $(obj).css(myCass);
            $(obj).siblings().css("color","#444");
            $('#assTit2').removeClass('none');
            $('#assTit1').addClass('none');
            $('#assTit3').addClass('none');
            $('#assTit4').addClass('none');
        }else if(obj.className=="assTit3"){
            myCass={
                color:'#68aa1f'
            };
            $(obj).css(myCass);
            $(obj).siblings().css("color","#444");
            $('#assTit3').removeClass('none');
            $('#assTit1').addClass('none');
            $('#assTit2').addClass('none');
            $('#assTit4').addClass('none');
        }else if(obj.className=="assTit4"){
            myCass={
                color:'#2cbade'
            };
            $(obj).css(myCass);
            $(obj).siblings().css("color","#444");
            $('#assTit4').removeClass('none');
            $('#assTit1').addClass('none');
            $('#assTit3').addClass('none');
            $('#assTit2').addClass('none');
        }
    }
    </script>
</html>