<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  

<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width initial-scale=1">  
    <link rel="stylesheet" href="bootstrap.min.css">  
    <link rel="stylesheet" href="sign-in.css">  
    <title>Sign_in</title>  
   <script>  
    function validateForm() {  
        var firstName = document.getElementById("First").value.trim();  
        var lastName = document.getElementById("Last").value.trim();  
        var email = document.getElementById("gmail").value.trim();  
        var password = document.getElementById("pass").value;  
        var confirmPassword = document.getElementById("cpass").value;  
        var security1 = document.getElementById("security1").value.trim();  
        var security2 = document.getElementById("security2").value.trim();  
        var security3 = document.getElementById("security3").value.trim();  
        var day = document.getElementById("Day").value.trim();  
        var year = document.getElementById("year").value.trim();  

        if (!firstName || !lastName || !email || !password || !confirmPassword || 
            !security1 || !security2 || !security3 || !day || !year) {  
            alert("Please fill out all required fields.");  
            return false;   
        }  

  
        let hasUppercase = /[A-Z]/.test(password);
        let hasLowercase = /[a-z]/.test(password);
        let hasDigit = /[0-9]/.test(password);
        let hasSpecial = /[\W_]/.test(password);

        if (password.length < 6 || !hasUppercase || !hasLowercase || !hasDigit || !hasSpecial) {
            alert("Password must be at least 6 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character.");
            return false;
        }

        if (password !== confirmPassword) {  
            alert("Passwords do not match.");  
            return false;   
        }  
        document.forms["myform"].submit();  
    }  
</script>
   
</head>  
<body>  
<jsp:include page="top.jsp" />  
<form name="myform" action="Data.jsp">  
    <div class="container">  
     <div class="dashboard-header">Create Account</div>
     <br>
        <div class="row">  
            <div class="col-xs-12">Name</div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="text" placeholder="First" id="First" name="firstname" />  
                <input type="text" placeholder="Last" id="Last" name="lastname" />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Choose Your UserName  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="email" placeholder="@TqCmail.com" id="gmail" name="gmail" />  
            </div>  
        </div>  
        <p>I prefer to use this email address</p>  
        <div class="row">  
            <div class="col-xs-12">  
                Create a password  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="password" name="pass" id="pass" />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Confirm your Password  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="password" name="cpass" id="cpass"  />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Enter Your First Pet Name  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="text" name="security3" id="security3" placeholder=".....................Security Question....................." />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                What is your favorite song?  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="text" name="security2" id="security2" placeholder=".....................Security Question....................." />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Who is your favorite teacher?  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <input type="text" name="security1" id="security1" placeholder=".....................Security Question....................."  />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Birthday  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <select id="Month" name="month">  
                    <option value="">Month</option>  
                    <option value="1">January</option>  
                    <option value="2">February</option>  
                    <option value="3">March</option>  
                    <option value="4">April</option>  
                    <option value="5">May</option>  
                    <option value="6">June</option>  
                    <option value="7">July</option>  
                    <option value="8">August</option>  
                    <option value="9">September</option>  
                    <option value="10">October</option>  
                    <option value="11">November</option>  
                    <option value="12">December</option>  
                </select>  
                <input type="text" placeholder="Day" id="Day" name="Day" />  
                <input type="text" placeholder="Year" id="year" name="year" />  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12 second">  
                Gender  
            </div>  
        </div>  
        <div class="row">  
            <div class="col-xs-12">  
                <select id="gender" name="gender">  
                    <option value="Male">Male</option>  
                    <option value="Female">Female</option>   
                    <option value="Other">Other</option>  
                </select>  
            </div>  
        </div>  
        <br>  
        <input class="btn btn-success" type="button" value="Submit" onclick="validateForm()"/>  
    </div>  
</form>  
</body>  
</html>  