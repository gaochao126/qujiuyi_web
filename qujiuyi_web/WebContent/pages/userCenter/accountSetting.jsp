<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userRigTitle">
	<h3>账户设置</h3>
</div>
<div class="changeContent">
	<div class="userRigType2">
		<h3>
			基本信息
		</h3>
		<div class="rigType2Con">
			<table>
				<tbody>
					<tr>
						<td>昵称</td>
						<td>
							<input type="text" value="唐晓幽"/>
						</td>
					</tr>
					<tr>
						<td>性别</td>
						<td>
							<select>
								<option>女</option>
								<option>男</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>出生年月</td>
						<td>
							<input type="date" value="1993-12-03" />
						</td>
					</tr>
				</tbody>
			</table>
			<button class="saveEdite">
				保存
			</button>
			<!-- 点击保存后显示 -->
			<!-- <table>
				<tbody>
					<tr>
						<td>昵称</td>
						<td>
							唐晓幽
						</td>
					</tr>
					<tr>
						<td>性别</td>
						<td>
							女
						</td>
					</tr>
					<tr>
						<td>出生年月</td>
						<td>
							1993-12-03
						</td>
					</tr>
				</tbody>
			</table> -->
		</div>
	</div>
</div>
		