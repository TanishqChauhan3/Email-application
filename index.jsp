<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gmail</title>
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="mystyle.css">
</head>
<body>
<jsp:include page="top.jsp"/> 
	<form action="validate_login.jsp">
	<div class="container">
	 <div class="dashboard-header">Login</div>
		<div class="google">
			<font color="#003366">T</font><font color="#CC0000">q</font><font color="#2E8B57">C</font><font color="#003366">m</font><font color="#DAA520">a</font><font color="#CC0000">i</font><font color="#2E8B57">l</font>
		</div>
		<div class="title">
			Enter to your Account
		</div>
		<div class="form">
			<input type="email" placeholder="Email" name="name"/>
			<br>
			<input type="password"  placeholder="Password" name="pwd"/>
		</div>
		<a href="forget_password.jsp" class="btn btn-success">Forget Password</a>  
		<input type="submit" value="Login" class="btn btn-success"/>
	</div>
	
	</form>
</body>
</html>