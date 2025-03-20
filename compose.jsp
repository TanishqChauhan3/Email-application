<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Email Compose UI</title>  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <link rel="stylesheet" href="compose.css">  
    
</head>  
<body>  
<jsp:include page="top.jsp" />   
<div class="container">
	<form action="input.jsp">
	<div class="dashboard-header">	
	  	Compose
	</div>
	<div class="row"> 
		<div class="col-md-3"> 
			<jsp:include page="sidebar.jsp" />   
		</div>  		
        <div class="col-md-9" style="margin-top:20px">
        	<input type="text" class="form-control mb-2" placeholder="To" name="To">
            <input type="text" class="form-control mb-2" placeholder="Cc Bcc" name="Cc">
            <input type="text" class="form-control mb-2" placeholder="Subject" name="subject">
            <textarea class="form-control" rows="6" placeholder="Message" name="message"></textarea>
            <br>
            <input type="submit" value="Send" class="btn btn-success" style="width:100px;font-size:20px; background-color:#1A73E8;"/>
        </div>
    </div>  
    <br>
    </form>
</div>  

</body>  
</html>