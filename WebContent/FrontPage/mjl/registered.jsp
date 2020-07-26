<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>音客注册</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
		<link rel="stylesheet" href="css/zerogrid.css">
		<link rel="stylesheet" href="css/responsive.css">
		<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<!--<script src="js/cufon-replace.js" type="text/javascript"></script>-->
		<script src="js/Vegur_700.font.js" type="text/javascript"></script>
		<script src="js/Vegur_400.font.js" type="text/javascript"></script> 
		<script src="js/FF-cash.js" type="text/javascript"></script> 
		<script src="js/script.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/easyTooltip.js"></script>	
		<script src="js/css3-mediaqueries.js"></script>			
		<!--[if lt IE 7]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
				</a>
			</div>
		<![endif]-->
		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5.js"></script>
			<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
		<![endif]-->
	</head>
	<body id="page5">
		<div class="extra">
<!--==============================header=================================-->
			<header>
				<div class="main">
					<div class="bg-1">
						<h1><a href="index.jsp">Rock Band</a></h1>
					</div>
					<nav>
						<div class="menu-bg-tail">
							<div class="menu-bg">
								<div class="zerogrid">
									<div class="col-full">
										<ul class="menu" >
											<li class="item"><a href="first.jsp">音为爱&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="listen.jsp">&nbsp&nbsp&nbsp&nbsp听音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="view.jsp">&nbsp&nbsp&nbsp&nbsp视音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="yemianzhanshi/index3.jsp">&nbsp&nbsp&nbsp&nbsp音客&nbsp&nbsp&nbsp&nbsp</a></li>
											<li class="item-1"><a href="read.jsp">&nbsp&nbsp&nbsp&nbsp读音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li class="last"><a class="active" href="login.jsp">&nbsp&nbsp&nbsp&nbsp音而留&nbsp&nbsp&nbsp&nbsp</a></li>
										</ul>
										<div class="menu-response"><div>MENU</div>
											<select onchange="location=this.value">
												<option></option>
												<option value="first.jsp">音为爱</option>
												<option value="listen.jsp">听音</option>
												<option value="view.jsp">视音</option>
												<option value="yemianzhanshi/index3.jsp">音客</option>
												<option value="read.jsp">读音</option>
												<option value="login.jsp">音而留</option>
											</select>
										</div>
										<div class="clear"></div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</nav>
				</div>
			</header>
<!--==============================content================================-->
			<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November 21, 2011!</div>
				<div class="main">
					<div class="content-padding-2">
						<div class="zerogrid">
							<div class="wrapper">
								<article class="col-2-3">
									<div class="padding-grid-1">
										<h3>音客<strong> 注册</strong></h3>
										<form action="../../ManageSystem/User?method=addUser"  method="post" >
									      <table cellpadding="0" cellspacing="0" class="mainForm">
						
					   <tr>
							<td width="120px">昵称:</td>
							<td><input type="text" id="user_name" name="user_name" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="120px">学号：</td>
							<td><input type="text" id="user_id" name="user_id" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="120px">联系方式:</td>
							<td><input type="text" id="user_contact" name="user_contact" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="120px">密码：</td>
							<td><input type="password" id="user_password" name="user_password" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="120px">确认密码：</td>
							<td><input type="password" id="" name="" class="InputStyle" value=""/> *</td>
						</tr>
								</table>					
											<!-- <div class="link-form">
											<p align="right">* 项为必填项</p>		 -->
											<div id="InputDetailBar">
												<input type="submit" value="注册 " class="FunctionButtonInput">
												<!-- <input type="submit" value="帮助 " class="FunctionButtonInput"> -->
											</div>
										<!-- 	</div>  -->
										
											<!--<div class="clear"></div>	-->	
										</form>	
									</div>
								</article>
								<article class="col-1-3">
									<div class="padding-grid-3">
										<h3>你的 <strong>世界</strong></h3>
										<div class="wrapper p2">
											<figure class="style-img-2 fleft">
												<img src="images/11.jpg" alt="" />
											</figure>
										</div>
										<dl class="list-4">
											<!--<dt>8901 Marmora Road,<br>Glasgow, D04 89GR.</dt>
											<dd>Telephone: +1 959 603 6035</dd>
											<dd>E-mail: <a class="link" href="#">mail@demolink.org</a></dd>-->
										</dl>
									</div>
								</article>	
							</div>
						</div>
					</div>
				</div>
				<div class="block"></div>
			</section>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="main">
				<div class="footer-bg">
					<div class="zerogrid">
						<div class="row">
							<div class="col-full">
								<div class="footer-padding">
									<div class="wrapper">
													<span class="footer-link"><span><strong>Music, Just  Love</strong></span> Made By Team Web <a rel="nofollow" target="_blank" ></br><strong>Members:</strong></a> 高婷     刘柯宏<a rel="nofollow" target="_blank" class="link" href="http://www.cssmoban.com/"></a></span>
										<ul class="list-services">
											<li><a class="tooltips n-1" title="Twitter" href="#"></a></li>
											<li><a class="tooltips n-2" title="Facebook" href="#"></a></li>
											<li class="last"><a class="tooltips n-3" title="Youtube" href="#"></a></li>
										</ul>
									</div>
									<div class="aligncenter">
										<!-- {%FOOTER_LINK} -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<script type="text/javascript"> Cufon.now(); </script>
	</body>
</html>
