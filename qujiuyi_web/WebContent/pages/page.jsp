<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="page">
	找到<s:property value="page.totalRecord"/>条数据，共<s:property value="page.totalPage"/>页
    <s:if test="page.currentPage != 1">
        <input class="pageTurn" onclick='javascript:turnPage(<s:property value="page.currentPage - 1"/>)' type="button" value="上一页"/>
    </s:if>
    <s:if test="page.totalPage <= 5">
        <s:if test="page.totalPage >= 1">
            <input class="pageNumber" onclick='javascript:turnPage(1)' type="button" value="1"/>
        </s:if>
        <s:if test="page.totalPage >= 2">
            <input class="pageNumber" onclick='javascript:turnPage(2)' type="button" value="2"/>
        </s:if>
        <s:if test="page.totalPage >= 3">
            <input class="pageNumber" onclick='javascript:turnPage(3)' type="button" value="3"/>
        </s:if>
        <s:if test="page.totalPage >= 4">
            <input class="pageNumber" onclick='javascript:turnPage(4)' type="button" value="4"/>
        </s:if>
        <s:if test="page.totalPage >= 5">
            <input class="pageNumber" onclick='javascript:turnPage(6)' type="button" value="5"/>
        </s:if>
    </s:if>
    <s:else>
        <s:if test="page.currentPage == page.totalPage">
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 4"/>)' type="button" value='<s:property value="page.currentPage - 4"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 3"/>)' type="button" value='<s:property value="page.currentPage - 3"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 2"/>)' type="button" value='<s:property value="page.currentPage - 2"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 1"/>)' type="button" value='<s:property value="page.currentPage - 1"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage"/>)' type="button" value='<s:property value="page.currentPage"/>'/>
        </s:if>
        <s:elseif test="page.currentPage == page.totalPage - 1">
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 3"/>)' type="button" value='<s:property value="page.currentPage - 3"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 2"/>)' type="button" value='<s:property value="page.currentPage - 2"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 1"/>)' type="button" value='<s:property value="page.currentPage - 1"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage"/>)' type="button" value='<s:property value="page.currentPage"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage + 1"/>)' type="button" value='<s:property value="page.currentPage + 1"/>'/>
        </s:elseif>
        <s:elseif test="page.currentPage > 2 && page.currentPage <= page.totalPage - 2">
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 2"/>)' type="button" value='<s:property value="page.currentPage - 2"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage - 1"/>)' type="button" value='<s:property value="page.currentPage - 1"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage"/>)' type="button" value='<s:property value="page.currentPage"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage + 1"/>)' type="button" value='<s:property value="page.currentPage + 1"/>'/>
            <input class="pageNumber" onclick='javascript:turnPage(<s:property value="page.currentPage + 2"/>)' type="button" value='<s:property value="page.currentPage + 2"/>'/>
        </s:elseif>
        <s:elseif test="page.currentPage <= 2">
            <input class="pageNumber" onclick='javascript:turnPage(1)' type="button" value="1"/>
            <input class="pageNumber" onclick='javascript:turnPage(2)' type="button" value="2"/>
            <input class="pageNumber" onclick='javascript:turnPage(3)' type="button" value="3"/>
            <input class="pageNumber" onclick='javascript:turnPage(4)' type="button" value="4"/>
            <input class="pageNumber" onclick='javascript:turnPage(5)' type="button" value="5"/>
        </s:elseif>
    </s:else>
    <s:if test="page.totalPage != 0">
        <s:if test="page.currentPage != page.totalPage">
            <input class="pageTurn" onclick='javascript:turnPage(<s:property value="page.currentPage + 1"/>)' type="button" value="下一页"/>
        </s:if>
        <span>&nbsp;跳到&nbsp;</span>
        <input type="text" onkeyup="this.value=this.value.replace(/[^\w]/g,'')" onkeydown="this.value=this.value.replace(/[^\w]/g,'')" style="width:25px;height:20px;text-align: center;cursor:text;"/>
        <span>&nbsp;页&nbsp;</span>
        <input class="pageGo" type="button" value="GO"/>
    </s:if>
    <script type="text/javascript">
    	$(".pageNumber").each(function(){
    		if ($(this).val() == '<s:property value="page.currentPage"/>') {
    			$(this).css("background-position", "0 0");
    		}
    	});
    	$(".pageGo").click(function(){
    		var page = $(this).parent().find("input[type=text]").val();
    		var totalPage = parseInt('<s:property value="page.totalPage"/>');
    		page = page == 0 ? 1 : page;
    		page = page > totalPage ? totalPage : page;
    		turnPage(page);
    	});
    </script>
</div>