<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:wb="http://open.weibo.com/wb">
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery.gallery.css">
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="http://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3_agileits_nav">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left"></div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="index">网站首页</a></li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">特色课程<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="tiyan">教学理念</a></li>
										<!--  <li><a href="ftjx">教学模式</a></li>
										<li><a href="xcjj">教学服务</a></li> -->
										<li><a href="xcgm">教学目标</a></li>
										<li><a href="yyjx">教学视频</a></li>
										<li><a href="course?currentPage=1">课程大全</a></li>
										<!-- <li><a href="jlyt.jsp">交流研讨</a></li> -->
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">行程配置<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="red">红色圣地</a></li>
										<li><a href="traffic">交通工具</a></li>
										<li><a href="food">特色美食</a></li>
										<!-- <li><a href="culture">文化产品</a></li> -->
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">学员风采<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="photo">学员学习照</a></li>
										<li><a href="bestStu">最佳学员</a></li>
										<li><a href="stuStory">往期学员故事</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">培训信息<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="about">关于我们</a></li>
										<!-- <li><a href="redHistory">红色历史文化教学点</a></li>
										<li><a href="greenTeach">绿色发展教学点</a></li> -->
										<li><a href="company">挂牌单位</a></li>
										<li><a href="content?currentPage=1">问题反馈</a></li>
										<!-- <li><a href="services">新闻动态</a></li> -->
									</ul>
								</li>
							</ul>
							<div class="agileinfo_search">
								<form action="search" target="_blank" >
									<input type="text" name="search" size="30" placeholder="输入关键字..." >
									<input type="submit" value="">
									<input type="hidden" name="cc" value="http://localhost:8080/train/index">
								</form>
							</div>
						</nav>
					</div>
				</nav>	
			</div>
		</div>
	</div>
<!-- //header -->

<!-- 侧边广告 
	<div id="left_layer" style="position:fixed;z-index:999999; top:200px; left:0px;">
		<a href="${left.aLink}" target="_blank"><img src="/trains/${left.aPicture}" width="150" height="300" ><br></a>
		<a href="javascript:;" onclick="javascript:document.getElementById('left_layer').style.display='none';">
		<center>关闭</center></a>
	</div>					
	<div id="right_layer" style="position:fixed;z-index:999999; top:200px; right:0px;">
		<a href="${right.aLink}" target="_blank"><img src="/trains/${right.aPicture}" width="150" height="300" ><br></a>
		<a href="javascript:;" onclick="javascript:document.getElementById('right_layer').style.display='none';">
		<center>关闭</center></a>
	</div>
 //侧边广告 -->
<script src="${pageContext.request.contextPath}/static/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
<!-- for bootstrap working -->
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>