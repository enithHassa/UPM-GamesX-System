<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete user details</title>
<link rel="stylesheet" href="css/paymentDelete.css">
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
      <br> <br>
       <br> <br>

	<!-- Form container -->

    <div class="container">
        <h1 style ="font-size:35px;">User Account Delete</h1>
        
        <br>
        
       
        
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
        
        <!-- Form for delete data show -->

        <form action="delete" method ="post"> 
            <div class="input-container">
                <label>User ID:</label>
                <input type="text"  name ="cusid" value="<%= id %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Name:</label>
                <input type="text"  name ="Uname" value="<%= name %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Email:</label>
                <input type="text"  name ="Uemail" value="<%= email %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Address:</label>
                <input type="text"  name ="Uaddress" value="<%= address %>" readonly>
            </div>
            
            <div class="input-container">
                <label>City:</label>
                <input type="text"  name ="Ucity" value="<%= city %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Mobile:</label>
                <input type="text"  name ="Umobile" value="<%= mobile %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Zip:</label>
                <input type="text"  name ="Uzip" value="<%= zip %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Type:</label>
                <input type="text"  name ="Utype" value="<%= type %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Card Name:</label>
                <input type="text"  name ="Ucname" value="<%= Cname %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Card Number:</label>
                <input type="text"  name ="Ucnumber" value="<%= Cnumber %>" readonly>
            </div>
            
            <div class="input-container">
                <label>Exp Year:</label>
                <input type="text"  name ="UexpYr" value="<%= year %>" readonly>
            </div>
            
            <div class="input-container">
                <label>CVV:</label>
                <input type="text"  name ="Ucvv" value="<%= cvv %>" readonly>
            </div>
            
            <input type="submit" name="submit" value ="Delete my data" class="submit-btn">
            
        </form>
    </div>
</body>
</html>
