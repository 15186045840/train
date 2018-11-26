<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
<!-- bootstrap-pop-up -->
    <!-- 广告一 -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					一封改变中国返乡农民工命运的信
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/static
/images/g1.png" alt=" " class="img-responsive" />
						<p> 2007年2月17日深夜，除夕。张明富终于有时间拿起笔，去写那封他深埋心底、酝酿已久的信。他略微思索，动笔写道：
        “敬爱的温家宝总理……我是1962年出生在贵州省遵义市汇川区团泽镇大坎村凉风村民组的农民张明富，由于家庭贫困于1980年刚上高中不到两月就痛苦失学。”
        屋外，冬风卷着爆竹除岁的欢喜，呼呼地在这个宁静的小山村穿梭，草木沙沙作响。屋内，张明富一言不发，两个年龄尚幼的女儿也一言不发地陪着他。打完一道草稿，他让女儿们先读一遍，听她们的意见，几番修改，他才开始誊抄。在当年仅16岁的大女儿张丽鈜记忆里，写信时的父亲神色庄重。
        凌晨三时，这封2000余字的信完成了。信里，他简短地写了自己的经历：“曾长期外出打工，学到了技术，积攒了资金，在遵义市委、汇川区委的引导支持下于2005年初彻底回到了凉风这个偏僻的小山村,成立了‘贵州梦润鹌鹑有限公司’，从事农业产业化经营，带动农民群众养殖鹌鹑增收致富，现效果十分明显。”张明富知道，自己这段经历称不上辉煌伟大，但他有更重要的话要说，非说不可：“根据我的经历，以贵州遵义市为例，谈一下外出务工、回乡创业对建设社会主义新农村的作用……”</i></p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	</div>
	<!-- //广告一 -->
	<!-- 广告二 -->
	<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					三八妇女节送福音 省林业厅副厅长孟广芹一行视察指导梦润集团
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/static
/images/g2.png" alt=" " class="img-responsive" />
						<p>2018年3月8日，贵州省林业厅副厅长孟广芹，林业厅外产处调研员胡勇，副主任罗惠宁，遵义市林业局副局长袁兴在三八妇女节到中国农民工政策发源地梦润集团视察调研，为梦润集团的妇女同胞们带来节日的祝福，同时指导梦润集团如何打造全国森林康养基地。一行人到茅台集团梦润还原土猪基地视察调研，品尝梦润鹌鹑生态肥种植的白菜苔。
同时聆听全国劳模、省人大代表、大坎村第一书记梦润集团董事长张明富的下乡创业艰苦奋斗事迹，为乡村振兴探索经验。</i></p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	</div>
	<!-- //广告二 -->
	<!-- 广告三 -->
	<div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					习水下乡创业学习考察团到梦润集团，向梦润集团董事长张明富学习
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/static
/images/g3.png" alt=" " class="img-responsive" />
						<p>3月11日至12日，习水创业学习考察团到中国农民工政策发源地考察学习，并达成下乡创业意向，并想加盟梦润集团，在当地农村复制张明富下乡创业扶贫模式，与梦润合作开拓市场。 图为梦润集团董事长张明富向大家讲授市场营销、企业经营管理和下乡创业创新知识。</p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center> 
				</section>
			</div>
		</div>
	</div>
	<!-- //广告三 -->
	
	<!-- 广告四 -->
	<div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					遵义市汇川区团泽镇政府人员莅临贵州梦润集团调研
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/static
/images/g4.png" alt=" " class="img-responsive" />
						<p>2017年6月19日下午，团泽镇党委副书记、镇长杨庆前，副镇长何光伟、农服中心主任刘远春、镇扶贫办主任赵甫健、脱贫攻坚办舒万波、何茂娇，党政办王勇一行，赴梦润集团调研，就企业产业发展、脱贫攻坚、村集体经济方面进行了深入讨论。对区委、区政府批准挂牌建设的贵州梦润农民工返乡下乡创业园(培训基地)扩建项目很重视，并希望通过贵州梦润农民工返乡下乡创业园创业服务平台建设，推动团泽镇第一、第二、第三产业融合发展，做大培训产业，决胜脱贫攻坚和建成全面小康发挥引领作用。</p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	</div>
	<!-- //广告四 -->
	<!-- 广告五 -->
	<div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					遵义市第十三中学与贵州梦润集团签订校外社会实践基地协议及挂牌
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img src="${pageContext.request.contextPath}/static/images/g5.png" alt=" " class="img-responsive" />
						<p> 2017年06月16日，遵义市第十三中学与贵州梦润集团签订校外社会实践基地协议及挂牌仪式圆满成功，梦润在返乡创业之路上得到了更多人的肯定，欢迎接下来遵义市第十三中的学生们前来贵州梦润集团参观实践学习，并督促贵州梦润集团做得更好。</p>
					</div>
					<center><wb:share-button addition="simple" type="button"></wb:share-button></center>
				</section>
			</div>
		</div>
	</div>
	<!-- //广告五 -->
<!-- //bootstrap-pop-up -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-8 w3l_banner_bottom_left">
				<h3>公司简介</h3>
				<p>梦润集团下辖贵州张明富生态农业有限公司、贵州梦润云大数据有限公司、贵州梦丽雅化妆品有限公司、贵州梦润鹌鹑有限公司、遵义市张明富旅游服务有限公司、遵义市梦润之春建筑有限公司、遵义市梦润农民专业合作社等7家公司。现集团公司用地1000多亩，建有梦润农民工返乡下乡创业园、茅台集团梦润还原土猪养殖观光旅游示范基地、国家级梦润鹌鹑养殖示范区、全国农民工返乡下乡培训基地、农民工文化馆、党建馆、劳模创新工作室等。 
        公司主要产品有梦润鹌鹑系列和梦润化妆品系列产品，均获贵州名牌等多项荣誉，已成长为省级龙头企业和省级扶贫龙头企业。公司拥有30多项专利，7个鹌鹑养殖地方标准，获省丰收二等奖，鹌鹑产业化经营做到了全国行业最前列。</p>
			</div>
			<div class="col-md-4 w3l_banner_bottom_right">
				<img src="${pageContext.request.contextPath}/static
/images/1.jpg" alt=" " class="img-responsive" />
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
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="${pageContext.request.contextPath}/static
/images/g1.png" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">一封改变中国返乡农民工命运的信</a></h5>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="${pageContext.request.contextPath}/static
/images/g2.png" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal2">三八妇女节送福音 省林业厅副厅长孟广芹一行视察指导梦润集团</a></h5>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="${pageContext.request.contextPath}/static
/images/g3.png" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal3">习水下乡创业学习考察团到梦润集团，向梦润集团董事长张明富学习</a></h5>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="${pageContext.request.contextPath}/static
/images/g4.png" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">

								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal4">遵义市汇川区团泽镇政府人员莅临贵州梦润集团调研</a></h5>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="${pageContext.request.contextPath}/static
/images/g5.png" alt=" " class="img-responsive" />
								<div class="w3_agileits_news_grid_pos">

								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal5">遵义市第十三中学与贵州梦润集团签订校外社会实践基地协议及挂牌</a></h5>
						</div>
					</li>
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
				<script type="text/javascript" src="${pageContext.request.contextPath}/static
/js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //news -->
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>