<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>关于梦润</title>
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
		<h3>关于我们</h3>
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
						<h2><span>发展历程</span></h2>
						<ul>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1980年     张明富为了摆脱贫困，第一个走出大山，外出务工；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1991年     张明富为了先富起来，第一个返乡创业，回到遵义市火车站做批发生意；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>1998年     张明富为了带领乡亲脱贫致富，回到老家创立贵州梦丽雅化妆品有限公司；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2003年     公司搬到张明富出生地——遵义市汇川区团泽镇大坎村夹皮沟；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2005年     集团成立贵州梦润鹌鹑有限公司；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2005年     梦润鹌鹑公司遇到禽流感，几乎受到了灭顶之灾，用工业反哺农业；</li>
							<li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>2007年     集团董事长张明富写信给时任国家总理温家宝同志，得到了温总理的肯定批示；</li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 agileinfo_about_grid_right">
					<img src="${pageContext.request.contextPath}/static
/images/ZMF.png" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- about -->
<!-- team -->
	<div class="services">
		<div class="container">
			<h3 class="agile_head">领导介绍</h3>
			<div class="w3layouts_team_grids">	
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/9.jpg" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>张明富</h4>
							<h5>梦润集团董事长</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/9.jpg" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>张明富</h4>
							<h5>梦润集团董事长</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/9.jpg" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>张明富</h4>
							<h5>梦润集团董事长</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/9.jpg" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>张明富</h4>
							<h5>梦润集团董事长</h5>
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