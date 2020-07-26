<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <!-- 包含公共的JSP代码片段 -->
	
<title>updateMusic</title>



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
			
				
					<img border="0" width="13" height="13" src="public/style/images/title_arrow.gif"/> 更新歌曲
				
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="./music?method=updateMusic" method="post" >
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="public/style/images/item_point.gif"> 歌曲信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						
					<tr>
							<td width="80px">曲名</td>
							<td><input type="text" id="music_name" name="music_name" class="InputStyle" value="${music.music_name }"/> *</td>
							<td><input type="hidden" id="music_id" name="music_id" class="InputStyle" value="${music.music_id }"/> *</td>
						</tr>
						
                    <tr>
							<td width="80px">类型</td>
							<td>
                            <select id="music_type" name="music_type" style="width:80px">
	                            
			   						<option value="1" 
			   							selected="selected"
			   						>华语流行</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>欧美流行</option>
			   						
			   					
			   						<option value="3" 
			   							
			   						>日韩流行</option>
			   						
			   					
                            </select>
                             *<input type="hidden" name="id" value="${music.music_type }" /></td>
						</tr>
						
						<tr>
							<td>歌手</td>
							<td><input type="text" id="music_singer" name="music_singer" class="InputStyle" value="${music.music_singer }"/> *</td>
						</tr>
                        <tr>
							<td>上传者学号</td>
							<td><input type="text" id="music_host" name="music_host" class="InputStyle" value="${music.music_host }"/> *</td>
						</tr>
						
						<!--tr>
							<td>简介</td>
							<td><textarea name="introduce" class="TextareaStyle">粤菜白灼虾，大件！</textarea></td>
						</tr-->
						<tr>
							<td >音乐文件</td>
							<td>
								
									<!--img style='max-width:68px;width:68px;width:expression(width>68?"68px":width "px");max-width: 68px;' 
									src="public/style/radio/华语.jpg"-->
									<audio src="public/style/radio/huayu/mingmingjiu.mp3" controls="controls">原歌曲文件</audio><br />
									<input type="hidden" name="radio" value="gaobai.mp3">
								
								<input src="public/style/radio/huayu/gaobai.mp3" type="file" name="gaobai.mp3"/> 
							</td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
					 <input type="submit" value="确认" class="FunctionButtonInput">
				
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>
</div>
</body>
</html>
