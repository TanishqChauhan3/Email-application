<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <title>Enter Your Email</title>  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <link rel="stylesheet" href="forget.css">  
</head>  
<body>  
    <jsp:include page="top.jsp"/>  
    <div class="container"> 
    <div class="dashboard-header">
	  	Forget Password
	</div> 
	<br>
        <div class="row justify-content-center">  
            <div class="col-md-6">  
                <h1>Enter Your Email</h1>  
                <br>  
                <form action="forget_password.jsp" method="POST"> 
                    <input type="email" class="form-control" placeholder="username@TqCmail.com" name="email" required>  
                    <br>  
                    <input type="submit" value="Submit" class="btn btn-success">  
                </form>  

                <%  
                 
                    String email = request.getParameter("email");  
                    if (email != null && !email.isEmpty()) {  
                        session.setAttribute("kmail", email);  
                        response.sendRedirect("check.jsp");  
                    }  
                %>  
            </div>  
        </div>  
    </div>  
</body>  
</html>  