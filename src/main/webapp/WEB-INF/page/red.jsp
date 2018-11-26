<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>红色圣地</title>
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
		<h3>红色圣地</h3>
	</div>
<!-- //banner -->
<!-- portfolio -->
	<div class="portfolio">
		<div class="container">
			<h3 class="agile_head">红色圣地</h3>
			<h4>遵义会址</h4>
			<p class="w3_agile_para">民囯二十四年（1935年）1月初，中国工农红军长征到达遵义后，中华苏维埃共和国中央革命军事委员会总司部与一局（负责作点）即驻在这幢楼房里。1月15日至17日，遵义会议（即中共中央政治局扩大会议），就在主楼楼上原房主的小客厅举行。这次会议确立了以毛泽东为代表的新的中央领导集体。</p>
		</div>
		<div class="w3_agile_portfolio_grids">
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz1.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz1.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz2.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz2.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz3.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz3.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz4.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz4.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
							</div>
						</div> 
					</a>
				</div>
			</div>
			<div class="agile_portfolio_grid">
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz5.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz5.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
							</div>
						</div> 
					</a>
				</div>
				<div class="w3_agileits_portfolio_grid">
					<a href="${pageContext.request.contextPath}/static
/images/zyhz6.jpg" >
						<div class="view effect">
							<img src="${pageContext.request.contextPath}/static
/images/zyhz6.jpg" alt=" " class="img-responsive" />
							<div class="mask"></div>
							<div class="content">
								<h4>红色圣地</h4>
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