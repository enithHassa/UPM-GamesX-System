<!DOCTYPE html>
<html>

<head>
    <title>GamesX</title>
    <link rel="stylesheet" href="css/home.css">
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
    
<!--Image container-->
    <div class="search-container">
        <input type="text" id="searchInput" placeholder=" Search Games">
        <button type="button" id="searchBtn">&#128269;</button>
    </div>
    <br><br><br>
    
<div class="main-image-container">
    <div class="buttons">
        <button id="prevButton" onclick="loadData('prevButton')">&#8249;</button>
        <button id="nextButton" onclick="loadData('nextButton')">&#8250;</button>
    </div>
    
        <div class="image-container">
            <ul>
            <li><a href="#"><img src="images/s-img1.png" alt="Image 1" id="im1"></a></li>
    
            <li><a href="game.jsp"><img src="images/s-img2.png" alt="Image 2" id="im2"></a></li>
    
            <li><a href="#"><img src="images/s-img3.png" alt="Image 3" id="im3"></a></li>
    
            <li><a href="#"><img src="images/s-img4.png" alt="Image 4" id="im4"></a></li>
            </ul>
        </div>
</div>

<!--Image container ends-->

<div class="text">All within <span style="color: grey;">Games</span><span style="color: red;">X</span></div>
    <br><br>
    <!-- Slider starts-->
    <div class="slider">
        <div class="slide-container">

            <div class="slide-fade">
              <img src="images/slider-pic1.jpg" alt="slide-1" class="slide-image">
                <div class="text-overlay">
                    <h1>Top Games</h1>
                    <a href="signup.jsp" class="regiBtn">Register Now</a>
                </div>
            </div>

            <div class="slide-fade">
                <img src="images/slider-pic2.jpg" alt="slide-2" class="slide-image" >
                  <div class="text-overlay">
                      <h1>Top Games</h1>
                      <a href="signup.jsp" class="regiBtn">Register Now</a>
                  </div>
              </div>

              <div class="slide-fade">
                <img src="images/slider-pic3.jpg" alt="slide-3" class="slide-image">
                  <div class="text-overlay">
                    <h1>Top Games</h1>
                      <a href="signup.jsp" class="regiBtn">Register Now</a>
                  </div>
              </div>

              <div class="slide-fade">
                <img src="images/slider-pic4.png" alt="slide-4" class="slide-image">
                <div class="text-overlay">
                      <h1>Top Games</h1>
                      <a href="signup.jsp" class="regiBtn">Register Now</a>
                  </div>
                </div>
        </div>
    </div>

    <div style="text-align:center">
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span> 
      </div>
<!--Image Slider ends-->


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