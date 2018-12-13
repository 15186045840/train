<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>最佳学员</title>
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
		<h3>最佳学员</h3>
	</div>
<!-- //banner -->		
<!-- 学员 -->
	<div class="services">
		<div class="container">
			<h3 class="agile_head">往届最佳学员</h3>
			<div class="w3layouts_team_grids">	
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="/trains/bs1.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>学员1</h4>
							<h5>2014届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="/trains/bs2.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>学员2</h4>
							<h5>2015届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="/trains/bs3.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>学员3</h4>
							<h5>2016届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="/trains/bs4.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>学员4</h4>
							<h5>2017届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->


<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>