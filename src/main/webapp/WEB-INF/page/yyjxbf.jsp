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
<base href="<%=basePath%>"> 
<link href="//vjs.zencdn.net/5.11/video-js.min.css" rel="stylesheet" type="text/css">
<script src="//vjs.zencdn.net/5.11/video.min.js"></script>
  <script>
   videojs.options.flash.swf = "video-js/video-js.swf";
 </script>
<style>
        body{background-color: #191919}
        .m{ width: 1300px; height: 650px; margin-left: auto; margin-right: auto; }
    </style>
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
<center>  
    <video id="my-player" class="video-js vjs-big-play-centered" controls="" preload="auto" poster="http://pic1.win4000.com/wallpaper/3/59783bb506c6e.jpg" width="900" height="440"  data-setup='{example_option":true}'>
	<source src="${rLink }" type="video/Webm"/>
	<source src="${rLink }" type='video/webm' />
	<source src="${rLink }" type='video/ogg' />	 
	<p class="vjs-no-js"></p>
	</video> 
</center> 
<script type="text/javascript">
    var myPlayer = videojs('my-player');
    videojs("my-player").ready(function(){
        var myPlayer = this;
        myPlayer.play();
    });
</script>
<!-- foot -->
<jsp:include page="foot.jsp"/>
<!-- //foot -->
</body>
</html>