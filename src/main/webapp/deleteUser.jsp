<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GamesX : Delete Profile</title>
	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" href="css/updateProfile.css">
    <script src="js/home.js"></script>
    
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
    
    <br><br><br><br>
    
    
    <%
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	String birthdate = request.getParameter("birthdate");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String address = request.getParameter("address");
    	String password = request.getParameter("password");
    %>
    
    <div class="main">
        <form action="delete" method="POST" name="form">

            <div class="headingsContainer">
                <p>Delete Profile</p>
             </div>

             <div class="mainContainer">
                <table>
                	<tr>
                        <td>ID</td>
                        <td>:</td>
                        <td><input type="text" placeholder="" name="userid"  value="<%= id %>" readonly/></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Name..." name="uname" value="<%= name %>" readonly/></td>
                    </tr>
                    <tr>
                        <td>Birthday</td>
                        <td>:</td>
                        <td><input type="date" placeholder="Birthday..." name="ubirthdate" id="date" value="<%= birthdate %>" readonly/></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>:</td>
                        <td><input type="text" placeholder="E-mail..." name="uemail" value="<%= email %>" readonly/></td>
                    </tr>
                    <tr>
                        <td>Phone No</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Phone Number..." name="uphone" value="<%= phone %>" readonly/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>:</td>
                        <td><input type="text" placeholder="Address..." name="uaddress" value="<%= address %>" readonly/></td>
                    </tr>
                </table>

                <br><br>

                <button class="saveButton" type="submit" name="submit" >Delete</button>
                
             </div>
        </form>
    </div>

<!--Footer-->
    <hr class="f-hr">
    <br>

    <div class="f-image-container">
        <img src="images/f-image1.png" alt="Facebook" height="38px" width="38px">
        <img src="images/f-image2.jpg" alt="X" height="45px" width="45px">
        <img src="images/f-image3.jpg" alt="Youtube" height="50px" width="50px">
    </div>

    <p class="f-name"><span style="color: grey;">Games</span><span style="color: red;">X</span></p>

    <div>
        <p class="footer-container">
            <ul class="f-list">
                <li><b>Resources</b></li><br>
                <li><a href="#">- Privacy Policy</a></li>
                <li><a href="#">- Promotions</a></li>
                <li><a href="#">- Services</a></li>
                <li><a href="#">- Find Games</a></li>
                <li><a href="#">- Careers</a></li>
                <li><a href="#">- About us</a></li>
            </ul>

            <p class="f-para"> 2024, GamesX, SE/OOP/2024/S1/MLB/WD/G52. <br>
                            The GamesX site, GamesX logo, the GamesX<br>
                            pages, All rights reserved. Our websites<br>
                            may contain links to other sites and resources<br>
                            provided by third  parties. These links are<br>
                            provided for your convenience only. Thank you!
            </p>
    	</p>
    </div>

    <div class="f-logo">
        <img src="images/footer-logo.png" alt="GamesX" height="150px" width="240px">
    </div>
    
    <!--End Footer-->
</body>
</html>