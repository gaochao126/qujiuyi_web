<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userRigTitle">
	<h3>我的评价</h3>
</div>
<div class="changeContent">
	<div class="serviceItem">
        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
                <a href="javascript:void (0);" class="active">
                	待评价
                </a>
            </div>
        </div>
    </div>
    <!--评价-->
    <div class="tableDataCon">
    	<div class="toBeEvaItem">
    		<div class="EvaDocInfo">
	    		<img src="images/userCenter/zhanqunling_head.png"/>
	    		<div>
	    			<p>
	    				<span>金戈</span>&nbsp;专家
	    			</p>
	    			<p>小儿呼吸科</p>
	    			<p>重庆市第五人民医院</p>
	    		</div>
    		</div>
    		<a href="javascript:void(0);">关闭</a>
    		<section>
    			<div>
    				<p>我的总体评价:</p>
    				<p  class="lightGray">点击笑脸评价:</p>
    			</div>
    			<!--点击笑脸切换蓝色图片如：satisfied_2（灰色）satisfied_1（蓝色）-->
    			<img src="images/userCenter/verysatisfied_1.png" data-satisfy="1"/>			    			
    			<img src="images/userCenter/satisfied_2.png" data-satisfy="2"/>
    			<img src="images/userCenter/ordinary_2.png" data-satisfy="3"/>
    		</section>
    		<!-- 填写评价内容 -->
    		<section id="fillEva">
    			<div style="width: 87px;">
    				<p style="padding-top: 10px;">
    					<span>*</span>
    					评&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语:
    				</p>
    			</div>
    			<section>
    				<textarea class="inputEva"></textarea>
    				<label for="anonymous" class="chooseAnonymous">
    					<input type="checkbox" id="anonymous"/>
    					&nbsp;&nbsp;匿名发表
    				</label>
    				<input type="submit" value="提交" class="submitEva"/>
    			</section>
    		</section>
    	</div>
    </div>
</div>
<script>
    $(".toBeEvaItem a").click(function(){
    	$("#fillEva").hide();
    	$(this).hide();
    })
    $(".toBeEvaItem section img").click(function(){
    	$(".toBeEvaItem a").show();
    	$("#fillEva").show();
    })
</script>