<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <!-- 包含公共的JSP代码片段 -->
	
<title>updateTheory</title>



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
			
				
					<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 更新乐理信息
				
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="../Theory?method=updateTheory" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="style/images/item_point.gif"> 乐理信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						
					<tr>
							<td width="80px">乐理名称</td>
							<td><input type="text" id="musicTheory_name" name="musicTheory_name" class="InputStyle" value="${Theory.musicTheory_name }"/> *</td>
							<td><input type="hidden" id="musicTheory_id" name="musicTheory_id" class="InputStyle" value="${Theory.musicTheory_id }"/> *</td>
						</tr>
						
                    <tr>
							<td width="80px">内容概述</td>
							<td><input type="text" id="musicTheory_content" name="musicTheory_content" class="InputStyle" value="${Theory.musicTheory_content }"/> *</td>
						</tr>
						
						
                        <tr>
							<td>上传者学号</td>
							<td><input type="text" id="musicTheory_host" name="musicTheory_host" class="InputStyle" value="${Theory.musicTheory_host }"/> *</td>
						</tr>
						
						<!--tr>
							<td>简介</td>
							<td><textarea name="introduce" class="TextareaStyle">粤菜白灼虾，大件！</textarea></td>
						</tr-->
			<!-- 			<tr>
							<td >内容详情链接地址</td>
								<td><input type="text" class="InputStyle" value="http://study.163.com/course/introduction/1512007.htm">*</td> -->
									<!--img style='max-width:68px;width:68px;width:expression(width>68?"68px":width "px");max-width: 68px;' 
									src="style/radio/华语.jpg"-->
									<!--<video src="style/video/2016131123 杨翩然.mp4"  controls="controls" width="100%" height="100%">原歌曲文件</video><br />
									<input type="hidden" name="video" value="风居住的街道.mp4">
								
								<input src="#" type="file" name="喀秋莎.mp4"/> -->
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
					 <input type="submit" value="确认" class="FunctionButtonInput">
				
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>