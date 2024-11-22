 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/payment.css">
<link rel="stylesheet" href="css/home.css">
<title>Insert title here</title>
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
      <br> <br>
     <br> <br>
      <br> <br>
       <br> <br>
		    
    
    <!--End Header-->
    
    
    
  
		<br><br>
		<div class="form-row">
		  <div class="form-col1">
		    <div class="container">
		    
		     <!-- Form for submitting PAYMENT details -->
		    
		      <form method="POST" action="insert">
		      
		        <div class="form-row">
		          <div class="form-col2">
		            <h3>Buy Game Details</h3>
		            <label for="fname"> Full Name</label>
		            <input type="text" id="fname" name="fname" placeholder="Charitha " >
		            
		            <label for="email"> Email</label>
		            <input type="text" id="email" name="femail" placeholder="charitha@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" >
		            
		            <label for="adr"> Address</label>
		            <input type="text" id="adr" name="faddress" placeholder="No.10,New Kandy Road,Malabe" >
		            
		            <label for="city"> City</label>
		            <input type="text" id="city" name="fcity" placeholder="Colombo" >
		
		            <div class="form-row">
		              <div class="form-col2">
		                <label for="state">Mobile Number</label>
		                <input type="text" id="state" name="fnumber" placeholder="000 0000000" >
		              </div>
		              <div class="form-col2">
		              
		                <label for="zip">Zip</label>
		                <input type="text" id="zip" name="fzip" placeholder="10001" >
		                
		              </div>
		            </div>
		          </div>
		          <div class="form-col2">
		            <h3>Payment</h3>
		            <label for="fname">Accepted Cards</label>
		            <div class="icon-container">
		            
		              <input type="radio" value ="visa" name="ctype">
		              <img src="images/visa-card.jpg" alt="visa">
		              <input type="radio" value ="master" name="ctype">
		              
		              <img src="images/mas-card.jpg" alt="master">
		            </div>
		            
		            <label for="cname">Name on Card</label>
		            <input type="text" id="cname" name="cardname" placeholder="K.A.E.H.N.Samarasinghe" >
		            
		            <label for="c-cnum">Credit card number</label>
		            <input type="text" id="ccnum" name="fcnum" placeholder="1111-2222-3333-4444" >
		            
		            <div class="row">
		              <div class="form-col2">
		              
		                <label for="expyear">Exp Year</label>
		                <input type="text" id="expyear" name="expyear" placeholder="2023" >
		                
		              </div>
		              <div class="form-col2">
		              
		                <label for="cvv">CVV</label>
		                <input type="text" id="cvv" name="cvv" placeholder="888">
		                
		              </div>
		            
		            </div>
		          </div>
		          
		        </div>
		         
		         
		          
		          
		          <input type="submit" name="submit" value="Checkout" id="submitBtn" onclick="success()">
		          
		          
		      </form>
		    </div>
		  </div>
		   


            
		</form>
		
	
</body>
</html>