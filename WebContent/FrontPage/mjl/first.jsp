<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html >
	<head>
		<title>音为爱</title>
		<meta http-equiv="content-type" content="text/html">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
		<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen">   
		<link rel="stylesheet" href="css/zerogrid.css">
		<link rel="stylesheet" href="css/responsive.css">
		<link rel="stylesheet" href="css/responsiveslides.css" />
		<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<!--<script src="js/cufon-replace.js" type="text/javascript"></script>-->
		<script src="js/Vegur_700.font.js" type="text/javascript"></script>
		<script src="js/Vegur_400.font.js" type="text/javascript"></script> 
		<script src="js/FF-cash.js" type="text/javascript"></script> 
		<script src="js/script.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/easyTooltip.js"></script>
		<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="js/hover-image.js" type="text/javascript"></script>
		<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
		<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/tms-0.3.js"></script>
		<script type="text/javascript" src="js/tms_presets.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
			
		<script src="js/responsiveslides.js"></script>
		<script>
			$(function () {
			  $("#slider").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				maxwidth: 960,
				namespace: "centered-btns"
			  });
			});
		</script>	
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
		<style>
    body {
      background: black;
    }
    .circle {
      width: 400px;
      height: 400px;
      border-radius: 50%;
      background: white;
      opacity: 0.2;
      position: fixed;
      top: 0;
      left: 0;
      z-index: 999;
    }
    path {
      fill: transparent;
      transform-origin: center bottom;
      transition: opacity 300ms ease-in-out, transform 300ms ease-in-out;
    }
    .invisible {
      opacity: 0;
      transform: scale(0);
    }
  </style>
	</head>
	<body id="page1">
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
											<li class="item"><a class="active" href="first.jsp">音为爱&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="listen.jsp">&nbsp&nbsp&nbsp&nbsp听音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="view.jsp">&nbsp&nbsp&nbsp&nbsp视音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li><a href="yemianzhanshi/index3.jsp">&nbsp&nbsp&nbsp&nbsp音客&nbsp&nbsp&nbsp&nbsp</a></li>
											<li class="item-1"><a href="read.jsp">&nbsp&nbsp&nbsp&nbsp读音&nbsp&nbsp&nbsp&nbsp</a></li>
											<li class="last"><a href="login.jsp">&nbsp&nbsp&nbsp&nbsp音而留&nbsp&nbsp&nbsp&nbsp</a></li>
										</ul>
										<div class="menu-response"><div>MENU</div>
											<select onChange="location=this.value">
												<option></option>
												<option value="index.jsp">音为爱</nbs></option>
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
					<div class="slider-wrapper">
						<div class="slider">
							<div class="rslides_container">
								<ul class="rslides" id="slider">
									<li><img src="images/slider-img2.jpg" alt="" /></li>
									<li><img src="images/xhd2.jpg" alt="" /></li>
									<li><img src="images/54.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</header>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >Website Template</a></div>
<!--==============================content================================-->
			<section id="content">
				<div class="main">
					<div class="bg-2">
						<div class="content-padding-1">
							<div class="zerogrid">
								<div class="row">
									<article class="col-1-3">
										<div class="wrap-col padding-grid-1">
											<h3 class="letter">乐坛 <strong>资讯</strong></h3>
											<div class="wrapper img-indent-bot1">
												<time class="time time-stule-1" datetime="2017-12-01"> <strong class="text-1">01</strong><strong class="text-2">dec</strong></time>
												<div class="extra-wrap">
													<div class="indent-top">
														寻梦环游记<a class="link" target="_blank" href="view.jsp"></br>原声带</a> </br>"CoCo"
													</div>
												</div>
											</div>
											<div class="wrapper img-indent-bot1">
												<time class="time time-stule-1" datetime="2011-12-02"> <strong class="text-1">02</strong><strong class="text-2">dec</strong></time>
												<div class="extra-wrap">
													<div class="indent-top">
														 观复嘟嘟（丁酉版第17期）：</br><a class="link" target="_blank" href="listen.jsp">身体的秘密</a>
													</div>
												</div>
											</div>
											<div class="wrapper">
												<time class="time time-stule-1" datetime="2011-12-03"> <strong class="text-1">03</strong><strong class="text-2">dec</strong></time>
												<div class="extra-wrap">
													<div class="indent-top">
														  <strong>·</strong>Soul/Reggae<br /><a class="link" target="_blank" href="listen.jsp">灵歌遇上了雷鬼？</a>
													</div>
												</div>
											</div>
										</div>
									</article>
									<article class="col-1-3">
										<div class="wrap-col padding-grid-1">
											<h3>校园 <strong>音乐资讯</strong></h3>
											<div class="wrapper img-indent-bot2">
												<time class="time time-stule-2" datetime="2011-12-01"> <strong class="text-3">01</strong><strong class="text-4">dec</strong></time>
												<div class="extra-wrap">
													<h5 class="indent-top"><a href="#" style="text-decoration: none;">十佳歌手决赛</a></h5>
													冬天里的一把火，</br>照亮你的十二月！
												</div>
											</div>
											<div class="wrapper img-indent-bot2">
												<time class="time time-stule-2" datetime="2011-12-02"> <strong class="text-3">02</strong><strong class="text-4">dec</strong></time>
												<div class="extra-wrap">
													<h5 class="indent-top"><a href="#" style="text-decoration: none;">原来你是这样的十佳</a></h5>
													福利在后面哦！
												</div>
											</div>
											<div class="wrapper">
												<time class="time time-stule-2" datetime="2011-12-03"> <strong class="text-3">03</strong><strong class="text-4">dec</strong></time>
												<div class="extra-wrap">
													<h5 class="indent-top"><a href="#" style="text-decoration: none;">新年音乐会</a></h5>
													火热筹备中！！！
												</div>
											</div>
										</div>
									</article>
									<article class="col-1-3">
										<div class="wrap-col padding-grid-2">
											<h3 class="letter">薛之谦<strong>新专开售！</strong></h3>
											<div class="wrapper">
												<figure class="style-img fleft"><a href="#"><img src="images/xue.jpg"  alt=""></a></figure>
											</div>
										</div>
									</article>
								</div>
							</div>
						</div>
					</div>
					<div class="content-padding-2">
						<div class="zerogrid">
							<div class="row">
								<article class="col-1-3">
									<div class="wrap-col padding-grid-1">
										<h3>Learning<strong>读音</strong></h3>
										<div class="wrapper img-indent-bot1">
											<time class="time time-stule-3" datetime="2011-12-01"> <strong class="text-5">01</strong><strong class="text-6">dec</strong></time>
											<div class="extra-wrap">
												<div class="indent-top">
													<a href="read.jsp">其实，音乐家们是这样的...</a></br>Iste natus error sit voluptatem accusantium doloremque laudantium.
												</div>
											</div>
										</div>
										<div class="wrapper">
											<time class="time time-stule-3" datetime="2011-12-03"> <strong class="text-5">03</strong><strong class="text-6">dec</strong></time>
											<div class="extra-wrap">
												<div class="indent-top">
													<a href="read.jsp">乐理详解戳这里！！！</a></br> Nemo enim ipsam voluptatem quia voluptas aspernatur.
												</div>
											</div>
										</div>
									</div>
								</article>
								<article class="col-1-3">
									<div class="wrap-col padding-grid-2">
										<h3 class="letter">Latest <strong>视音</strong></h3>
										
										<div class="wrapper">
											<figure class="style-img-2 fleft"><a class="lightbox-image" href="view.jsp" data-gal="pretty视音[pretty视音]"><img src="images/yang.jpg"  alt=""></a></figure>
										</div>
									</div>
								</article>
								<article class="col-1-3">
									<div class="wrap-col padding-grid-2">
										<h3 class="letter prev-indent-bot1">Just <strong>音为爱</strong></h3>
										<h6>We are "Music,Just Love"</h6>
										Welcome to your ideal country !
										 </br><a href="logiin.jsp">Come and join us !</a>
										<p>And now enjoy yourselves !</p>
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
										<span class="footer-link"><span><strong>Music, Just  Love</strong></span> Made By Team Web <a rel="nofollow" target="_blank" ></br><strong>Members:</strong></a> 高婷     刘柯宏    <a rel="nofollow" target="_blank" class="link" href="http://www.cssmoban.com/"></a></span>
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
