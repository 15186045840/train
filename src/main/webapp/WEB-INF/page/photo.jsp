<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>学员学习照</title>
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
		<h3>学员学习照</h3>
	</div>
<!-- //banner -->
<!-- portfolio -->
	<div class="portfolio">
		<div class="container">
			<h3 class="agile_head">梦润学员</h3>
		</div>
		<div class="w3_agile_portfolio_grids">
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x6.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x6.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x1.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x1.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x2.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x2.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x3.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x3.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x4.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x4.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/x5.png" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/x5.png" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>梦润学员</h4>
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
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>