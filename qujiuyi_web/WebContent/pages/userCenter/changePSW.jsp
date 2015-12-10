<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userRigTitle">
	<h3>修改密码</h3>
</div>
<div class="changeContent">
	<div class="userRigType2">
		<h3>
			修改密码
		</h3>
		<div class="rigType2Con">
			<table>
				<tbody>
					<tr>
						<td>旧密码</td>
						<td>
							<input type="password" placeholder="请输入旧密码"/>
							<!--<p>*&nbsp;请输入原始登录密码</p>-->
						</td>
					</tr>
					<tr>
						<td>新密码</td>
						<td>
							<input type="password" placeholder="请输入新密码"/>
							<!--<p>*&nbsp;新密码不能为空</p>-->
						</td>
					</tr>
					<tr>
						<td>确认新密码</td>
						<td>
							<input type="password" placeholder="请再次输入新密码"/>
							<!--<p>*&nbsp;两次密码不一致</p>-->
						</td>
					</tr>
				</tbody>
			</table>
			<button class="saveEdite">
				保存
			</button>
		</div>
	</div>
</div>
		