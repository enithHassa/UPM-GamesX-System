<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view payment details</title>

<link rel="stylesheet" href="css/home.css">

<style>


   /* Styles for the body */
    body {
        font-family: Arial, Helvetica, sans-serif;
        padding: 20px;
    }

    .container {
        background-color: #f2f2f2;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 320px;
        margin: 0 auto;
    }
    
	 /* Styles for the heading */
    h2 {
        font-size: 24px;
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        text-align: center;
    }
	
	/* Styles for the input fields */
    input[type=text] {
        width: 100%;
        margin-bottom: 10px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type=submit] {
        background-color: grey;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    input[type=submit]:hover {
        background-color: #555;
    }
</style>
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
       
       
        <!-- Form for submitting user details -->
    
    <div class="container">
        <h2>View User Payment Details</h2>
        <form method="POST" action="log">
            <input type="text" id="fname" name="fname" placeholder="Charitha Dimuth">
            <input type="text" id="email" name="femail" placeholder="enith@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
            <input type="submit" name="submit" value="Checkout">
        </form>
    </div>
    
    
     <br> <br>
     <br> <br>
      <br> <br>
      
    
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
