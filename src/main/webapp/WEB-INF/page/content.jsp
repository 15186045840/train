<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:wb="http://open.weibo.com/wb">
<head>
<title>问题反馈</title>
</head>
<body>
	<!-- top -->
	<c:if test="${student.sId == null}">
		<jsp:include page="top1.jsp" />
	</c:if>

	<c:if test="${student.sId != null}">
		<jsp:include page="top2.jsp" />
	</c:if>
	<jsp:include page="top.jsp" />
	<!-- //top -->
	<!-- banner -->
	<div class="banner1">
		<h3>问题反馈</h3>
	</div>
	<!-- //banner -->
	<div class="btn">
		<input type="button" value="有问题点这里去留言哦"
			onclick="javascrtpt:window.location.href='contact'" class="font">
	</div>
	<div class="question">
		<table class="table">
			<thead>
				<tr>
					<th class="t1" style="color: #FF0000">姓名</th>
					<th class="t1" style="color: #FF0000">时间</th>
					<th class="t1" style="color: #FF0000">反馈</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
			<c:forEach items="${interactions }" var="interaction">
				<tr>
					<td>${interaction.iName }</td>
					<td>${interaction.iDate }</td>
					<td>${interaction.iContent }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!-- 分页 -->
	<center>
		<div class="page">
			<form action="content">
				<input type="text" name="currentPage" size="2"> <input
					type="submit" value="跳转">
			</form>
			<a href="content?currentPage=1">首页</a>
			<c:if test="${currentPage != 1 }">
				<a href="content?currentPage=${currentPage-1 }">上一页</a>
			</c:if>
			<c:if test="${currentPage != page }">
				<a href="content?currentPage=${currentPage+1 }">下一页</a>
			</c:if>
			<a href="content?currentPage=${page  }">尾页</a> <span>当前第${currentPage}页</span>
			<span>共${page }页</span>
		</div>
	</center>
	<!-- 分页尾 -->
	<!-- foot -->
	<jsp:include page="foot.jsp" />
	<!-- //foot -->
</body>
<style>
.page {
	padding-top: 1em;
}

.btn {
	padding-left: 1100px;
}

.font {
	color: white;
	background-color: #007fa2;
	height: 60px;
	font-size: 20px;
	font-family: "微软雅黑";
}

.t1 {
	text-align: center;
	background-color: #F7F7F7;
	font-size: 15px;
}

.question {
	text-align: center;
	background-color: #F7F7F7;
	margin: 0 auto;
	border: 5px solid #007fa2;
	padding-bottom: 10px;
	width: 50%
}
</style>
</html>