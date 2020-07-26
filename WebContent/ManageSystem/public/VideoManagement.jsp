<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>VideoManagement</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" /> Video Information
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/cuisine.jsp" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="Please input video's name">
			<input type="submit" value="Search">
		</form>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>视频编号</td>
					<td>视频名称</td>
					<td>视频类型</td>
					<td>上传者学号</td>
					<td>视频评分</td>
					<td>信息修改</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				
	            <%--  <c:choose>
	                 <c:when test="${not empty requestScope.displayMusic}">
	                 
	                    <c:forEach var="music" items="${requestScope.displayMusic}">
	                        <tr>
	                            <td>${Video.video_id}</td>
	                            <td>${Video.video_name}</td>
	                            <td>${Video.video_type}</td>
	                            <td>${Video.video_host}</td>
	                            <td>${Video.video_score}</td>
	                            <td>
						<a href="./Video?video_id=${Video.video_id}&method=viewUpdate"  class="FunctionButton">更新</a>				
						<a href="./Video?video_id=${Video.video_id}&method=deleteVideo"onClick="return delConfirm();"class="FunctionButton">删除</a>				
					</td>
	                        </tr>
	                    
	                    </c:forEach>
	                 
	                 </c:when>
	                 <c:otherwise>
	                    <tr>
	                         <td colspan="6">没有要查找的数据，请先保存再查看！</td> 
	                    </tr>
	                 
	                 </c:otherwise>
	            </c:choose>  --%>
					<tr align="center">
						<td>1</td>
						<td>风居住的街道</td>
						<td>钢琴</td>
						<td>2016131123</td>
						<td align="center">4</td>
						<td>
							<a href="updateVideo.jsp" class="FunctionButton">更新</a> 
							<a href="VideoManagement.jsp.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>
						</td>
					</tr>
				
					<tr align="center">
						<td>2</td>
						<td>喀秋莎</td>
						<td>小提琴</td>
						<td>2017071230</td>
						<td align="center">4</td>
						<td>
							<a href="updateVideo.jsp" class="FunctionButton">更新</a> 
							<a href="VideoManagement.jsp.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>
						</td>
					</tr>
				
					<tr align="center">
						<td>3</td>
						<td>钟</td>
						<td>钢琴</td>
						<td>2016131123</td>
						<td align="center">4</td>
						<td>
							<a href="updateVideo.jsp" class="FunctionButton">更新</a> 
							<a href="VideoManagement.jsp.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>
						</td>
					</tr>
				
					<tr align="center">
						<td>4</td>
						<td>紫色激情</td>
						<td>电子琴</td>
						<td>2016131123</td>
						<td align="center">4</td>
						<td>
							<a href="updateVideo.jsp" class="FunctionButton">更新</a> 
							<a href="VideoManagement.jsp.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>
						</td>
					</tr> 
				
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="public/addVideo.jsp">添加</a>
			</div>
		</div>
	</div>
</body>
</html>
