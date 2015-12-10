<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="myWalletTitle">
	<h3>账户余额:<small>0.00</small>元<a href="javascript:void(0);" class="withdrawalsRule">《提现规则》</a></h3>
	<div>
		<button class="btnOrange myWalletBtn">充&nbsp;值</button>
		<button class="btnBlue myWalletBtn">提&nbsp;现</button>
	</div>
</div>
<div class="changeContent">
	<div class="serviceItem">
        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
                <a href="javascript:void (0);" class="active">
                	交易记录
                </a>
                <a href="javascript:void (0);">提现记录  </a>
                <a href="javascript:void (0);">充值记录 </a>
                <a href="javascript:void (0);">退款记录 </a>
            </div>
        </div>
    </div>
    <!--table-->
    <div class="tableDataCon">
    	<!--交易记录table-->
    	<table>
			<thead>
				<tr>
					<th class="firstTh">时间</th>								
					<th>类型</th>
					<th>金额（元）</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td>图文咨询</td>
					<td class="servicePrice operateTd">￥15.00</td>
					
				</tr>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td>预约挂号</td>
					<td class="servicePrice operateTd">￥15.00</td>
					
				</tr>
			</tbody>
		</table>
    	<!--充值记录table，提现记录table相同-->
    	<table style="display: none;">
			<thead>
				<tr>
					<th class="firstTh">时间</th>
					<th>金额</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td class="servicePrice">￥15.00</td>
					<td>审核中</td>
					<td class="operateTd">
						<span>
							<!--<img src="../../images/userCenter/delete.png"/>
							<a href="javascript:;">删除</a>		-->								
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td class="servicePrice">￥15.00</td>
					<td>交易成功</td>
					<td class="operateTd">
						<span>
							<img src="images/userCenter/delete.png"/>
							<a href="javascript:;">删除</a>										
						</span>
					</td>
				</tr>
			
			</tbody>
		</table>
    	<!--退款记录table-->
    	<table style="display: none;">
			<thead>
				<tr>
					<th class="firstTh">时间</th>
					<th>金额</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td class="servicePrice">￥15.00</td>
					<td>交易成功</td>
					<td class="operateTd">
						<span>
							<img src="images/userCenter/delete.png"/>
							<a href="javascript:;">删除</a>										
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<p>2015-09-08</p>
						<p>14:38:12</p>
					</td>
					<td class="servicePrice">￥15.00</td>
					<td>交易成功</td>
					<td class="operateTd">
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
