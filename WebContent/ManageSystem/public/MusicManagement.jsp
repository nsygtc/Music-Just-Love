<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>              
	<!-- 包含公共的JSP代码片段 -->
	
<title>MusicManagement</title>



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
			<img border="0" width="13" height="13" src="public/style/images/title_arrow.gif"/> Music Information
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="./music?method=queryByOthers" method="post">
			
			<a>名字:</a><input type="text" id = "queryName" name="queryName" >
			<a>ID:</a><input type="text" id  = "queryID" name="queryID" >
			<input type="submit" value="Search">
		</form>
	</div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>音乐编号</td>
				<td>音乐名称</td>
				<td>歌手</td>
				<td>音乐类型</td>
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
                            <td>${music.music_id}</td>
                            <td>${music.music_name}</td>
                            <td>${music.music_singer}</td>
                            <td>${music.music_type}</td>
                            <td>${music.music_host}</td>
                            <td>
					<a href="./music?music_id=${music.music_id}&method=viewUpdate"  class="FunctionButton">更新</a>				
					<a href="./music?music_id=${music.music_id}&method=deleteMusic" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
                        </tr>
                    
                    </c:forEach>
                 
                 </c:when>
                 <c:otherwise>
                    <tr>
                         <td colspan="6">没有要查找的数据，请先保存再查看！</td> 
                    </tr>
                 
                 </c:otherwise>
            </c:choose>
            
           <!--  <tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>I want it that way&nbsp;</td>
				<td>BackstreetBoys&nbsp;</td>
				<td>欧美流行&nbsp;</td>
				<td>2017061609&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>lonely&nbsp;</td>
				<td>千寻&nbsp;</td>
				<td>日韩流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
			
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
			
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
			
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
			
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr>
			
			<tr class="TableDetail1" align="center">
				<td>1&nbsp;</td>
				<td>告白气球&nbsp;</td>
				<td>周杰伦&nbsp;</td>
				<td>华语流行&nbsp;</td>
				<td>2016201420&nbsp;</td>
				<td>
					<a href="updateMusic.jsp"  class="FunctionButton">更新</a>				
					<a href="/wirelessplatform/food.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr> -->
        
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="public/addMusic.jsp">添加</a></div>
    </div> 
</div>
</body>
</html>
