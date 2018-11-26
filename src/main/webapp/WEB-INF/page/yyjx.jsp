<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>影音教学</title>
<!-- top -->
<c:if test="${student.sId == null}">
	<jsp:include page="top1.jsp"/> 
</c:if> 

<c:if test="${student.sId != null}">
	<jsp:include page="top2.jsp"/>
</c:if> 
<jsp:include page="top.jsp"/>
<!-- //top -->
<!-- banner -->	
	<div class="banner1">
		<h3>影音教学</h3>
	</div>
<!-- //banner -->		



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
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>