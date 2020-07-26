<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link href="css/index_style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<style type="text/css" media="screen">
  #canvas{
    width:100%;
    height:100%;
    position:fixed;
    top: 0;
    left:0;
  }
  #a{color:#FFD700 ;}
  	#a:hover{ color:#00CDCD}}
</style>
<title>star sky</title>
</head>
<body>
<div class="header" id="demo">
  <div class="topcn" >
    <p>抬望处、星空辽阔，</p>
    <p>我闭上眼睛，</p>
    <p>去倾听星海的磅礴，</p>
    <p>上帝轻轻拨动宇宙维度的弦，</p>
    <p>激起了悠扬的引力波；</p>
    <p>去倾听那流淌的银河，</p>
    <p>十万光年的距离，</p>
    <p>挡不住上帝对音乐的执着…</p>
    <p>唔，那黑洞中散射的辐射啊，</p>
    <p>定是上帝欣赏这宇宙的杰作。</p>
    <p>缓缓睁开眼睛，</p>
    <p>银河仍在流淌，</p>
    <p>耳畔、上帝之弦悠扬回荡……  
    	 <p><a href="mjl\first.jsp" style="text-decoration: none ;" id="a">————点此开启你的音乐世界!————</a></p>
  </div>
 
</div>
<canvas id="canvas"></canvas>

<audio controls="true" autoplay="autoplay" class="audio">
  <source src="css/Music.mp3" type="audio/mp3">
  <source src="css/Music.ogg" type="audio/ogg">
  <source src="css/Music.aac" type="audio/mp4">
</audio>


<script>


window.onload=function(){
  var allP = document.querySelectorAll('.topcn p');
   allP.forEach(function(that,index){
     setTimeout(function(){
         console.log(that)
          that.className='show';
    },index*1000)
   })
    //for (var i=0;i < allP.length; i++) {
     // let that =allP[i];
      //  setTimeout(function(){
      //   that.className='show';
   //   },i*3000)
    //};
    var canvas = document.getElementById('canvas'),
      ctx = canvas.getContext('2d'),
      w = canvas.width = window.innerWidth,
      h = canvas.height = window.innerHeight,

      hue = 217,
      stars = [],
      count = 0,
      maxStars = 1300;//星星数量

    var canvas2 = document.createElement('canvas'),
      ctx2 = canvas2.getContext('2d');
    canvas2.width = 100;
    canvas2.height = 100;
    var half = canvas2.width / 2,
      gradient2 = ctx2.createRadialGradient(half, half, 0, half, half, half);
    gradient2.addColorStop(0.025, '#CCC');
    gradient2.addColorStop(0.1, 'hsl(' + hue + ', 61%, 33%)');
    gradient2.addColorStop(0.25, 'hsl(' + hue + ', 64%, 6%)');
    gradient2.addColorStop(1, 'transparent');

    ctx2.fillStyle = gradient2;
    ctx2.beginPath();
    ctx2.arc(half, half, half, 0, Math.PI * 2);
    ctx2.fill();

    // End cache

    function random(min, max) {
      if (arguments.length < 2) {
        max = min;
        min = 0;
      }

      if (min > max) {
        var hold = max;
        max = min;
        min = hold;
      }

      return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function maxOrbit(x, y) {
      var max = Math.max(x, y),
        diameter = Math.round(Math.sqrt(max * max + max * max));
      return diameter / 2;
      //星星移动范围，值越大范围越小，
    }

    var Star = function() {

      this.orbitRadius = random(maxOrbit(w, h));
      this.radius = random(60, this.orbitRadius) / 8;
      //星星大小
      this.orbitX = w / 2;
      this.orbitY = h / 2;
      this.timePassed = random(0, maxStars);
      this.speed = random(this.orbitRadius) / 50000;
      //星星移动速度
      this.alpha = random(2, 10) / 10;

      count++;
      stars[count] = this;
    }

    Star.prototype.draw = function() {
      var x = Math.sin(this.timePassed) * this.orbitRadius + this.orbitX,
        y = Math.cos(this.timePassed) * this.orbitRadius + this.orbitY,
        twinkle = random(10);

      if (twinkle === 1 && this.alpha > 0) {
        this.alpha -= 0.05;
      } else if (twinkle === 2 && this.alpha < 1) {
        this.alpha += 0.05;
      }

      ctx.globalAlpha = this.alpha;
      ctx.drawImage(canvas2, x - this.radius / 2, y - this.radius / 2, this.radius, this.radius);
      this.timePassed += this.speed;
    }

    for (var i = 0; i < maxStars; i++) {
      new Star();
    }

    function animation() {
      ctx.globalCompositeOperation = 'source-over';
      ctx.globalAlpha = 0.5; //尾巴
      ctx.fillStyle = 'hsla(' + hue + ', 64%, 6%, 2)';
      ctx.fillRect(0, 0, w, h)

      ctx.globalCompositeOperation = 'lighter';
      for (var i = 1, l = stars.length; i < l; i++) {
        stars[i].draw();
      };

      window.requestAnimationFrame(animation);
    }

    animation();
}

</script>

</body>
</html>