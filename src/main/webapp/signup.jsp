<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GamesX SignUp</title>
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/signup.css">
<script src="js/signup.js"></script>

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

	<br><br><br><br><br>

    <!--form-->
    <div class="form">
        
        <form id="regform" method="POST" action="signup" onsubmit="return checkPassword()">
        
        <div class ="Container">        
            <p class = "head1">Sign UP </p>
            <p>Please fill in this form to create an account.</p>
            <hr>        
            <br>
        
            <!--form implementation-->
                                
                <input type = "text" id = "name" name = "userName"  placeholder="User Name" required>           
                <br>                              
                <input type = "date" id = "birthday" name = "birthdate" placeholder="yyyy/mm/dd" required>
                
                <label for="gender">Gender:</label>                
                <input type="radio" id="Male" name="gender" value="Male">
                <label for="Male">Male</label>
                
                <input type="radio" id="Female" name="gender" value="Female">
                <label for="Female">Female</label>
                <br>    
                <input type = "email" id = "email" name = "email"  placeholder="E-mail" required>        
                <input type = "tel" id = "telnum" name = "phone"  placeholder="Mobile Number"required>
                <br>
                <input type = "text" id = "address" name = "address"  placeholder="Address" required>
                <br>
                <input type = "password" id = "password1" name = "password1"  placeholder="Password"required>        
                <input type = "password" id = "password2" name = "password2"  placeholder="Confirm Password"required>
                <br>
                <div id="showPasswords">
                <input type="checkbox" onclick="showPasswords() "><label>Show Passwords</label>
                </div>
                <br>           
                <input type="checkbox" name="check"  required>
                <label for ="check" class ="check"> 
                By creating an account you agree to our <a href="TnC.html" style="color:blue">Terms & Privacy policies</a></label>.
                  
        
            <div class ="sub"><br><br>        
                <input type ="submit" id ="submit" name="submit" value="Sign Up" placeholder="button"><br><br>
            </div>

            <br>
            <p>Already have an account ? <a href="login.jsp">Log in</a></p>   

        </div>        
        </form>
    </div>   
    <!--formEnd-->



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