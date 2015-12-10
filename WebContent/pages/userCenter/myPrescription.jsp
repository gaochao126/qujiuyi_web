<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="userRigTitle">
	<h3>我的配药</h3>
</div>
<div class="changeContent">
	<div class="serviceItem">
        <div class="navLists" id="navLists" style="position: absolute;left: 0;">
            <div class="lisNav" id="lisNav" style="position: absolute;left: 0;">
                 <a href="javascript:void (0);" class="active">
                	 已申请(<span>1</span>)
                 </a>
                 <a href="javascript:void (0);">
                	 已完成(<span>2</span>)
                 </a>
            </div>
        </div>
    </div>
    <!--table-->
    <div class="tableDataCon">
    	<table>
			<thead>
				<tr>
					<th>下单时间</th>
					<th>配药信息</th>
					<th>就诊人</th>
					<th>药品合计（元）</th>
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
					<td>
						<p><span>金戈</span>专家</p>
						<p>重庆市第五人民医院</p>
						<p>小儿麻痹科</p>
					</td>
					<td>小幽</td>
					<td class="servicePrice">￥15.00</td>
					<td>已完成</td>
					<td>
						<p>
							<img src="images/userCenter/search2.png"/>
							<a href="javascript:;">查看</a>										
						</p>
						<p>
							<img src="images/userCenter/delete.png"/>
							<a href="javascript:;">删除</a>										
						</p>

					</td>
				</tr>
			</tbody>
		</table>
    </div>
</div>