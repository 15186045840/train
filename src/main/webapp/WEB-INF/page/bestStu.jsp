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
						<img src="${pageContext.request.contextPath}/static
/images/bs1.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>金城武</h4>
							<h5>2014届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/bs2.jpg" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>彭于晏</h4>
							<h5>2015届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/bs3.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>胡歌</h4>
							<h5>2016届最佳学员</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/bs4.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>卢少勋</h4>
							<h5>古往今来！史上最佳最佳最佳佳学员！</h5>
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