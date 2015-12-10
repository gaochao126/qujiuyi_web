<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userRigTitle">
	<h3>我的预约</h3>
</div>
<div class="changeContent">
	<div class="serviceItem">
        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
                <a href="javascript:void (0);" class="active">
                	待就诊(<span>3</span>)
                </a>
            </div>
        </div>
    </div>
    <!--table-->
    <div class="tableDataCon">
    	<table>
			<thead>
				<tr>
					<th>订单号</th>
					<th>下单时间</th>
					<th>预约信息</th>
					<th>就诊时间</th>
					<th>就诊人</th>
					<th>金额(元)</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
                <s:iterator value="dataList">
                    <tr>
                        <td><s:property value="id"/></td>
                        <td>
                            <p><s:date name="registerTime" format="yyyy-MM-dd"/></p>
                            <p><s:date name="registerTime" format="HH:mm:ss"/></p>
                        </td>
                        <td>
                            <p><span><s:property value="doctorName"/></span>专家</p>
                            <p><s:property value="hospitalName"/></p>
                            <p><s:property value="departmentName"/></p>
                        </td>
                        <td>
                            <p><s:date name="seeDoctorDate" format="yyyy-MM-dd"/></p>
                            <s:if test="timeZone == 0">
                                <p>上午</p>
                            </s:if>
                            <s:elseif test="timeZone == 1">
                                <p>下午</p>
                            </s:elseif>
                            <s:elseif test="timeZone == 2">
                                <p>晚上</p>
                            </s:elseif>
                        </td>
                        <td><s:property value="patientName"/></td>
                        <td class="servicePrice">￥<s:property value="price"/></td>
                        <td>待就诊</td>
                        <td>
                            <p>
                                <img src="images/userCenter/search2.png"/>
                                <a href="javascript:;">查看</a>                                       
                            </p>
                            <p>
                                <img src="images/userCenter/cancle.png"/>
                                <a href="javascript:;">取消预约</a>                                     
                            </p>
    
                        </td>
                    </tr>
                </s:iterator>
			</tbody>
		</table>
    </div>
</div>