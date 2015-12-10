<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator>
    <div class="userRigTitle">
		<h3>我的评价</h3>
	</div>
	<div class="changeContent">
		<div class="serviceItem">
	        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
	            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
	                <a href="javascript:void (0);" class="active">
	                	已评价
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
	    		<section>
	    			<div>
	    				<p style="color: rgba(0,0,0,0.57)">我的总体评价:</p>
	    			</div>
	    			<img src="images/userCenter/verysatisfied_1.png"/>
	    		</section>
	    		<section id="fillEva" style="display: block;">
	    			<div style="width: 87px;">
	    				<p style="padding-top: 10px; color: rgba(0,0,0,0.57);">
	    					评&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;语:
	    				</p>
	    			</div>
	    			<section>
	    				<p style="text-align: left;">
	    					通过医生细心的问诊，感觉心里放心多了，首次在网上预约挂号看医生，感觉还不错。
	    				</p>
	    			</section>
	    		</section>
	    	</div>
	    </div>
	</div>
</s:iterator>