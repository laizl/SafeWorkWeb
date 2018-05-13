<!DOCTYPE HTML>
<!-- 实现登陆 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="Css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="Css/style.css" rel='stylesheet' type='text/css' />
<link href="Css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="Js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="Js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
    <a href="usermanger.jsp"><img src="images/logo.png" alt=""/></a>
  </div>
  <h2 class="form-heading">登陆</h2>
  <div class="app-cam">
	  <form action="/login_check" method="post">
          <c:if test="${error != null}">
          <div class="alert alert-info" id="error-alert">
              ${error}
          </div>
          </c:if>
		<input type="text" class="text" placeholder="用户名" onfocus="this.value = '';document.getElementById('error-alert').style.visibility='hidden';" onblur="if (this.value == '') {this.value = '用户名';}" name="username">
		<input type="password" placeholder="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}" name="password">
		<div class="submit"><input type="submit" onclick="myFunction()" value="登陆"></div>
		<ul class="new">
			<li class="new_left"><p><a href="#">忘记密码</a></p></li>
			<li class="new_right"><p class="sign"><a href="register.html">注册</a></p></li>
			<div class="clearfix"></div>
		</ul>
	</form>
  </div>
   <div class="copy_layout login">
  </div>
</body>
</html>
