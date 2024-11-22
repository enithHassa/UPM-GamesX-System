<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/paymentView.css">
<link rel="stylesheet" href="css/home.css">

<style>

body{
background-image: url('images/payment-bg.jpg');
}
h1{
background-color:  #202020; 
}
td{
 background-color: #f2f2f2;
}

input[name="delete"] {
    background-color: red;
    border-color: red; 
}

input[name="delete"]:hover {
    background-color: darkred; 
}

</style>

<title> My details</title>

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

	<!-- Table to display user payment details -->

	<table>
	<c:forEach var="cus" items="${cusDetails }">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="address" value="${cus.address}"/>
	<c:set var="city" value="${cus.city}"/>
	<c:set var="mobile" value="${cus.mobile}"/>
	<c:set var="zip" value="${cus.zip}"/>
	<c:set var="type" value="${cus.type}"/>
	<c:set var="Cname" value="${cus.cardname}"/>
	<c:set var="Cnumber" value="${cus.number}"/>
	<c:set var="year" value="${cus.year}"/>
	<c:set var="cvv" value="${cus.cvv}"/>
	
	<h1 style="font-size:40px;"> User payment details</h1>
	
	<tr>
		<td>user ID </td>
		<td>${cus.id} </td>
	</tr>
	
	<tr>
		<td>User Name </td>
		<td>${cus.name} </td>
	</tr>
	
	<tr>
		<td> user email</td>
		<td> ${cus.email}</td>
	</tr>
	
	<tr>
		<td>user address</td>
		<td>${cus.address} </td>
	</tr>
	
	<tr>
		<td>user city </td>
		<td>${cus.city} </td>
	</tr>
	
	<tr>
		<td>user mobile  </td>
		<td>${cus.mobile} </td>
	</tr>
	
	<tr>
		<td> Zip code  </td>
		<td>${cus.zip} </td>
	</tr>
	
	<tr>
		<td> type </td>
		<td>${cus.type} </td>
	</tr>
	<tr>
		<td> Card name </td>
		<td>${cus.cardname} </td>
	</tr>
	
	<tr>
		<td> Card number </td>
		<td>${cus.number} </td>
	</tr>
	<tr>	
		<td> year </td>
		<td>${cus.year} </td>
	
	</tr>
	<tr>	
		<td> cvv </td>
		<td>${cus.cvv} </td>
	
	</tr>
	
	
	
	
	
	
	
	
	

	
	</c:forEach>

	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		
			<c:param name="id" value="${id}"/>
	        <c:param name="name" value="${name}"/>
	        <c:param name="email" value="${email}"/>
	        <c:param name="address" value="${address}"/>
	        <c:param name="city" value="${city}"/>
	        <c:param name="mobile" value="${mobile}"/>
	        <c:param name="zip" value="${zip}"/>
	        <c:param name="type" value="${type}"/>
	        <c:param name="Cname" value="${Cname}"/>
	        <c:param name="Cnumber" value="${Cnumber}"/>
	        <c:param name="year" value="${year}"/>
	        <c:param name="cvv" value="${cvv}"/>

	</c:url>
	
	<a href ="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br> <br>
	
	
	<c:url value ="deletecustomer.jsp" var="cusdelete">
		
		    <c:param name="id" value="${id}"/>
	        <c:param name="name" value="${name}"/>
	        <c:param name="email" value="${email}"/>
	        <c:param name="address" value="${address}"/>
	        <c:param name="city" value="${city}"/>
	        <c:param name="mobile" value="${mobile}"/>
	        <c:param name="zip" value="${zip}"/>
	        <c:param name="type" value="${type}"/>
	        <c:param name="Cname" value="${Cname}"/>
	        <c:param name="Cnumber" value="${Cnumber}"/>
	        <c:param name="year" value="${year}"/>
	        <c:param name="cvv" value="${cvv}"/>
	
	</c:url>
	
	<a href="${cusdelete}">
	<input type= "button" name "delete" value ="Delete my data" style="background-color:#990000;">
	
	</a>
	
	
	
	
	
	
	
</body>
</html>