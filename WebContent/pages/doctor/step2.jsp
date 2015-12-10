<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<form id="personageInformation" onsubmit="javascript:return false;">
	<table>
        <colgroup>
            <col width="40%"/>
            <col/>
        </colgroup>
        <tbody>
    		<tr>
    			<td>医师姓名：</td>
    			<td><input type="text" name="params.name"/></td>
    		</tr>
    		<tr>
    			<td>所属医院：</td>
    			<td>
                    <input style="color:rgba(0,0,0,0.87);" id="hospitalName" class="inputText" readonly="readonly" onclick="openDialog('hospital_dialog.html', '#hospitalName', '#hospitalId');"/>
                    <input id="hospitalId" type="hidden" name="params.hospitalId" value="0"/> 
                </td>
    		</tr>
    		<tr>
    			<td>所属科室：</td>
    			<td>
    				<select id="oneLevelDepartment">
    					<option value="0">---请选择---</option>
                        <s:iterator value="oneLevelDepartmentList">
    					   <option value='<s:property value="id"/>'><s:property value="name"/></option>
                        </s:iterator>
    				</select>
    				&nbsp;&nbsp;&nbsp;
    				<select id="twoLevelDepartment" name="params.departmentId">
    					<option value="0">---请选择---</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>职称：</td>
    			<td>
                    <select name="params.titleId">
                        <option value="0">---请选择---</option>
                        <option value="1">主任医师</option>
                        <option value="2">副主任医师</option>
                        <option value="3">主治医师</option>
                        <option value="4">普通医师</option>
                        <option value="5">主任药师</option>
                        <option value="6">副主任药师</option>
                        <option value="7">主管药师</option>
                        <option value="8">初级药师</option>
                    </select>
                </td>
    		</tr>
    		<tr style="height: 82px;">
    			<td>头像：</td>
    			<td>
    				<button onclick="uploadClickEvt(4);">上传头像</button>
                    <p style="line-height: 22px; color: gray;">建议上传白底，穿白大褂本人证件照</p>
                    <input type="hidden" name="params.head"/>
    				<div id="head" style="margin-top: 0;"></div>
    			</td>
    		</tr>
    		<tr>
    			<td>身份证：</td>
    			<td>
    				<button onclick="uploadClickEvt(5);">上传身份证正面照片</button>
                    <input type="hidden" name="params.idCardPath"/>
                    <br>
    				<div id="idCardPath"></div>
    			</td>
    		</tr>
    		<tr>
    			<td>医生职称证：</td>
    			<td>
    				<button onclick="uploadClickEvt(6);">上传医生职称证</button>
                    <input type="hidden" name="params.titleCardPath"/>
                     <br/>
    				<div id="titleCardPath"></div>
    			</td>
    		</tr>
    		<tr>
    			<td>医师执业注册证：</td>
    			<td>
    				<button onclick="uploadClickEvt(7);">上传医师执业注册证-盖章页</button>
                    <input type="hidden" name="params.licenseCardPath"/>
                     <br/>
    				<div id="licenseCardPath"></div>
    			</td>
    		</tr>
	   </tbody>
	</table>
	<button type="button" id="docRigBtn_2"  class="stepAllSub">提&nbsp;&nbsp;&nbsp;&nbsp;交</button>
</form>