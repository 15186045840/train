<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>学员故事</title>
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
		<h3>往期学员故事</h3>
	</div>
<!-- //banner -->
<!-- contact -->
	<div class="services">
		<div class="container">
			<h4 class="agile_head">学员故事</h4>
			<div class="agileits_w3layouts_contact_grids">
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>金城武</h4>
						<p>金城武的母亲是台湾人，父亲则是第一个将养鳗技术转移到台湾的冲绳人。金城武有两个哥哥，大哥同母异父，二哥同父异母。除了“电玩狂人”和“漫画迷”的身份之外，金城武热爱音乐，还会弹钢琴，钟爱旅行，向往冒险，他上过荒岛，去过沙漠和极地。他喜欢大自然，喜欢小动物，喜欢研究哲学。他喜欢躲在水下憋气，只为了能练出“可以在水里流泪”的绝招；他梦想做动物园的饲养员，去某个动物园喂老虎，然后把自己也喂掉；他常常梦到自己一觉醒来，外面一片荒芜，全地球只有他一人存活；他最想演的戏是那种“只需要站在那里，然后就被炸死掉”</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>彭于晏</h4>
						<p>彭于晏出生于单亲家庭，自小父母离异，13岁随家人移民加拿大。他并不喜欢读书，却考上了温哥华最好的大学，读商科。他说，其实我一直知道，前途与爱好是两回事。他爱漫画，爱篮球，但在看不到前途的时候，他从不执著。如今工作忙碌的彭于晏总是不忘享受和家人相处的时间，拍摄间隙都会带著妈妈出去旅游，每次度假之后，彭于晏念叨的不仅是当地的风情，还有念念不忘的亲情。在银幕上光彩夺目，一个人的时候，彭于晏还是喜欢简单而具质感的生活。</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>想看更多精彩故事，请拨打我们的热线电话，按0找成先生进行了解</h4>
						<ul class="contact_info">
							<li><i class="glyphicon glyphicon-earphone"></i>400-0852-339</li>
						</ul>
					</div>
				</div>
				<div class="col-md-5 agileits_w3layouts_contact_gridl">
					<div class="agileits_mail_grid_right_grid">
						<h4>胡歌</h4>
						<p>从2005年电视剧《仙剑奇侠传》中的逍遥哥哥，到2015年电视剧《琅琊榜》中的梅长苏， 胡歌一路从唇红齿白，一脸单纯清秀的少年，蜕变成更真实的演员，坚韧地重生，用思想填充着演艺之路，他保持一颗童心，一步步转型，努力争取别人对他演员身份的认可；2006年的车祸，在胡歌的右眼留下永远的疤痕，伤害也是一种财富，那场车祸带来的人生思考，使得胡歌更加搏力地融进表演之中，虽然依然有着自我认知的迷茫，然而目标明确，绝不后退。胡歌喜欢摄影，也喜欢写字，他视角独特，充满着奇思妙想。</p>
					</div>
					<div class="agileits_mail_grid_right_grid">
						<h4>霍建华</h4>
						<p>霍建华（Wallace Huo），1979年12月26日出生于台湾省台北市，祖籍山东烟台龙口，华语影视男演员、歌手、出品人。002年，因主演偶像剧《摘星》正式踏入演艺圈。2003年，凭借偶像爱情励志剧《海豚湾恋人》在台湾崭露头。2004年，霍建华将事业重心转向内地，凭借古装武侠剧《天下第一》走入内地观众的视线。2006年，霍建华出演个人首部大银幕作品《做头》。2009年，凭借《仙剑奇侠传三》徐长卿一角赢得广泛关注。2011年，因一年数部电视剧联创收视佳绩获得优酷大剧盛典年度最具收视号召力男演员。2014年，首次担任出品人投资古装言情轻喜剧《金玉良缘》，转型成为出品人 ；同年，他还凭借首次挑战的战争题材正剧《战长沙》获得国剧盛典港台地区人气演员。</p>
					</div>
				</div>
				<div class="col-md-7 agileits_w3layouts_contact_gridr">
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
