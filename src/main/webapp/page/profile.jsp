<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>公司简介</title>
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
										<li><a href="ftjx.jsp">访谈教学</a></li>
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
										<li><a href="bestStu.jsp">最佳学员</a></li>
										<li><a href="stuStory.jsp">往期学员故事</a></li>
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
		<h3>公司简介</h3>
	</div>
<!-- //banner -->		
<!-- about -->
	<div class="about">
		<div class="container">
			<div class="agileinfo_about_grids">
				<div class="col-md-8 agileinfo_about_grid_left">	
					<div class="wthree_about_grid">
						<h3>梦润集团</h3>
						<p>为了摆脱贫困，张明富1980年第一个外出打工，在城市站稳了脚跟。为了先富起来，张明富1991年第一个返乡创业，回到遵义市火车站做批发生意。
						1998年张明富回到老家创建梦润集团，到凉风沟这个“当地能人都弃而远之的穷乡僻壤”创业创新。梦润集团下辖贵州张明富生态农业有限公司、贵州梦润云大数据有限公司、贵州梦丽雅化妆品有限公司、贵州梦润鹌鹑有限公司、遵义市张明富旅游服务有限公司、遵义市梦润之春建筑有限公司、遵义市梦润农民专业合作社等7家公司。
						现集团公司用地1000多亩，建有梦润农民工返乡下乡创业园、茅台集团梦润还原土猪养殖观光旅游示范基地、国家级梦润鹌鹑养殖示范区、全国农民工返乡下乡培训基地、农民工文化馆、党建馆、劳模创新工作室等。
						公司主要产品有梦润鹌鹑系列和梦润化妆品系列产品，均获贵州名牌等多项荣誉，已成长为省级龙头企业和省级扶贫龙头企业。公司拥有30多项专利，7个鹌鹑养殖地方标准，获省丰收二等奖，鹌鹑产业化经营做到了全国行业最前列。
						2017年1月，由十三个部委组成的国务院双创办公室大会上，将梦润集团董事长张明富认定为“中国农民工返乡下乡创业第一人”，将遵义市汇川区认定为“全国农民工返乡创业第一县”。
						2016年9月10日，“首届中国农民工创业创新高层论坛”在遵义市汇川区举办，大坎村梦润源从此被正式认定为“中国农民工政策发源地”。梦润集团现已是全国农民工返乡下乡创业培训基地、贵州省政协干部培训中心教学培训基地、省委组织部干部学院教育培训基地、贵州省总工会干部学院培训基地、汇川区军地两用人才培训基地、汇川区返乡下乡创业培训基地、遵义市党校等教学基地。
						<h2><span>发展历程</span></h2>
						<ul>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1980年     张明富为了摆脱贫困，第一个走出大山，外出务工；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1991年     张明富为了先富起来，第一个返乡创业，回到遵义市火车站做批发生意；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1998年     张明富为了带领乡亲脱贫致富，回到老家创立贵州梦丽雅化妆品有限公司；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2003年     公司搬到张明富出生地——遵义市汇川区团泽镇大坎村夹皮沟；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2005年     集团成立贵州梦润鹌鹑有限公司；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2005年     梦润鹌鹑公司遇到禽流感，几乎受到了灭顶之灾，用工业反哺农业；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2007年     集团董事长张明富写信给时任国家总理温家宝同志，得到了温总理的肯定批示；</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 agileinfo_about_grid_right">
					<img src="${pageContext.request.contextPath}/static
/images/p1.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- about -->
<!-- team -->
	<div class="services">
		<div class="container">
			<h3 class="agile_head">相关图片</h3>
			<div class="w3layouts_team_grids">	
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p5.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润集团</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p2.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润活动</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p3.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润产品</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p4.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润环境</h4>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->


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