<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 	<!-- 包含公共的JSP代码片段 -->
	
<title>User Management</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="public/style/js/jquery.js"></script>
<script type="text/javascript" src="public/style/js/page_common.js"></script>
<link href="public/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="public/style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="public/style/images/title_arrow.gif"/> User Information
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
	<form action="./User?method=displayAll" method="post">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="请输入餐桌名称">
		<input type="submit" value="Search">
	</form>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>学号</td>
				<td>昵称</td>
				<td>用户属性</td>
				<td>联系方式</td>
				<td>信息更改</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">      
             <c:choose>
                 <c:when test="${not empty requestScope.displayUser}">
                 
                    <c:forEach var="User" items="${requestScope.displayUser}">
                        <tr>
                            <td>${User.user_id}</td>
                            <td>${User.user_name}</td>
                            <td>${User.user_attribute}</td>
                            <td>${User.user_contact}</td>
                            <td>
					<a href="./User?user_id=${User.user_id}&method=viewUpdate"  class="FunctionButton">更新账号</a>				
					<a href="./User?user_id=${User.user_id}&method=deleteUser" onClick="return delConfirm();"class="FunctionButton">删除账号</a>				
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
</div> 
</body>
</html>
