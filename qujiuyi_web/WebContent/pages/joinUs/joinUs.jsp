<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta charset="utf-8">
        <title>791去就医-加入我们</title>
        <meta name="description" content="791去就医预约挂号官网。">
        <meta name="keywords" content="791，去就医，社区医疗">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta name="renderer" content="webkit">
        <link href="images/791.ico" rel="Shortcut Icon">
        <link rel="stylesheet" href="css/tool.css">
        <link rel="stylesheet" href="css/medicalNews.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	    <link rel="stylesheet" href="css/firstNAV/joinUs.css">
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
	                        <a href="javascript:void(0);" target="_blank">
	                            <img src="images/joinUs/791logo.png" alt="img">
	                            <span class="showMes"></span>
	                        </a>
	                    </div>
	                </li>
	                <li>
	                    <div class="midDiv">
	                        <a href="javascript:void (0);">
	                            <img src="images/joinUs/photo1.png" alt="img">
	                            <span class="showMes">天圣制药集团运动会791公司员工风采</span>
	                        </a>
	                    </div>
	
	                    <div class="midDiv">
	                        <div class="midBot" style="margin-right: 13px;">
	                            <a href="javascript:void (0);">
	                                <img src="images/medical/img4.jpg" alt="img">
	                                <span class="showMes">上海已着手应对"独生子女父母养老"</span>
	                            </a>
	                        </div>
	                        <div class="midBot">
	                            <a href="javascript:void (0);">
	                                <img src="images/medical/img5.jpg" alt="img">
	                                <span class="showMes">危害足部健康的十大状况</span>
	                            </a>
	                        </div>
	                    </div>
	                </li>
	                <li>
	                    <div class="rigMod">
	                        <a href="javascript:void (0);">
	                            <img src="images/medical/img3.jpg" alt="img">
	                            <span class="showMes">世卫组织区域委员会年度会议纪要</span>
	                        </a>
	                    </div>
	                    <div class="rigMod">
	                        <a href="javascript:void (0);">
	                            <img src="images/medical/img6.jpg" alt="img">
	                            <span class="showMes">新农合筹资保障水平双提高</span>
	                        </a>
	                    </div>
	                </li>
	            </ul>
	        </div>
	        <!--banner-->
	        <div class="contentUs">
	            <div class="topBanner"><button type="button" id="joinUsBtn">hr@51791.com</button></div>
	            <!--我们需要-->
	            <div class="contentUsLis">
	                <h1>我们需要</h1>
	                <ul class="numLis">
	                    <li style="background: url('images/joinUs/No1.png') 1px no-repeat;" class="on" id="one1" onclick='setTab("one",1,8)'>WEB前端工程师</li>
	                    <li style="background: url('images/joinUs/No2.png') 1px no-repeat;" id="one2" onclick='setTab("one",2,8)'>产品经理</li>
	                    <li style="background: url('images/joinUs/No3.png') 1px no-repeat;" id="one3" onclick='setTab("one",3,8)'>测试工程师</li>
	                    <li style="background: url('images/joinUs/No4.png') 1px no-repeat;" id="one4" onclick='setTab("one",4,8)'>安卓开发工程师</li>
	                    <li style="background: url('images/joinUs/No5.png') 1px no-repeat;" id="one5" onclick='setTab("one",5,8)'>IOS开发工程师</li>
	                    <li style="background: url('images/joinUs/No6.png') 1px no-repeat;" id="one6" onclick='setTab("one",6,8)'>JAVA工程师</li>
	                    <li style="background: url('images/joinUs/No7.png') 1px no-repeat;" id="one7" onclick='setTab("one",7,8)'>运营主管</li>
	                    <li style="background: url('images/joinUs/No8.png') 1px no-repeat;" id="one8" onclick='setTab("one",8,8)'>UI设计师</li>
	                </ul>
	            </div>
	            <!--职位描述-->
	            <!--前端工程师-->
	            <div class="contentUsLis block zhiweimes" id="cont_one_1">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No1.png"><span class="zhiwei">前端工程师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--产品经理-->
	            <div class="contentUsLis zhiweimes" id="cont_one_2">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No2.png"><span class="zhiwei">产品经理</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--测试工程师-->
	            <div class="contentUsLis zhiweimes" id="cont_one_3">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No3.png"><span class="zhiwei">测试工程师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--安卓开发工程师-->
	            <div class="contentUsLis zhiweimes" id="cont_one_4">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No4.png"><span class="zhiwei">安卓开发工程师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--IOS开发工程师-->
	            <div class="contentUsLis zhiweimes" id="cont_one_5">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No5.png"><span class="zhiwei">IOS开发工程师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--JAVA工程师-->
	            <div class="contentUsLis zhiweimes" id="cont_one_6">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No6.png"><span class="zhiwei">JAVA工程师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--运营主管-->
	            <div class="contentUsLis zhiweimes" id="cont_one_7">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No7.png"><span class="zhiwei">运营主管</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
	            </div>
	
	            <!--UI设计师-->
	            <div class="contentUsLis zhiweimes" id="cont_one_8">
	                <h1>职位描述</h1>
	                <h3><img src="images/joinUs/No8.png"><span class="zhiwei">UI设计师</span><span class="workAdd">工作地点：重庆</span></h3>
	                <h2>岗位职责：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、负责web前端框架的设计和实现，根据UI设计师提交的界面设计，配合后台开发人员实现产品功能与流程操作；</li>
	                    <li>2、持续优化表现层在各类浏览器及终端的兼容性适配及性能调优；</li>
	                    <li>3、建立公司级前端开发规范并进行推广。</li>
	                </ul>
	                <h2>任职资格：</h2>
	                <ul class="zhiweiLis">
	                    <li>1、3年级以上web前端开发经验，深刻理解web标准，在可用性、可访问性、浏览器兼容性等方面有实践经验；</li>
	                    <li>2、精通HTML,HTML5,Javascript,CSS3,jQuery,BootStrap等常用前端技术，了解Ajax开发技术；</li>
	                    <li>3、有HTML5、CSS3、ZEPTO开发经验优先，有响应式布局设计（跨屏，跨端）和浏览器兼容性处理优先；</li>
	                    <li>4、熟练使用前端开发工具WebSrorm,Sublime,HBuilder等；</li>
	                    <li>5、优秀的沟通能力，较强的责任心和团队精神，能够独当一面完成设计和编码。</li>
	                    <li>有意者请发简历至：hr@51791.com</li>
	                </ul>
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
    function setTab(name,m,n){
//      $(this).addClass('numLisActive');
//      $(this).siblings().removeClass('numLisActive');
      for( var i=1;i<=n;i++){
          var menu = document.getElementById(name+i);
          var showDiv = document.getElementById("cont_"+name+"_"+i);
          menu.className = i==m ?"numLisActive":"";
          showDiv.style.display = i==m?"block":"none";
      }
  }
    </script>
</html>