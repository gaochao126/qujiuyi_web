<%@ page language="java" import="java.lang.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!--top-->
 <div class="hisRogTop">
                  <div class="doctorOk">
                  <!-- <div class="doctorOk" style="display: none;">  -->
                        <img src="images/firstNAV/doctor_head_1.png" alt="doc">
						<s:if test="dataObj.titleId == 1">
							<p><span class="docNames"><s:property value="dataObj.name"/></span>主任医师</p>
						</s:if>
						<s:elseif test="dataObj.titleId == 2">
							<p><span class="docNames"><s:property value="dataObj.name"/></span>副主任医师</p>
						</s:elseif>
                       <s:elseif test="dataObj.titleId == 3">
							<p><span class="docNames"><s:property value="dataObj.name"/></span>主治医师</p>
						</s:elseif>
						<s:elseif test="dataObj.titleId == 4">
							<p><span class="docNames"><s:property value="dataObj.name"/></span>普通医师</p>
						</s:elseif>

                        <p><span><s:property value="dataObj.departmentName"/></span><s:property value="dataObj.hospitalName"/></p>

                        <button type="button">评价</button>
                    </div>
                    <!-- <div class="doctorNo">
                        <p>系统正在分配医生，医生预计<i>6</i>分钟内回复...</p>
                        <button type="button" disabled>评价</button>
                    </div> -->
                </div>
                <!--con-->
                <form action="consult_submitChat.html" id="consultChatForm" method="post">
               		<input type="hidden" name="params.sender" value=""><!-- 发送者ID -->
               		<input type="hidden" name="params.receiver" value=""><!-- 接受者ID -->
               		<input type="hidden" name="params.serviceId" value=""><!-- 服务id -->
               		<input type="hidden" name="params.chatType" value=""><!-- 聊天类型1、文本；2、图片；3、语音 -->
               		<input type="hidden" name="params.senderType" value=""><!-- 发送者类型2、患者 -->
               		<input type="hidden" name="params.receiverType" value=""><!-- 接收类型1、医生 -->
               		<input type="hidden" name="params.serviceType" value=""><!-- 服务类型1、咨询 -->
               		<input type="hidden" name="params.chatContent" value=""><!-- 聊天内容 -->
               	</form>	
               	
               	<!-- 分页 -->
				<form action="consult_queryChatInfo.html" id="pageForm">
				    <input type="hidden" name="page.pageSize" value=''/>
			    	<input type="hidden" name="page.currentPage" value=''/>
			    	<input type="hidden" name="page.totalPage" value=''/>
				    <input type="hidden" name="params.userId" value="" />
				    <input type="hidden" name="params.targetId" value="" />
				    <input type="hidden" name="params.serviceId" value="" />
				</form>
				
                <div class="hisRogCon" id="DP_chatContent"></div>
                
                <!--bot-->
                <div class="hisRogBot" id="hisRogBot">
                    <button type="button" class="addBtn" onclick="$('#file').click();"></button><!-- 添加图片 -->
                   	<form id="upload" method="post" enctype="multipart/form-data" style="display: none;"> 
                        <input id="file" type="file" name="file" style="display: none" onchange="uploadFile(3);"/>
                    </form>
                    
                    <textarea id="textArea"></textarea>
                    <button type="button" class="enterBtn">发送</button>
                </div>      
        <script>     
              //美化滚动条
		    $("body").load(function(){
		        $("#DP_chatContent").mCustomScrollbar({theme:"minimal"});
		    }); 
                
        </script>   