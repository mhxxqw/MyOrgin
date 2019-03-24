<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Aviato E-Commerce Template">
	<meta name="author" content="Themefisher.com">
	<title></title>
	<!-- Mobile Specific Meta-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
	<!-- bootstrap.min css -->
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<!-- Ionic Icon Css -->
	<link rel="stylesheet" href="plugins/Ionicons/css/ionicons.min.css">
	<!-- animate.css -->
	<link rel="stylesheet" href="plugins/animate-css/animate.css">
	<!-- Magnify Popup -->
	<link rel="stylesheet" href="plugins/magnific-popup/dist/magnific-popup.css">
	<!-- Owl Carousel CSS -->
	<link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
	<link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
	<link rel="stylesheet" href="css/prism.css">
	<link rel="stylesheet" href="css/hivideo.css" />
	<script type="text/javascript" src="js/hivideo.js"></script>
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<!--博客评论功能--->
	<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
	<script src='//unpkg.com/valine/dist/Valine.min.js'></script>


</head>
<body id="body">
<!-- Header Start -->
<header class="navigation">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- header Nav Start -->
				<nav class="navbar">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="index.html">
								<img src="images/logo.png" alt="Logo">
							</a>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="index.html">Home</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Portfolio <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li><a href="portfolio.html">Portfolio Filter</a></li>
										<li><a href="portfolio-single.html">Portfolio Single</a></li>
									</ul>
								</li>
								<li><a href="service.html">Service</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li><a href="blog-grid.html">Blog Grid</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
										<li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
										<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
										<li><a href="blog-full-width.html">Blog Full Width</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li><a href="about.html">About Us</a></li>
										<li><a href="coming-soon.html">Coming Soon</a></li>
										<li><a href="404.html">404 Page</a></li>
										<li><a href="faq.html">FAQ</a></li>
										<li><a href="pricing.html">Pricing Table</a></li>
									</ul>
								</li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
	</div>
</header>

<!--我的博客-->
<section class="page-title bg-2">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="block">
					<h1>我的博客</h1>
					<p>Never underestimate your power to change yourself!</p>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="post post-single">
					<h2 class="post-title">${contentData.title}</h2>
					<div class="post-meta">
						<ul>
							<li>
								<i class="ion-calendar"></i> ${contentData.createTime}
							</li>
							<li>
								<i class="ion-android-people"></i> 李字
							</li>
							<li>
								<i class="ion-pricetags"></i>
								<a href="">生活</a>,
								<a href="">学习</a>,
								<a href="">技术</a>
							</li>
						</ul>
					</div>
					<c:if test="${contentData.status==2}">
					<div class="post-thumb">
						<video ishivideo="true" autoplay="true" isrotate="false"
							   autoHide="true"> <source
								src="${contentData.mediaMaterials}" type="video/mp4"></video>
					</div>
					</c:if>
					<c:if test="${contentData.status==1}">
						<div class="post-thumb">
							<img class="img-responsive" src="images/blog/${contentData.mediaMaterials}" alt="">
						</div>
					</c:if>
					<div class="post-content post-excerpt">
						<p>西安，古称长安、镐京，是陕西省会、副省级市、关中平原城市群核心城市、丝绸之路起点城市、“一带一路”核心区、中国西部地区重要的中心城市，国家重要的科研、教育、工业基地 [1-5]  。联合国科教文组织于1981年确定的“世界历史名城” [1]  。地处关中平原中部，北濒渭河，南依秦岭，八水润长安。下辖11区2县并代管西咸新区，总面积10752平方公里，2017年末户籍人口905.68万 [6-10]  。</p>
						<blockquote class="quote-post">
							<p>
								八百里秦川物华天宝，五千年历史人杰地灵。
							</p>
						</blockquote>
						<p>钟楼位于西安市中心，城内东西南北四条大街的交汇处，建在方型基座之上，为砖木结构，重楼三层檐，四角攒顶形式，内有楼梯可盘旋而上。在檐上覆盖有深绿色琉璃瓦，楼内贴金彩绘，画栋雕梁，顶部有鎏金宝顶，金碧辉煌。以它为中心辐射出东、南、西、北四条大街并分别与明城墙东、南、西、北四门相接，这就是西安人引以为自豪的钟楼。它是我国古代遗留下来许多钟楼中形制最大、保存最完整的一座。西安是明代西北军政重镇，它的钟楼无论从建筑规模、历史价值或艺术价值各方面衡量，都居全国同类建筑之冠。</p>
						<pre class="line-numbers">
							<code class="language-javascript">
								function add(a, b){
									return a + b;
								}
							</code>
						</pre>
						<p>书院门的地名起源于在它里面的关中书院，关中书院是明、清两代陕西的最高学府，也是全国四大著名书院之一，西北四大书院之冠。是明代工部尚书冯从吾给皇帝上书，说皇帝"沉溺酒色、荒于朝政"，结果被革职回家，然后潜心研究易理，在宝庆寺讲学。后来又拉上陕西当时的最高行政长官汪可受，进行"联镳会讲"，来听讲的人足有几千人，所以从此把那个地方修了一所书院，就是关中书院。
							冯从吾积极参与当时的政治斗争，与"千人所指，一丁不识"的魏忠贤势不两立，成为东林党人在西北的首领。并在此设立书院，以次作为阵地，以"天地万物一体为度量，出处进退一丝不苟为风操"作为兴学宗旨。中国书院大致始于初唐而盛于南宋，但在中国文化史上东林书院绽放和折射出来了独特的光彩。关中书院就是它的光和影在这儿的摇曳，那幅脍炙人口的对联："风声、雨声、读书声、声声入耳，国事、家事、天下事、事事关心"，依然闪烁在这里。当时一群文化人在此开始了他们的文化远征，这里不是遗老遗少的"诗酒文会"，不是空谈心性的象牙塔，也不是钻营苟且名利之场。这里曾是一群文化血性男儿的神圣祭坛，在这里他们讽刺朝政、裁量人物、指针时弊，在风雨飘摇中为一片明朗的天空大声疾呼。他们躬行实践、高标独立。研究经世致用之学，于万马齐喑中开启明清实学思想的先河，但家国天下之事他们时时念念于怀。片纸尺牍背后凸现出的强烈忧患意识，令人五内沸然。漫步在这古色古香的街巷，也许脚下的土地就是昔日的大贤们走过的地方，照耀了他们的日月依然在这里普照。"江山有代谢，往来成古今"。关中书院建成以后不久，魏忠贤灭了东林书院的一帮文人，顺便把关中书院也收拾了一下，冯从吾也被累及。然后，熹宗一道圣旨把关中书院拆了。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="vcomments" style="width: 90%;margin-left: 5%;"></div>
</section>
<script>
    new Valine({
        el: '#vcomments' ,
        appId: 'W3dPeCSOhjup9zqnywR1y5d5-gzGzoHsz',
        appKey: 'A7Lp8ku0JMTRdSE7BqszD5Y0',
        notify:false,
        verify:false,
        path:window.location.href,
        avatar:'mm',
        placeholder: '（*@ο@*）来评论呀～'
    });
</script>
<!-- 底部 -->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="footer-manu">
					<ul>
						<li>
							<a href="#">关于我</a>
						</li>
						<li>
							<a href="#">分享</a>
						</li>
					</ul>
				</div>
				<p class="copyright">Copyright &copy; 2018.Company name All rights reserved.
					<a target="_blank" href="#">MyOrgin</a>
				</p>
			</div>
		</div>
	</div>
</footer>
<!-- 底部 -->
<!-- Main jQuery -->
<script src="js/jquery-git.min.js"></script>
<!--字体特效-->
<script src="js/fontgreat.js"></script>
<script>
    POWERMODE.colorful = true; /* make power mode colorful*/
    POWERMODE.shake = true; /* turn off shake*/
    document.body.addEventListener('input', POWERMODE);
</script>
<!-- Bootstrap 3.1 -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Owl Carousel -->
<script src="plugins/slick-carousel/slick/slick.min.js"></script>
<!--  -->
<script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<!-- Mixit Up JS -->
<script src="plugins/mixitup/dist/mixitup.min.js"></script>
<!-- <script src="plugins/count-down/jquery.lwtCountdown-1.0.js"></script> -->
<script src="plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/script.js"></script>
<script src="js/prism.js"></script>

<script>
    document.onclick = function(e) {

        /**
         * 根据鼠标点击坐标初始化dom，通过过渡属性实现动画效果
         * dom渲染完成后设置目标偏移位置及目标透明度
         * 过渡结束后移除dom
         * @author:slzs
         */
        var symbol = document.createElement("div");

        symbol.style.position = "absolute";
        symbol.style.left = (e.pageX) + "px";
        symbol.style.top = (e.pageY) + "px";
        symbol.style.zIndex = 9999;
        symbol.style.transition="all 1.5s";
        symbol.style.border="1px red solid";
        symbol.style.borderColor = `rgb(${Math.floor(Math.random()*256)},${Math.floor(Math.random()*256)},${Math.floor(Math.random()*256)})`; // 随机颜色
        symbol.style.borderRadius="100%";
        symbol.style.width = "0px";
        symbol.style.height = "0px";
        symbol.addEventListener("transitionend",function(et){ // 动画结束移除dom
            if(et.propertyName == "opacity" && et.srcElement.style.opacity==0)
                et.srcElement.remove();
        });

        document.body.appendChild(symbol);

        requestAnimationFrame(()=>{
            symbol.style.width = "80px";
        symbol.style.margin = "-7px -40px";
        symbol.style.height = "14px";
        symbol.style.opacity = 0;
    });
    };
</script>

</body>
</html>