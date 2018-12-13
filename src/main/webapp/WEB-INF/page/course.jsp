<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<body>
<head>
<title>相关课程</title>
</head>
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
	<h3>相关课程</h3>
</div>
<!-- //banner -->

<!-- 相关课程 -->
<c:forEach items="${courses }" var="course">
	<div class="class-name">
		<h1>${course.cName}</h1>
		<div class="class-name-body clearfix new_tem">
			<div class="div-1">
				<img src="/trains/${course.cLink}" alt="课程名称" width="200px"
					height="200px" />
			</div>
			<div class="div-2">
				<p style="font-size:20px">
					<span style="color: blue"><b>课程价格: </b></span><span>请咨询</span>
				</p>
				<p style="font-size:20px">
					<span style="color: blue"><b>授课老师:</b></span>${course.cTeacher }</p>
				<p style="font-size:20px">
					<span style="color: blue"><b>课程描述:</b></span>${course.cDescribe }</p>
			</div>
			<div class="div-3">
				<p style="font-size:20px">
					<span style="color: blue"><b>授课机构:</b></span><span class="span-1"><a
						href="index" target="_blank" class="username">梦润培训中心</a></span>
				</p>
				<p style="font-size:20px">
					<span style="color: blue"><b>开班时间:</b></span><span>滚动开班</span>
				</p>
			</div>
		</div>
	</div>
</c:forEach>
<!-- 分页 -->
<center>
   <form action="course">
   		<input type="text" name="currentPage" size="2">
   		<input type="submit" value="跳转">
   </form>
<a href="course?currentPage=1" >首页</a>
   	<c:if test="${currentPage != 1 }">
   		<a href="course?currentPage=${currentPage-1 }">上一页</a>
   	</c:if>
   	<c:if test="${currentPage != page }">
   		<a href="course?currentPage=${currentPage+1 }">下一页</a>
   	</c:if>
   	<a href="course?currentPage=${page  }">尾页</a>
   	<span>当前第${currentPage}页</span>
   	<span>共${page }页</span>

</center>
<!-- 分页尾 -->
<style>
.class-name {
	max-width: 1920px;
	width: 100%;
	margin: 0 auto;
	background-color: #FFFFFF;
	padding: 30px 0;
}

.class-name>h1 {
	font-size: 32px;
	color: #32363d;
	font-weight: normal;
	width: 1200px;
	margin: 0px auto 30px auto;
}

.class-name>.class-name-body {
	margin: 30px 0;
	width: 1200px;
	margin: 0 auto;
}

.class-name>.class-name-body>.div-1 {
	width: 388px;
	float: left;
	margin-right: 68px;
}
/*课程图片*/
.class-name>.class-name-body>.div-1>img {
	width: 388px;
	height: 242px;
}

.class-name>.class-name-body>.div-2 {
	width: 326px;
	float: left;
}

.class-name>.class-name-body>.div-3 {
	width: 418px;
	float: left;
}

.class-name>.class-name-body>div>p {
	margin-bottom: 20px;
}

.class-name>.class-name-body>div>p>a>b {
	font-weight: normal;
	color: #9399a2;
}

.class-name>.class-name-body>div>p>span {
	color: #484c52;
}

.class-name>.class-name-body>div>p>i {
	font-size: 25px;
	color: #1bd77c;
	margin-right: 10px;
	vertical-align: middle;
}

.class-name>.class-name-body>div>p>b {
	color: #9399a2;
	font-weight: normal;
	font-size: 16px;
}

.class-name>.class-name-body>div>p>a {
	color: #fb5746;
}

.class-name>.class-name-body>div>p>span>span {
	color: #fb5746;
}

.class-name>.class-name-body>div>p>.span-3 {
	font-weight: bold;
	color: #fb5746;
	font-size: 20px;
}
</style>
<!-- //相关课程 -->

<!-- foot -->
<jsp:include page="foot.jsp" />
<!-- //foot -->
</body>
</html>
