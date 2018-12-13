<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:wb="http://open.weibo.com/wb">
<head>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 








</script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/jquery.gallery.css">
<!-- pop-up-box -->
<link href="${pageContext.request.contextPath}/static/css/popuo-box.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link
	href="${pageContext.request.contextPath}/static/css/font-awesome.css"
	rel="stylesheet">
<!-- //font-awesome icons -->
<link
	href="http://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<div class="agile_header_grid">
				<div class="w3_agile_logo">
					<h1>
						<a href="index"><span>M</span>培训中心首页</a>
					</h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
						<li><a href="#small-dialog"
							class="play-icon popup-with-zoom-anim">用户登录</a></li>
						<!--  <li><a href="admin">管理员登录</a></li>-->
						<li>联系电话 : <span>400-0852-339</span></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- 登录 -->
	<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">登录</h3>
		<div class="agileits_signin_form">
			<form method="post" name="bs" action="select">
				<input type="text" name="sId" placeholder="手机号" pattern="^1\d{10}$"
					required="required" type="text"> <input type="password"
					name="sPassword" placeholder="密码" required="">
				<div class="d1 clearfix">
					<div class="d1-1">
						<input name="code" type="text" placeholder="输入图中验证码/点击可刷新" />
					</div>
					<div class="d1-2">
						<img src="checkCode" alt="" width="100" height="32"
							style="height: 43px; cursor: pointer;"
							onclick="this.src=this.src+'?'">
					</div>
				</div>
				<div class="agile_remember">
					<div class="agile_remember_left">
						<div class="check">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i> </i>记住密码</label>
						</div>
					</div>
					<div class="agile_remember_right">
						<a href="#">忘记密码</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<span id="error" style="color: red"></span> <input type="submit"
					name="button" value="登录" />

				<p>
					没有账户？ <a href="#small-dialog1"
						class="play-icon popup-with-zoom-anim">注册</a>
				</p>
			</form>
		</div>
	</div>
	<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">用户注册</h3>
		<div class="agileits_signin_form">
			<form action="insert" method="post">
				<input type="text" name="sId" placeholder="输入您的手机号"
					pattern="^1\d{10}$" required="required" type="text"> <input
					type="text" name="sName" placeholder="姓名" required=""> <input
					type="text" name="sSex" placeholder="性别" required=""> <input
					type="text" name="sAge" placeholder="年龄" required=""> <input
					type="password" name="sPassword" placeholder="密码" required="">
				<input type="submit" value="注册">
				<p>
					已有账户<a href="#small-dialog" class="play-icon popup-with-zoom-anim">去登录</a>
				</p>
			</form>
		</div>
	</div>
	<!-- //登录 -->
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
		function LoginDate() {
			var code = document.bs.code.value;
			$.ajax({
				url : "yzms.html",
				type : "post",
				async : false,
				data : {code : code},
				success : function(data) {
				        if(data="1"){
				        	alert("1");
				        	location.href = "select";
				        }else{
				        	alert("2");
				        }
				}
			})
		}
	</script>
</body>
<style type="text/css" media="screen">
.d1 {
	width: 500px;
	margin: 0 auto;
	overflow: hidden;
}

.d1-1 {
	float: left;
	width: 250px;
	height: 20px;
	background: white;
}
</style>
</html>