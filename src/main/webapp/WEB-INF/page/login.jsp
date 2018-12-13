<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>登录页面</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/static/css/login.css"
	rel="stylesheet">

</head>

<body>

	<div class="container">

		<form class="form-signin" method="post" action="">
			<h3 class="form-signin-heading">请登录</h3>
			<label for="inputEmail" class="sr-only">账号</label> <input type="text"
				id="inputEmail" class="form-control" placeholder="账号" name="userid"
				required autofocus> <label for="inputPassword"
				class="sr-only">密码</label> <input type="password" id="inputPassword"
				class="form-control" placeholder="密码" name="password" required>
			<!--   <div class="checkbox">
          <label>
            <input type="checkbox" name="rememberMe"> 记住我
          </label>
        </div>-->

			<input name="code" type="text" placeholder="输入图中验证码/点击可刷新" /> <img
				src="../checkCode" alt="" width="100" height="32"
				style="height: 43px; cursor: pointer;"
				onclick="this.src=this.src+'?'">
			<p class="bg-warning">${error}</p>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		</form>

	</div>
	<!-- /container -->
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<script>
		function LoginDate() {
			var code = document.bs.code.value;
			alert(code);
			$.ajax({
				url : "yzms",
				type : "post",
				async : false,
				data : {ode : code},
				success : function(data) {
					if (data == "1") {
						alert("登录成功");
					} else if (data == "2") {
						$("#error").text("验证码输入错误，请重新填写");
					}
				}
			})
		}
	</script>
</body>
</html>
