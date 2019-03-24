<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

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
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<!--分享-->
	<link rel="stylesheet" href="css/share.min.css">
	<!--时间树-->
	<link rel="stylesheet" href="css/leftTime.css">

	<link href="css/history.css" rel="stylesheet" />
	<style>
		.row{padding: 20px 0 0 20px}
		.row-pad{padding: 20px 0 0 60px}
	</style>


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
							<a class="navbar-brand" href="index">
								<img src="images/logo.png" alt="Logo">
							</a>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="index.html">Home</a>
								</li>
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Portfolio <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li>
											<a href="portfolio.html">Portfolio Filter</a>
										</li>
										<li>
											<a href="portfolio-single.html">Portfolio Single</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="service.html">Service</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li>
											<a href="blog-grid.html">Blog Grid</a>
										</li>
										<li>
											<a href="blog-single.html">Blog Single</a>
										</li>
										<li>
											<a href="blog-right-sidebar.html">Blog Right Sidebar</a>
										</li>
										<li>
											<a href="blog-left-sidebar.html">Blog Left Sidebar</a>
										</li>
										<li>
											<a href="blog-full-width.html">Blog Full Width</a>
										</li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="ion-ios-arrow-down"></span></a>
									<ul class="dropdown-menu">
										<li>
											<a href="about.html">About Us</a>
										</li>
										<li>
											<a href="coming-soon.html">Coming Soon</a>
										</li>
										<li>
											<a href="404.html">404 Page</a>
										</li>
										<li>
											<a href="faq.html">FAQ</a>
										</li>
										<li>
											<a href="pricing.html">Pricing Table</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="contact.html">Contact</a>
								</li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- header close -->
<!--我的博客-->
<section class="page-title bg-2">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="block">
					<h1 style="font-size: 40px">我的博客</h1>
					<p>Never underestimate your power to change yourself!</p>
				</div>
			</div>
		</div>
	</div>
</section>
<div class="page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<aside class="sidebar">
					<!-- 最新的帖子 -->
					<div class="widget widget-latest-post">
						<h4 class="widget-title">最新的帖子</h4>
						<c:forEach var="hotData" items="${hotData}">
							<div class="media">
								<a class="pull-left" href="details?contentId=${hotData.id}">
									<img class="media-object" src="images/blog/${hotData.previewImg}" alt="Image">
								</a>
								<div class="media-body">
									<h4 class="media-heading"><a href="details?contentId=${hotData.id}">${hotData.title}</a></h4>
									<p>${hotData.content}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- End 最新的帖子-->
					<!-- 分类-->
					<div class="widget widget-category">
						<h4 class="widget-title">分类</h4>
						<ul class="widget-category-list">
							<c:forEach var="typeData" items="${typeData}">
								<li>
									<a href="queryByType?typeId=${typeData.id}">${typeData.typeName}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- End 分类  -->
					<!-- 标签-->
					<div class="widget widget-tag">
						<h4 class="widget-title">标签</h4>
						<ul class="widget-tag-list">
							<c:forEach var="tagData" items="${tagData}">
								<li>
									<a href="queryByTag?tagId=${tagData.id}">${tagData.tagName}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!--分享功能--->
					<ol>
						<li class="row">
							<div id="share-1"></div>
						</li>
					</ol>
					<div class="about4">
						<div class="about4_ch">成长经历</div>
						<div class="about4_main">
							<div class="line"></div>
							<!---时间轴-->
							<ul>
								<c:forEach items="${blogTime}" var="blogTime">
									<li>
										${blogTime.content}
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- 代码 开始 -->
					<div class="head-warp">
						<div class="head">
							<div class="nav-box">
								<ul>
									<li class="cur" style="text-align:center; font-size:20px; font-family:'微软雅黑', '宋体';"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End 标签  -->
				</aside>
			</div>
			<div class="col-md-8">
				<c:forEach var="wlecomeData" items="${wlecomeData}">
					<div class="post">
						<!--如果是图片形式-->
							<div class="post-media post-thumb">
								<a href="details?contentId=${wlecomeData.id}">
									<img src="images/blog/${wlecomeData.previewImg}" alt="">
								</a>
							</div>
						<%--<!--如果是视频形式-->
						<c:if  test="${wlecomeData.status==2}">
							<div class="post-media post-media-audio">
								<iframe frameborder="0" src="${wlecomeData.mediaMaterials}" allowFullScreen="true"></iframe>
							</div>
						</c:if>--%>
						<h3 class="post-title"><a href="details?contentId=${wlecomeData.id}">${wlecomeData.title}</a></h3>
						<div class="post-meta">
							<ul>
								<li>
									<i class="ion-calendar"></i> ${wlecomeData.createTime}
								</li>
								<li>
									<i class="ion-android-people"></i> 李字
								</li>
								<li>
									<a href=""><i class="ion-pricetags"></i> 生活</a>,
									<a href="">健身</a>,
									<a href="">娱乐</a>
								</li>
							</ul>
						</div>
						<div class="post-content">
							<p>${wlecomeData.content}</p>
							<a href="details?contentId=${wlecomeData.id}" class="btn btn-main">继续阅读</a>
						</div>
					</div>
				</c:forEach>
				<!---分页样式-->
				<div class="text-center">
					<ul class="pagination post-pagination">
						<li>
							<a href="#">Prev</a>
						</li>
						<li class="active">
							<a href="#">1</a>
						</li>
						<li>
							<a href="#">2</a>
						</li>
						<li>
							<a href="#">3</a>
						</li>
						<li>
							<a href="#">4</a>
						</li>
						<li>
							<a href="#">5</a>
						</li>
						<li>
							<a href="#">Next</a>
						</li>
					</ul>
				</div>
				<!---分页样式-->
			</div>
		</div>
	</div>
</div>
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
<script src="js/jquery-git.min.js"></script>
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
<!-- Form Validator -->
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/script.js"></script>
<!--分享-->
<script src="js/social-share.js"></script>
<script src="js/qrcode.js"></script>
<!--时间轴-->
<script type="text/javascript">
    $(document).ready(function(e) {
        var h = $(".about4_main ul li:first-child").height()/2;<!--第一个li高度的一半-->
        var h1 = $(".about4_main ul li:last-child").height()/2;<!--最后一个li高度的一半-->
        $(".line").css("top",h);
        $(".line").height($(".about4_main").height()-h1-h);
    });
</script>
<script>
    socialShare('#share-1');
</script>
<script src="js/top.js"></script>
<script>
    window.onload = function(){
        // new Top({s:180,th:400,w:20,h:20});
        new Top({s:180,th:400,w:50,h:50,dImg:"images/up-d.png"});
    }
</script>
</body>
</html>