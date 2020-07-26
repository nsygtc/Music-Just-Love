<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Frame left</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="style/js/jquery.js"></script>
	<script type="text/javascript" src="style/js/page_common.js"></script>
    <link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		// 显示或隐藏二级菜单 
		function menuClick( menuDiv ){
			$(".MenuLevel2").not( $(menuDiv).next() ).hide();
			$(menuDiv).next().toggle();
		}
		
		$(function(){
			// 默认只显示第1个二级菜单
			$(".MenuLevel2").hide();
			$(".MenuLevel2:first").show();
		});
	</script>
	<!-- 内容总宽度为 3px边框 * 2 + 155px内容 = 161px; -->
	<style type="text/css">
<!--
html{
height: 100%;
}
body {
	background: none repeat scroll 0 0 #D8EDFC;
	margin: 0;
	padding: 0;
}
#Menu {
    margin: 0;
    padding: 0;
    width: 195px;
	background: none repeat scroll 0 0 #D8EBE3;
    list-style: none outside none;
	
	margin-left: 3px;
	border-top: 3px solid #4891C6;
}
#Menu .level1 {
 color: #005790;
    font-weight: bold;
    font-size:large;
    padding-bottom: 1px;
	  cursor: pointer;
}
#Menu .level1 .level1Style {
  background: url("style/images/img/menu_btn_bg.gif") no-repeat  100% 100% fixed;
    height: 40px;
    padding-left: 10px;
    padding-top: 20px;
    width: 195px;
	margin-bottom: -4px
}
#Menu .level1 .level1Style .Icon {
	margin-top: -2px;
}
#Menu .level1 .MenuLevel2 {
 background: none repeat scroll 0 0 #D8EBF7;
    list-style: none outside none;
    margin: 0;
    padding: 0;
}
#Menu .level1 .MenuLevel2 .level2Style{
	color: #005790;
    font-weight:bold;
    font-size: medium;
	border-top: 1px solid #EFF6FB;
	height: 30px;
	padding-left: 43px;
	padding-top: 5px;
	width: 150px;
	background-image:url(style/images/img/menu_arrow_single.gif);
	background-color: #8EC4E9;
	background-repeat: no-repeat;
	background-position: 29px center;
}
-->
	</style>
</head>
<body>
	
    <ul id="Menu">
	    <li class="level1">
            <div onClick="menuClick(this);" class="level1Style">
				<img src="style/images/func20001.gif" class="Icon" /> 
				Manage Content
			</div>
            <ul class="MenuLevel2">
            	<li class="level2 level2Style">
                    <a target="right" href="../User?method=displayAll">User</a>
				</li>
                <li class="level2 level2Style">
                	<a target="right" href="VideoManagement.jsp">Video</a>              <!-- ../Video?method=displayAll -->
				</li>
                <li class="level2 level2Style">
                      <a target="right" href="../music?method=displayAll">Music</a>
				</li>
                <li class="level2 level2Style">
                	<a target="right" href="MusicTheoryManagement.jsp">Music Theory</a>    <!-- //../Theory?method=displayAll -->
				</li>
            </ul>
        </li>
    </ul>
</body>
</html>