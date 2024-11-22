<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/paymentUpdate.css">
<title>Update user details </title>
<link rel="stylesheet" href="css/home.css">
</head>
<body>

 <!--Header-->
     <div class="nav-bar">
        <ul>
        <li><a href="home.jsp"><img class="logo" src="images/home-logo.png"></a></li>
        <li class="prom-aling" ><a href="#">Promotion<br>& Oferrs</a></li>
        <li class="aling"><a href="#">Find Games</a></li>
        <li class="aling"><a href="#">Services</a></li>
        <li class="aling"><a href="#">Reviews</a></li>
        </ul>

        <a href="#"><img class="cart_logo" src="images/cart.png"></a>
        <button id="signup_btn">
            <a href="signup.jsp" >SIGN UP</a>
        </button> 
        
        <button id="login_btn">
            <a href="login.jsp" >LOGIN</a>
        </button>        
    </div>
    <!--End Header-->
    <br> <br>
     <br> <br>
	
	
	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String mobile = request.getParameter("mobile");
		String zip = request.getParameter("zip");
		String type = request.getParameter("type");
		String Cname = request.getParameter("Cname");
		String Cnumber = request.getParameter("Cnumber");
		String year = request.getParameter("year");
		String cvv = request.getParameter("cvv");
	%>
	
	<div class="update-details-container">
		<h2 class="update-details-header">Update Details</h2>

	<form action="update" method ="post" class="container"> 
	 	
	 	1) User ID: <input type="text" name="cusid" value="<%= id %>" readonly><br>
	 	
	 	2) Name: <input type="text" name="Uname" value="<%= name %>"><br>
	 	
	 	3) Email: <input type="text" name="Uemail" value="<%= email %>"><br>
	 	
	 	4) Address: <input type="text" name="Uaddress" value="<%= address %>"><br>
	 	
	 	5) City: <input type="text" name="Ucity" value="<%= city %>"><br>
	 	
	 	6) Mobile: <input type="text" name="Umobile" value="<%= mobile %>"><br>
	 	
	 	7) Zip: <input type="text" name="Uzip" value="<%= zip %>"><br>
	 	
	 	8) Type: <input type="text" name="Utype" value="<%= type %>"><br>
	 	
	 	9) Card Name: <input type="text" name="Ucname" value="<%= Cname %>"><br>
	 	
	 	10) Card Number: <input type="text" name="Ucnumber" value="<%= Cnumber %>"><br>
	 	
	 	11) Exp Year:  <input type="text" name="UexpYr" value="<%= year %>"><br>
	 	
	 	12) CVV: <input type="text" name="Ucvv" value="<%= cvv %>"><br>
	 	
	 	
	 	<input type="submit" name="submit" value="Update my data" id="submitBtn">
	 	
	</form>

</body>
</html>
