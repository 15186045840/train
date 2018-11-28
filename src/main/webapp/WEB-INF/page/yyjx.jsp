<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>影音教学</title>
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
		<h3>影音教学</h3>
	</div>
<!-- //banner -->
<!-- 视频课程 -->
	<div class="about">
		<div class="container">
			<div class="agileinfo_about_grids">
				<div class="col-md-8 agileinfo_about_grid_left">	
					<div class="wthree_about_grid">
						<h2>视频课程</h2>
						<ul id="resource">
						  <c:forEach items="${resource }" var="resource">
							<li><i class="fa fa-arrow-circle-o-right" ></i>${resource.rName }
							<a href="#" onclick="work(this)">${resource.rLink}</a></li>
				  		  </c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-md-4 agileinfo_about_grid_right">
					<img src="/trains/MR.png" alt=" " class="img-responsive" />
					<center><h3 style="color:red">梦润培训欢迎您</h3></center>
				</div>
			</div>
		</div>
	</div>
<!-- //视频课程 -->
<script type="text/javascript">
    function work(target) {
        //e.preventDefault();
        var resourceId=$(target).text();
        $.ajax({
			url:"setyyjxbf.html",
			data:{rLink:resourceId},
			type:"POST",
			traditional:true,
		});
        window.open('yyjxbf');
    }


</script>
		
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>