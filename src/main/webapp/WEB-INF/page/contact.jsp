<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>联系我们</title>
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
			<h3 class="agile_head">联系我们</h3>
			<p class="w3_agile_para">不管您有任何问题，欢迎前来咨询我们</p>
			<div class="agileits_w3layouts_contact_grids">
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>关于我们</h4>
						<p>公司主要产品有梦润鹌鹑系列和梦润化妆品系列产品，均获贵州名牌等多项荣誉，已成长为省级龙头企业和省级扶贫龙头企业。公司拥有30多项专利，7个鹌鹑养殖地方标准，获省丰收二等奖，鹌鹑产业化经营做到了全国行业最前列。</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>联系方式</h4>
						<ul class="contact_info">
							<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>贵州省遵义市汇川区团泽镇梦润大道梦润源89号</li>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mengrun@gzmrjt.com">mengrun@gzmrjt.com</a></li>
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>400-0852-339</li>
						</ul>
					</div>
				</div>
				<div class="col-md-7 agileits_w3layouts_contact_gridr">
					<form action="interaction_insert" method="post">
						<textarea name="iContent" placeholder="在此输入您的问题..." required=""></textarea>
						<div class="agileits_leave">
							<label>姓名 :</label>
							<input type="text" name="iName" placeholder="请输入您的姓名 " required="" />
						</div>
						<div class="agileits_leave">
							<label>电话 :</label>
							<input type="text" name="iPhone" placeholder=" 请输入您的手机号" required="" />
						</div>
						<div class="agileits_leave">
							<label>意向课程:</label>
							<input type="text" name="iCourse" placeholder="请输入您的意向课程 " required="" />
						</div>
						<div class="clearfix"> </div>
						<input type="submit" value="提交">   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2601779590&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:2601779590:51" alt="人工客服咨询" title="人工客服咨询"/></a>
					</form>	
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
