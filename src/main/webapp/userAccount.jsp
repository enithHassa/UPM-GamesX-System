<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GamesX : User Profile</title>

<link rel="stylesheet" href="css/home.css">

<style type="text/css">

body {
	background-size: cover; 
	background-position: center; 
	margin: 0; 
	padding: 0; 
	font-family: Arial, sans-serif; 
}

.data-container {
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center; 
    justify-content: center; 
    text-align: center; 
    background-color: rgba(0, 0, 0, 0.7); 
    padding: 20px; 
    border-radius: 10px; 
}

.data-container p {
    margin: 10px 0; 
}

input[type="button"] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
    border: 2px solid #4CAF50;
}

.data-container a:hover {
    transform: scale(1.1);
    opacity: 0.7;
}

.user-details {
        width: 100%; 
        border-collapse: collapse; 
    }

    .user-details td {
        padding: 8px; 
        border-bottom: 1px solid #ddd; 
    }

    .user-details tr:last-child td {
        border-bottom: none; 
    }

    
    .user-details td:first-child {
        font-weight: bold; 
        text-align: right; 
        width: 120px; 
    }

   
    .user-details tr:nth-child(even) {
        background-color: #333333; 
    }

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
            <a href="signup.jsp">SIGN UP</a>
        </button> 
        
        <button id="login_btn">
            <a href="login.jsp">LOGIN</a>
        </button>        
    </div>
<!--End Header-->

<br><br><br><br><br>

<div class="data-container" style="">

<c:forEach var="usr" items="${userDetails}"> 
	
	<c:set var="id" value="${usr.userId}"/>
	<c:set var="name" value="${usr.name}"/>
	<c:set var="birthdate" value="${usr.birthdate}"/>
	<c:set var="email" value="${usr.email}"/>
	<c:set var="phone" value="${usr.phone}"/>
	<c:set var="address" value="${usr.address}"/>
	<c:set var="password" value="${usr.password}"/>
	
	
	
	 <table class="user-details">
        <tr>
            <td>User ID:</td>
            <td>${usr.userId}</td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>${usr.name}</td>
        </tr>
        <tr>
            <td>BirthDate:</td>
            <td>${usr.birthdate}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${usr.email}</td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>${usr.phone}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${usr.address}</td>
        </tr>
    </table>
	
	
	
	</c:forEach>
	
	<c:url value="updateUser.jsp" var="userupdate"> 
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="birthdate" value="${birthdate}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="address" value="${address}" />
		<c:param name="password" value="${password}" />
	</c:url>
	
	
	<br><br>
	<a href="${userupdate}">
	<input type="button" name="update" value="Update Details" >
	</a>
	
	
	<br>
	<c:url value="deleteUser.jsp" var="userdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="birthdate" value="${birthdate}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="address" value="${address}" />
		<c:param name="password" value="${password}" />
	</c:url>
	
	<a href="${userdelete}">
	<input type="button" name="delete" value="Delete Account">
	</a>


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