<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:iterator>
    <div class="userRigTitle">
		<h3>就诊人管理</h3>
	</div>
	<div class="changeContent">
		<div class="serviceItem">
	        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
	            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
	                <a href="javascript:void (0);" class="active">
	                	常用就诊人列表
	                </a>
	                 <a href="javascript:void (0);" >
	                	常用就诊人列表
	                </a>
	            </div>
	        </div>
	        <a class="addPatient">
	        	[添加] 
	        </a>
	    </div>
	    <!--table-->
	    <div class="tableDataCon">
	    	<table>
				<thead>
					<tr>
						<th>姓名</th>
						<th>性别</th>
						<th>身份证号</th>
						<th>年龄</th>
						<th>手机号</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							唐悠悠
						</td>
						<td>
							女
						</td>
						<td>500***********8234</td>
						<td>25</td>
						<td>189****8978</td>
						<td class="operateTd">
							<span>
								<img src="images/userCenter/edit_2.png"/>
								<a href="javascript:;">修改</a>										
							</span>
							&nbsp;&nbsp;&nbsp;
							<span>
								<img src="images/userCenter/delete.png"/>
								<a href="javascript:;">删除</a>										
							</span>
						</td>
					</tr>
				</tbody>
			</table>
	    </div>
	</div>
	<!-- 弹窗 -->
	<div class="popWBackground">
		<div class="popWindow">
			<a class="popWClose"></a>
			<div class="popWContent popBorder">
				<div class="popCon">
					<h3>添加常用就诊人</h3>
					<p class="addPatientHint">为了您的正确就诊，您所填的就诊人信息必须真实有效，且预约挂号、配药服务均为实名制服务</p>
					<table class="addPatientTable">
						<tbody>
							<tr>
								<td class="addPItemName"><span>*</span>真实姓名</td>
								<td class="addPItemDetail"><input class="addPinput" type="text"/></td>
							</tr>
							<tr>
								<td class="addPItemName"><span>*</span>性别</td>
								<td class="addPItemDetail"></td>
							</tr>
							<tr>
								<td class="addPItemName"><span>*</span>身份证号</td>
								<td class="addPItemDetail"><input class="addPinput" type="text"/></td>
							</tr>
							<tr>
								<td class="addPItemName"><span>*</span>手机号</td>
								<td class="addPItemDetail"><input class="addPinput" type="text"/></td>
							</tr>
							<tr>
								<td class="setDefault">
									<label>
										<input type="checkbox"/>
										设为默认就诊人
									</label>
								</td>
							</tr>
							<tr>
								<td class="setDefault">
									<button class="btnOrange myWalletBtn" style="margin: 0px;">保&nbsp;存</button>
								</td>
							</tr>
						</tbody>
					</table>
					<br />
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".addPatient").click(function(){
			$(".popWBackground").show();
			$(".popWindow").show();
		})
		$('.popWClose').click(function(){
			$(".popWBackground").hide();
			$(".popWindow").hide();
		})
	</script>		
</s:iterator>