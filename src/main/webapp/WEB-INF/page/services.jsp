<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>新闻动态</title>
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
		<h3>新闻动态</h3>
	</div>
<!-- //banner -->		
<!-- services -->
	<div class="services">
		<div class="container">
			<div class="w3_agile_services_grids">
				<div class="col-md-4 w3_agile_services_grid">
					<div class="agile_services_grid">
						<div class="hover06 column">
							<div>
								<figure><img src="/trains/food3.jpg" alt=" " class="img-responsive" /></figure>
							</div>
						</div>
						<div class="agile_services_grid_pos">
							<i class="fa fa-cubes" aria-hidden="true"></i>
						</div>
					</div>
					<h4>tempus eu turpis rhoncus</h4>
					<p>Aliquam lacus turpis, lobortis quis dolor sed, dignissim rhoncus neque.</p>
				</div>
				<div class="col-md-4 w3_agile_services_grid">
					<div class="agile_services_grid">
						<div class="hover06 column">
							<div>
								<figure><img src="/trains/food4.jpg" alt=" " class="img-responsive" /></figure>
							</div>
						</div>
						<div class="agile_services_grid_pos">
							<i class="fa fa-line-chart" aria-hidden="true"></i>
						</div>
					</div>
					<h4>lobortis quis dolor sed lacus</h4>
					<p>Aliquam lacus turpis, lobortis quis dolor sed, dignissim rhoncus neque.</p>
				</div>
				<div class="col-md-4 w3_agile_services_grid">
					<div class="agile_services_grid">
						<div class="hover06 column">
							<div>
								<figure><img src="/trains/1.jpg" alt=" " class="img-responsive" /></figure>
							</div>
						</div>
						<div class="agile_services_grid_pos">
							<i class="fa fa-cog" aria-hidden="true"></i>
						</div>
					</div>
					<h4>dignissim rhoncus eu turpis</h4>
					<p>Aliquam lacus turpis, lobortis quis dolor sed, dignissim rhoncus neque.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //services -->
<!-- services-bottom -->
	<div class="services-bottom">
		<div class="container">
			<h3>a satisfied customer is the best business strategy of all</h3>
		</div>
	</div>
<!-- //services-bottom -->
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>
