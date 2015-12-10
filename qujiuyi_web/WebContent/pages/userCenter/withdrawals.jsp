<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
	<div class="userRigTitle">
		<h3>提现</h3>
	</div>
	<div class="changeContent">
		<p class="showBalance">
			账户余额：
			<span>0.00</span>
			元
			<a class="withdrawalsRule" href="javascript:void(0);">提现规则</a>
		</p>
		<div class="withdrawalsItem">
			提现金额：
			<input type="number" class="amountOfMoney"/>
			元
		</div>
		<div class="withdrawalsItem">
			到账账户：将提现至您支付或充值时所选择的支付方
		</div>
		<div class="withdrawalsItem">
			到账时间：审核通过后3~7个工作日内到账
		</div>
		<br />
		<div class="withdrawalsItem">
			<!--账户余额不足时显示余额不足按钮，否则显示提交按钮-->
			<!--<button class="btnOrange myWalletBtn">提&nbsp;&nbsp;交</button>-->
			<button class="btnGray myWalletBtn">余额不足</button>
		</div>
	</div>
		