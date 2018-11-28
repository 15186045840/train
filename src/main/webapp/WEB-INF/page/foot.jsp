<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
<body>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-home" ></i>
					</div>
					<h4>地址</h4>
					<p>贵州省遵义市汇川区团泽镇梦润大道梦润源89号</p>
				</div>
				<div class="col-md-2 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-phone"></i>
					</div>
					<h4>电话</h4>
					<p>400-0852-339</p>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-envelope" ></i>
					</div>
					<h4>邮箱</h4>
					<p><a href="#">mengrun@gzmrjt.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="w3ls_copyright_left">
				<ul>
				    <li><a href="index">首页</a></li>
					<li><a href="profile">公司简介</a></li>
					<li><a href="about">关于我们</a></li>
					<li><a href="contact">联系我们</a></li>
				</ul>
				<p>Copyright &copy; 2017.Company MengRun All rights reserved.More Templates <a href="index" target="_blank" title="梦润首页">梦润首页</a></p>
			</div>
			<img src="${pageContext.request.contextPath}/static/images/erweima.png" width="130px" height="130px" align="right"/>
		</div>
	</div>
<!-- //footer -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
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