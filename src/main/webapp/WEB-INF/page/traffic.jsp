<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>交通工具</title>
</head>
<body>
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
		<h3>联系我们</h3>
	</div>
<!-- //banner -->
<!-- contact -->
	<div class="services">
		<div class="container">
			<h3 class="agile_head">欢迎参观</h3>
			<p class="w3_agile_para">如果您有意向加入我们，欢迎各位随时前来参观、了解</p>
			<div class="agileits_w3layouts_contact_grids">
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>交通工具</h4>
						<p>到本培训中心可通过乘坐公交车或者打的到达<br>抑或拨打本公司的热线电话我们也有专车提供接送服务</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>联系方式</h4>
						<ul class="contact_info">
							<li><i class="glyphicon glyphicon-map-marker" ></i>贵州省遵义市汇川区团泽镇梦润大道梦润源89号</li>
							<li><i class="glyphicon glyphicon-envelope" ></i><a href="mengrun@gzmrjt.com">mengrun@gzmrjt.com</a></li>
							<li><i class="glyphicon glyphicon-earphone" ></i>400-0852-339</li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //contact -->
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>
