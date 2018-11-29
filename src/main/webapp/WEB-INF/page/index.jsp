<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:wb="http://open.weibo.com/wb">
<head>
<title>梦润培训中心首页</title>
</head>
<body>
<!-- wei bo -->
<script src="https://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
<!-- //wei bo -->
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
	<div class="banner">
	</div>
<!-- //banner -->
<!--新闻-->
    <!--新闻详情 -->
    <c:forEach items="${news }" var="news">
      <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					${news.nTitle}
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="/trains/${news.nUrl}" alt=" " class="img-responsive" />
						<p> <i>${news.nContent}</i></p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	  </div>
    </c:forEach>
	
	<!-- //新闻详情 -->
<!-- //新闻 -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-8 w3l_banner_bottom_left">
				<h3>公司简介</h3>
				<p>梦润集团下辖贵州张明富生态农业有限公司、贵州梦润云大数据有限公司、贵州梦丽雅化妆品有限公司、
				贵州梦润鹌鹑有限公司、遵义市张明富旅游服务有限公司、遵义市梦润之春建筑有限公司、遵义市梦润农民专业合作社等7家公司。
				现集团公司用地1000多亩，建有梦润农民工返乡下乡创业园、茅台集团梦润还原土猪养殖观光旅游示范基地、国家级梦润鹌鹑养殖示范区、
				全国农民工返乡下乡培训基地、农民工文化馆、党建馆、劳模创新工作室等。 公司主要产品有梦润鹌鹑系列和梦润化妆品系列产品，
				均获贵州名牌等多项荣誉，已成长为省级龙头企业和省级扶贫龙头企业。公司拥有30多项专利，7个鹌鹑养殖地方标准，获省丰收二等奖，
				鹌鹑产业化经营做到了全国行业最前列。</p>
			</div>
			<div class="col-md-4 w3l_banner_bottom_right">
				<img src="/trains/1.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- 新闻 -->
	<div class="news">
		<div class="container">
			<h3 class="agile_head">新闻资讯</h3>
			<div class="agileits_w3layouts_news_grids">
				<ul id="flexiselDemo1">	
				  <c:forEach items="${news }" var="news">
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="/trains/${news.nUrl}" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">${news.nTitle }</a></h5>
						</div>
					</li>
				  </c:forEach>
				</ul>
				<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems: 1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:2
									},
									tablet: { 
										changePoint:768,
										visibleItems: 3
									}
								}
							});
							
						});
				</script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //news -->


<!--广告-->
    <!--广告详情 -->
    <c:forEach items="${news }" var="news">
      <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					${news.nTitle}
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="/trains/${news.nUrl}" alt=" " class="img-responsive" />
						<p> <i>${news.nContent}</i></p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	  </div>
    </c:forEach>
	
	<!-- //广告详情 -->
<!-- //广告 -->

<!-- 广告 -->
	<div class="news">
		<div class="container">
			<h3 class="agile_head">广告</h3>
			<div class="agileits_w3layouts_news_grids">
				<ul id="flexiselDemo2">	
				  <c:forEach items="${news }" var="news">
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="/trains/${news.nUrl}" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">${news.nTitle }</a></h5>
						</div>
					</li>
				  </c:forEach>
				</ul>
				<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo2").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems: 1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:2
									},
									tablet: { 
										changePoint:768,
										visibleItems: 3
									}
								}
							});
							
						});
				</script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //广告-->
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>