<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>学员故事</title>
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
		<h3>往期学员故事</h3>
	</div>
<!-- //banner -->
<!-- contact -->
	<div class="services">
		<div class="container">
			<h4 class="agile_head">学员故事</h4>
			<div class="agileits_w3layouts_contact_grids">
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>金城武</h4>
						<p>金城武的母亲是台湾人，父亲则是第一个将养鳗技术转移到台湾的冲绳人。金城武有两个哥哥，大哥同母异父，二哥同父异母。除了“电玩狂人”和“漫画迷”的身份之外，金城武热爱音乐，还会弹钢琴，钟爱旅行，向往冒险，他上过荒岛，去过沙漠和极地。他喜欢大自然，喜欢小动物，喜欢研究哲学。他喜欢躲在水下憋气，只为了能练出“可以在水里流泪”的绝招；他梦想做动物园的饲养员，去某个动物园喂老虎，然后把自己也喂掉；他常常梦到自己一觉醒来，外面一片荒芜，全地球只有他一人存活；他最想演的戏是那种“只需要站在那里，然后就被炸死掉”</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>彭于晏</h4>
						<p>彭于晏出生于单亲家庭，自小父母离异，13岁随家人移民加拿大。他并不喜欢读书，却考上了温哥华最好的大学，读商科。他说，其实我一直知道，前途与爱好是两回事。他爱漫画，爱篮球，但在看不到前途的时候，他从不执著。如今工作忙碌的彭于晏总是不忘享受和家人相处的时间，拍摄间隙都会带著妈妈出去旅游，每次度假之后，彭于晏念叨的不仅是当地的风情，还有念念不忘的亲情。在银幕上光彩夺目，一个人的时候，彭于晏还是喜欢简单而具质感的生活。</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>想看更多精彩故事，请拨打我们的热线电话，按0找成先生进行了解</h4>
						<ul class="contact_info">
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>400-0852-339</li>
						</ul>
					</div>
				</div>
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>胡歌</h4>
						<p>从2005年电视剧《仙剑奇侠传》中的逍遥哥哥，到2015年电视剧《琅琊榜》中的梅长苏， 胡歌一路从唇红齿白，一脸单纯清秀的少年，蜕变成更真实的演员，坚韧地重生，用思想填充着演艺之路，他保持一颗童心，一步步转型，努力争取别人对他演员身份的认可；2006年的车祸，在胡歌的右眼留下永远的疤痕，伤害也是一种财富，那场车祸带来的人生思考，使得胡歌更加搏力地融进表演之中，虽然依然有着自我认知的迷茫，然而目标明确，绝不后退。胡歌喜欢摄影，也喜欢写字，他视角独特，充满着奇思妙想。</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>卢少勋</h4>
						<p>卢少勋，一个传奇一般的名字，他的传奇不在于成绩多好，相反他的成绩一塌糊涂；也不说他对社会做了什么贡献，相反，他就是社会上的一个败类，国家蛀虫，但是他就是这么的传奇，乃至于他到了大学，多次创造出了国庆七天假在寝室躺七天对的记录，至今无人打破，寝室其余人都称他为室长，又是一个传奇一般的称号因他而变得传奇，只有他，有资格做室长，只有他，才能让室长这个职位成为传奇，也只有他，才配得上传奇这俩字！卢少勋！这个谜一样的男人，总是无法让迷恋他的人对他无法自拔。</p>
					</div>
				</div>
				<div class="col-md-7 agileits_w3layouts_contact_gridr">
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //contact -->
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
