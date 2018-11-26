<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>挂牌单位</title>
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
		<h3>挂牌单位</h3>
	</div>
<!-- //banner -->		
<!-- about -->
	<div class="about">
		<div class="container">
			<div class="agileinfo_about_grids">
				<div class="col-md-8 agileinfo_about_grid_left">	
					<div class="wthree_about_grid">
						<h3>梦润集团欢迎您</h3>
						<p>梦润目标：发展五百年！<br>
						梦润精神：敢打硬仗，敢打恶仗，保证打赢！<br>
						梦润发展要求：硬要发展才是大道理！<br>
						发展不忘世代根：立足家乡报春晖。</p>
						<h2><span>梦润旗下单位</span></h2>
						<ul>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>贵州梦润云大数据有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>贵州梦丽雅化妆品有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>贵州梦润鹌鹑有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>贵州张明富生态农业有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>遵义张明富旅游服务有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>遵义梦润之春建筑有限公司</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>遵义梦润农民专业合作社</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 agileinfo_about_grid_right">
					<img src="${pageContext.request.contextPath}/static
/images/9.jpg" alt=" " class="img-responsive" />
				    <h1><center>张明富</center></h1>
					<h3><center>梦润集团董事长</center></h3>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- about -->


<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>