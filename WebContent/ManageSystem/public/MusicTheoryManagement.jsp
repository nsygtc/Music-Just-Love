<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>Music Theory Management</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
<!--	<script type="text/javascript">
		setInterval(function(){
			window.location.href = "/wirelessplatform/client.jsp?method=list";
		},1000 * 50);
	</script>-->
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" /> Music Theory Information
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>乐理编号</td>
					<td>名称</td>
					<td>内容概述</td>
					<td>上传者学号</td>
					<td>信息修改</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<c:choose>
                 <c:when test="${not empty requestScope.displayMusic}">
                 
                    <c:forEach var="music" items="${requestScope.displayMusic}">
                        <tr>
                            <td>${Theory.musicTheory_id}</td>
                            <td>${Theory.musicTheory_name}</td>
                            <td>${Theory.musicTheory_content}</td>
                            <td>${Theory.musicTheory_host}</td>
                            <td>
					<a href="./Theory?musicTheory_id=${Theory.musicTheory_id}&method=viewUpdate"  class="FunctionButton">更新</a>				
					<a href="./Theory?musicTheory_id=${Theory.musicTheory_id}&method=deleteMusic" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
                        </tr>
                    
                    </c:forEach>
                 
                 </c:when>
                 <c:otherwise>
                    <tr>
                         <td colspan="5">没有要查找的数据，请先保存再查看！</td> 
                    </tr>
                 
                 </c:otherwise>
            </c:choose>				 	
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="public/addTheory.jsp">添加</a>
			</div>
		</div>
	</div>
</body>
</html>
