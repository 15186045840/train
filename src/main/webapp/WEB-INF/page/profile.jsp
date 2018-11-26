<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>公司简介</title>
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
		<h3>公司简介</h3>
	</div>
<!-- //banner -->		
<!-- about -->
	<div class="about">
		<div class="container">
			<div class="agileinfo_about_grids">
				<div class="col-md-8 agileinfo_about_grid_left">	
					<div class="wthree_about_grid">
						<h3>梦润集团</h3>
						<p>为了摆脱贫困，张明富1980年第一个外出打工，在城市站稳了脚跟。为了先富起来，张明富1991年第一个返乡创业，回到遵义市火车站做批发生意。
						1998年张明富回到老家创建梦润集团，到凉风沟这个“当地能人都弃而远之的穷乡僻壤”创业创新。梦润集团下辖贵州张明富生态农业有限公司、贵州梦润云大数据有限公司、贵州梦丽雅化妆品有限公司、贵州梦润鹌鹑有限公司、遵义市张明富旅游服务有限公司、遵义市梦润之春建筑有限公司、遵义市梦润农民专业合作社等7家公司。
						现集团公司用地1000多亩，建有梦润农民工返乡下乡创业园、茅台集团梦润还原土猪养殖观光旅游示范基地、国家级梦润鹌鹑养殖示范区、全国农民工返乡下乡培训基地、农民工文化馆、党建馆、劳模创新工作室等。
						公司主要产品有梦润鹌鹑系列和梦润化妆品系列产品，均获贵州名牌等多项荣誉，已成长为省级龙头企业和省级扶贫龙头企业。公司拥有30多项专利，7个鹌鹑养殖地方标准，获省丰收二等奖，鹌鹑产业化经营做到了全国行业最前列。
						2017年1月，由十三个部委组成的国务院双创办公室大会上，将梦润集团董事长张明富认定为“中国农民工返乡下乡创业第一人”，将遵义市汇川区认定为“全国农民工返乡创业第一县”。
						2016年9月10日，“首届中国农民工创业创新高层论坛”在遵义市汇川区举办，大坎村梦润源从此被正式认定为“中国农民工政策发源地”。梦润集团现已是全国农民工返乡下乡创业培训基地、贵州省政协干部培训中心教学培训基地、省委组织部干部学院教育培训基地、贵州省总工会干部学院培训基地、汇川区军地两用人才培训基地、汇川区返乡下乡创业培训基地、遵义市党校等教学基地。
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
/images/p1.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- about -->
<!-- team -->
	<div class="services">
		<div class="container">
			<h3 class="agile_head">相关图片</h3>
			<div class="w3layouts_team_grids">	
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p5.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润集团</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p2.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润活动</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p3.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润产品</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 w3layouts_team_grid">
					<div class="w3l_team_grd">
						<img src="${pageContext.request.contextPath}/static
/images/p4.png" alt=" " class="img-responsive" />
						<div class="w3_team_grid">
							<h4>梦润环境</h4>
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