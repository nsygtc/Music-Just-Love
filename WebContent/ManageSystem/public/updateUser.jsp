<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
 	<!-- 包含公共的JSP代码片段 -->
	
<title>lock the account</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="public/style/js/jquery.js"></script>
<script type="text/javascript" src="public/style/js/page_common.js"></script>
<link href="public/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="public/style/css/index_1.css" />
    <script type="text/javascript">
	function openWin(){
		window.open('common_page_list.jsp');
		this.close();
	}
	</script>
</head>
<body>


<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="public/style/images/title_arrow.gif"/>  更新账号状态
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="./User?method=updateUser" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="public/style/images/item_point.gif"> 账号状态信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						<tr>
							<td width="80px">账号状态</td>
							<!--  <td><input type="text" class="TextareaStyle"></textarea></td>-->
							<td>
                            <select id="user_attribute" name="user_attribute" style="width:80px">
	                            
			   						<option value="0" 
			   							
			   						>普通用户</option>
			   						
			   					
			   						<option value="1" 
			   							
			   						>管理员</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>黑名单用户</option>
			   						
			   					
			   						
			   					
                            </select>
                             *<input type="hidden" name="user_id" value="${User.user_id }" /></td>
						</tr>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            <input type="submit" value="更新"  class="FunctionButtonInput">
            <a href="UserManagement.jsp"  class="FunctionButton">返回</a>
            <!--a href="/wirelessplatform/board.jsp" -->
        </div>
	</form>
	
</div>

</body>
</html>
