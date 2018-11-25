<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>特色美食</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/static
/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/static
/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static
/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static
/css/jquery.gallery.css">
<!-- pop-up-box -->
<link href="${pageContext.request.contextPath}/static
/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/static
/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="http://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="agile_header_grid">
				<div class="w3_agile_logo">
					<h1><a href="index.jsp"><span>M</span>培训中心首页</a></h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
						<li><a href="#small-dialog" class="play-icon popup-with-zoom-anim">用户登录</a></li>
						<li><a href="#">管理员登录</a></li>
						<li>联系电话 : <span>400-0852-339</span></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_agileits_nav">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">

					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="index.jsp">网站首页</a></li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">特色课程<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="tiyan.jsp">体验式教学</a></li>
										<li><a href="typography.jsp">访谈教学</a></li>
										<li><a href="xcjj.jsp">现场讲解</a></li>
										<li><a href="xcgm.jsp">现场观摩</a></li>
										<li><a href="yyjx.jsp">影音教学</a></li>
										<li><a href="jlyt.jsp">交流研讨</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">行程配置<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="red.jsp">红色圣地</a></li>
										<li><a href="traffic.jsp">交通工具</a></li>
										<li><a href="food.jsp">特色美食</a></li>
										<li><a href="culture.jsp">文化产品</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">学员风采<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="photo.jsp">学员学习照</a></li>
										<li><a href="beststu.jsp">最佳学员</a></li>
										<li><a href="stustory.jsp">往期学员故事</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#"
									 class="hvr-sweep-to-bottom" data-toggle="dropdown">培训信息<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="about.jsp">关于我们</a></li>
										<li><a href="redHistory.jsp">红色历史文化教学点</a></li>
										<li><a href="greenTeach.jsp">绿色发展教学点</a></li>
										<li><a href="company.jsp">挂牌单位</a></li>
									</ul>
								</li>
							</ul>
							<div class="agileinfo_search">
								<form action="#" method="post">
									<input type="text" name="Search" placeholder="输入关键字..." required="">
									<input type="submit" value=" ">
								</form>
							</div>
						</nav>
					</div>
				</nav>	
			</div>
		</div>
	</div>
<!-- //header -->
<!-- 登录 -->
	<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">登录</h3>	
		<div class="agileits_signin_form">
			<form action="#" method="post">
				<input type="text" name="phone" id="phone" placeholder="手机号" pattern="^1\d{10}$" required="required" type="text">
				<input type="password" name="password" id="password" placeholder="密码" required="">
				<div class="agile_remember">
					<div class="agile_remember_left">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>记住密码</label>
						</div>
					</div>
					<div class="agile_remember_right">
						<a href="#">忘记密码</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<input type="submit" value="登录">
				<p>没有账户？ <a href="#small-dialog1" class="play-icon popup-with-zoom-anim">注册</a></p>
			</form>
		</div>
	</div>
	<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">用户注册</h3>	
		<div class="agileits_signin_form">
			<form action="#" method="post">
				<input type="text" name="phone" id="phone" placeholder="输入您的手机号" pattern="^1\d{10}$" required="required" type="text">
				<input type="text" name="name" id="name" placeholder="姓名" required="">
				<input type="text" name="gender" id="gender" placeholder="性别" required="">
				<input type="text" name="age" id="age" placeholder="年龄" required="">
				<input type="password" name="password" id="password" placeholder="密码" required="">
				<input type="submit" value="注册">
				<p>已有账户<a href="#small-dialog" class="play-icon popup-with-zoom-anim">去登录</a></p>
			</form>
		</div>
	</div>
<!-- //登录 -->
<!-- 侧边广告 -->
<div id="left_layer" style="position:fixed;z-index:999999; top:200px; left:0px;">

<a href="https://www.baidu.com"><img src="http://www.mlhd.org/wb/ad/xuanfu/zhifubao.png"><br></a>

<a href="javascript:;" onclick="javascript:document.getElementById('left_layer').style.display='none';"><center>关闭</center></a>

</div>
<div id="right_layer" style="position:fixed;z-index:999999; top:200px; right:0px;">

<a href="https://www.baidu.com"><img src="http://www.mlhd.org/wb/ad/xuanfu/zhifubao.png"><br></a>

<a href="javascript:;" onclick="javascript:document.getElementById('right_layer').style.display='none';"><center>关闭</center></a>

</div>
<!-- //侧边广告 -->	
<script src="${pageContext.request.contextPath}/static
/js/jquery.magnific-popup.js" type="text/javascript"></script>
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
<!-- banner -->	
	<div class="banner1">
		<h3>特色美食</h3>
	</div>
<!-- //banner -->
<!-- portfolio -->
	<div class="portfolio">
		<div class="container">
			<h3 class="agile_head">特色美食</h3>
		</div>
		<div class="w3_agile_portfolio_grids">
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food1.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food1.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>味绝鱼头</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food2.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food2.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>缅甸野生蟹</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food3.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food3.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>蒜蓉蒸带子</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food4.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food4.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>味绝美蛙</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food5.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food5.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红烧剔骨鸡</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/food6.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/food6.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>香辣味烤鱼</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //portfolio -->
	<script type="text/javascript"  src="${pageContext.request.contextPath}/static
/js/jquery.gallery.js" ></script>
	<script>
		$(function() {
			$('.w3_agile_portfolio_grids').createSimpleImgGallery();
		});
	</script>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-home" aria-hidden="true"></i>
					</div>
					<h4>地址</h4>
					<p>贵州省遵义市汇川区团泽镇梦润大道梦润源89号</p>
				</div>
				<div class="col-md-2 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<h4>电话</h4>
					<p>400-0852-339</p>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</div>
					<h4>邮箱</h4>
					<p><a href="mengrun@gzmrjt.com">mengrun@gzmrjt.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="w3ls_copyright_left">
				<ul>
				    <li><a href="index.jsp">首页</a></li>
					<li><a href="profile.jsp">公司简介</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
				<p>Copyright &copy; 2017.Company MengRun All rights reserved.More Templates <a href="index.jsp" target="_blank" title="梦润首页">梦润首页</a></p>
			</div>
			<div class="w3ls_copyright_right">
				<ul>
					<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
					<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static
/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static
/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- for bootstrap working -->
	<script src="${pageContext.request.contextPath}/static
/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>