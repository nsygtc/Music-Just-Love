<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>音客.html</title>
	<meta name="keywords" content="SVG特效, SVG路径动画, css3动画, 网页特效" />
	<meta name="keywords" content="clipPath, svg, effect, layout, expansion, images, grid, polygon" />
	<meta name="author" content="Claudio Calautti for Codrops" />
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/card.css" />
	<link rel="stylesheet" type="text/css" href="css/pattern.css" />
	<!--[if IE]>
	  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    <style>
    	.card__container{transition: all;5s;}
    	.card__container:hover{transform: translateY(10px)}
    </style>
</head>

<body class="demo-3">

    <div class="container">
		<header class="codrops-header">
			 
			<h1><font color=white>音客     de World</font></h1>
			<nav class="codrops-demos">
				<!--DOCTYPE ><a href="index.html">Demo 1</a>-->
				<!--<a href="index2.html">Demo 2</a>-->
				<!--<a class="current-demo" href="index3.html">Demo 3</a>-->
				<!--<a href="index4.html">Demo 4</a>-->
			</nav>
		</header>
		<div class="content">
			<!-- trianglify pattern container -->
			<div class="pattern pattern--hidden"></div>
			<!-- cards -->
			<div class="wrapper">
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath1">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath1)" width="1920" height="500" xlink:href="img/zjl.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Jay Chou</h2>
								<p class="card__subtitle">周杰伦</p>

							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/zjl1.jpg" alt="author01" />
									<span class="meta__author">周杰伦</span>
									<span class="meta__date">1979/1/18</span>
								</div>
								<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp周杰伦，1979年1月18日出生于台湾省新北市，中国台湾流行乐男歌手、音乐人、演员、导演、编剧、监制、商人。2000年被吴宗宪发掘并推出首张专辑《Jay》。2005年涉足影视，以电影《头文字D》获第42届台湾电影金马奖及第25届香港电影金像奖“最佳新人”奖。2007年成立JVR有限公司；同年，自编自导自演电影《不能说的秘密》，获得台湾电影金马奖年度台湾杰出电影奖。2008年凭借歌曲《青花瓷》获得第19届金曲奖最佳作曲人奖。2011年凭借专辑《跨时代》再度获得金曲奖最佳国语男歌手奖，并且第4次获得金曲奖最佳国语专辑奖。2014年担任中国禁毒宣传形象大使。2016年在电影《惊天魔盗团2》中扮演小李。2017年1月6日，周杰伦监制爱情电影《一万公里的约定》在中国内地上映。.</p>
								<!--<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>-->
								
								<p><h2>获奖经历</h2></p>
								<p>2017年华语金曲奖 年度最佳国语男歌手、年度艺人（获奖）《周杰伦的床边故事》获得年度最佳国语专辑</p>
								<p>第28届台湾金曲奖年度金曲奖-年度歌曲《告白气球》（提名）</p>
								<p>第28届台湾金曲奖年度金曲奖-最佳音乐录像带奖《床边故事》（提名）</p>
								<p>第28届台湾金曲奖年度金曲奖-最佳国语男歌手（提名）</p>
								<p>......</p>
								
								<p><h2>音乐欣赏</h2></p>
								<p><a href="">告白气球</a></p>
								<p><a href="">算什么男人</a></p>
								<p><a href="">稻香</a></p>
								<p><a href="">晴天</a></p>
								<p><a href="">青花瓷</a></p>
								<p>......</p>
							
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath2">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath2)" width="1920" height="500" xlink:href="img/xzq.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Joker</h2>
								<p class="card__subtitle">薛之谦</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/authors/2.png" alt="author02" />
									<span class="meta__author">Frank Posterius</span>
									<span class="meta__date">06/16/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath3">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath3)" width="1920" height="500" xlink:href="img/cyl.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Jolin Tsai</h2>
								<p class="card__subtitle">蔡依林</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/authors/3.png" alt="author03" />
									<span class="meta__author">Sarah Lester</span>
									<span class="meta__date">06/16/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath4">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath4)" width="1920" height="500" xlink:href="img/lty.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">ルオ・テンイ</h2>
								<p class="card__subtitle">洛天依</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/authors/4.png" alt="author04" />
									<span class="meta__author">Lena Bestofos</span>
									<span class="meta__date">06/14/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath5">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath5)" width="1920" height="500" xlink:href="img/cywl.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">初音ミク</h2>
								<p class="card__subtitle">初音未来</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/authors/5.png" alt="author05" />
									<span class="meta__author">Michaela Walters</span>
									<span class="meta__date">06/11/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath6">
									<polygon class="clip" points="0,500 0,0 1920,0 1920,500"></polygon>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath6)" width="1920" height="500" xlink:href="img/tl.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Taylor Swift</h2>
								<p class="card__subtitle">泰勒·艾莉森·斯威夫特</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="img/authors/6.png" alt="author06" />
									<span class="meta__author">Tom Goldman</span>
									<span class="meta__date">06/10/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /cards -->
			
		</div><!-- /content -->
		 <p style="text-align: center;color: white;"> <a  href="file:///C:/Users/Administrator/Desktop/last/%E9%83%AD%E6%98%8E%E6%98%8E/star/mjl/%E9%9F%B3%E4%B8%BA%E7%88%B1.html"><strong>Music, Just  Love</strong></a></br> Made By Team Web </br><strong>Members:</strong> 高婷     孙胜哲    郭明明</p>
						</div>
	<!-- /container -->
	<!-- JS -->
	<script src="js/vendors/trianglify.min.js"></script>
	<script src="js/vendors/TweenMax.min.js"></script>
	<script src="js/vendors/ScrollToPlugin.min.js"></script>
	<script src="js/vendors/cash.min.js"></script>
	<script src="js/Card-polygon.js"></script>
	<script src="js/demo-3.js"></script>
	<div class="trianglify"></div>
  <div class="circle"></div>

  <!-- JS -->

</body>

</html>
