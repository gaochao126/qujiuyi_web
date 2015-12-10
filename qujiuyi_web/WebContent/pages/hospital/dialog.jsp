<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="title">
    <span style="float: left;">医院列表</span>
</div>
<div class="editSerch">
    <form id="serchForm" onsubmit="javascript:return false;">
        <input id="currentPage" type="hidden" name="page.currentPage" value='<s:property value="page.currentPage"/>'/>
        <input id="pageSize" type="hidden" name="page.pageSize" value='<s:property value="page.pageSize"/>'/>
        <table>
            <tr>
                <th>医院名称</th>
                <td><input class="inputText" name="params.name" value='<s:property value="params.name"/>'/></td>
                <td><input class="btn_scanning" type="button" onclick="dialogQueryDataList('hospital_dialog.html')" value="查询"/></td>
            <tr>
        </table>
    </form>
</div>
<div class="editBlock">
    <div class="dataGrid">
        <table>
            <colgroup>
                <col width="70%"/>
                <col width="15%"/>
                <col width="15%"/>
            </colgroup>
            <thead>
                <tr>
                    <th>医院名称</th>
                    <th>医院级别</th>
                    <th style="text-align: center;">选择</th>
                </tr>
            </thead>
            <tbody>
                <s:if test="dataList == null or dataList.isEmpty()">
                    <tr><td colspan="6" style="color: red; text-align: center;">无相关记录</td></tr>
                </s:if>
                <s:else>
                    <s:iterator value="dataList">
                        <tr>
                            <td><s:property value="name"/></td>
                            <td><s:property value="levelName"/></td>
                            <td style="text-align: center;">
                                <input type="radio" name="redio"/>
                                <input type="hidden" name="name" value='<s:property value="name"/>'/>
                                <input type="hidden" name="value" value='<s:property value="id"/>'/>
                            </td>
                        </tr>
                    </s:iterator>
                </s:else>
            </tbody>
        </table>
        <jsp:include page="/pages/page.jsp" flush="true"/>
    </div>
</div>
<script type="text/javascript">
    $(".dialog .dataGrid table tbody tr").click(function(){
    	$(webCache.inputName).val($(this).find("input[name='name']").val());
    	$(webCache.inputValue).val($(this).find("input[name='value']").val());
    	$(".dialogUnderlay").hide();
    	$(".dialogParent").hide();
    	webCache.dialogOpen = 0;
    });
</script>