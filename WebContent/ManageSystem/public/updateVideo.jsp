<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <!-- 包含公共的JSP代码片段 -->
	
<title>updateVideo</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="public/style/js/jquery.js"></script>
<script type="text/javascript" src="public/style/js/page_common.js"></script>
<link href="public/style/css/common_style_blue.css" rel="public/stylesheet" type="text/css">
<link rel="public/stylesheet" type="text/css" href="public/style/css/index_1.css" />
</head>
<body>

<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			
				
					<img border="0" width="13" height="13" src="public/style/images/title_arrow.gif"/> 更新视频信息
				
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="./Video?method=updateVideo" method="post" >
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="public/style/images/item_point.gif"> 视频信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
	


 					<tr>
							<td width="80px">视频名称</td>
							<td><input type="text" id="video_name" name="video_name" class="InputStyle" value="${Video.video_name }"/> *</td>
							<td><input type="hidden" id="video_id" name="video_id" class="InputStyle" value="${Video.video_id }"/> *</td>
						</tr>
						
                    <tr>
							<td width="80px">类型</td>
							<td>
                            <select id="video_type" name="video_type" style="width:80px">
	                            
			   						<option value="1" 
			   							selected="selected"
			   						>钢琴</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>小提琴</option>
			   						
			   					
			   						<option value="3" 
			   							
			   						>民乐器</option>
			   						
			   					
                            </select>
                             *<input type="hidden" name="id" value="${Video.video_type }" /></td>
						</tr>
						
						<tr>
							<td>评分</td>
							<td>
                            <select id="video_score" name="video_score" style="width:80px">
	                            
			   						<option value="1" 
			   							selected="selected"
			   						>1分</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>2分</option>
			   						
			   					
			   						<option value="3" 
			   							
			   						>3分</option>
			   						
			   						<option value="4" 
			   							
			   						>4分</option>
			   						
			   						<option value="5" 
			   							
			   						>5分</option>
			   						
			   					
                            </select>
                             *<input type="hidden" name="id" value="${Video.video_score }" /></td>
							
						</tr>
                        <tr>
							<td>上传者学号</td>
							<td><input type="text" id="video_host" name="video_host" class="InputStyle" value="{Video.video_host }"/> *</td>
						</tr>
						<!-- 
						<tr>
							<td>简介</td>
							<td><textarea name="introduce" class="TextareaStyle">粤菜白灼虾，大件！</textarea></td>
						</tr>
						<tr>
							<td >视频文件</td>
							<td>
								
									img style='max-width:68px;width:68px;width:expression(width>68?"68px":width "px");max-width: 68px;' 
									src="style/radio/华语.jpg"
									<video src="public/style/video/2016131123.mp4"  controls="controls" width="100%" height="100%">原歌曲文件</video><br />
									<input type="hidden" name="video" value="风居住的街道.mp4">
								
								<input src="#" type="file" name="喀秋莎.mp4"/> 
							</td>
						</tr> 
 -->
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
					 <input type="submit" value="确认" class="FunctionButtonInput">
				
				
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a></div>
	</form>
</div>
</body>
</html>
