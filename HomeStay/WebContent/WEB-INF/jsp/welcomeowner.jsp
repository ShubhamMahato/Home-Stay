<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome owner</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
  
    <link rel="stylesheet" href="<c:url value="/jsp/css/icomoon_style.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/jquery-ui.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.theme.default.min.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap-datepicker.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/fonts/flaticon/flaticon.css" />">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	
	<style>
		.grad{
				background:linear-gradient(-90deg, #260d26, #d98cd9);
			}
		
/* card*/
.container{
width:auto;
height:400px;
margin-top:-70px;
}
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}
.row {
margin-top:70px;
margin-left:100px;
border-radius:12px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.row1{
margin-top:70px;
margin-left:100px;
height:300px;
border-radius:12px;
}
.row2{
margin-top:-17px;
margin-left:100px;
border-radius:12px;
}
.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
  height:200px;
  border-radius:12px;
}


/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
  border-radius:12px;
}
.field{
border-radius:20px;
width:80%;
height:30%;
padding-left:10px;
}
.field1{
border-radius:20px;
width:80%;
height:30%;
padding-left:10px;
}
.field1:hover{
background-color: #d98cd9;
}
.card-text{
font-weight:bold;
color:#d98cd9;
}
	</style>
</head>
<body class="grad">


<div class="row">    
<div class="column">  
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Owner Name</h4>
      <p class="card-text">Stay Smart, Feel Homely</p>
      <input type="text" placeholder="firstname" class="field" value="${first_name}" readonly><br><br><br>
       <input type="text" placeholder="lastname" class="field" value="${last_name}" readonly><br><br><br>
      <input type="text" placeholder="emailid" class="field" value="${email}" readonly><br><br><br>
      <input type="text" placeholder="contactno" class="field" value="${contact_number}"readonly><br><br><br>
      <input type="text" placeholder="userid" class="field" value="${user_idd}"readonly><br><br>
      <a href="OwnerBookingList"><button  class="field1">Bookings</button></a>
    </div>
  </div>
  </div>
  <div class="container">
  
  <div class="row1">  
   <p style="text-align: center; color: white;">Register your Pg<p>
  <div class="card1">
 
   <div class="card-body">
    <a href="indexx1">
          <img src="<c:url value="/jsp/images/img12345.png" />" style="border-radius:50%; width:200px;height:150px;"></a>
      
    </div>
  </div>
  </div>
 
<div class="row2">  
<p style="text-align: center; color: white;">Update data of your Pg<p>
  <div class="card1">
    <div class="card-body">
    <a href="userdashboard1">
      <img src="<c:url value="/jsp/images/im1234.jfif" />" style="border-radius:50%;"></a>
    </div>
  </div>
  </div>
  </div>
  </div>

<script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.flexslider-min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/jquery.scrollTo.js"></script>
  <script src="js/jquery.appear.js"></script>
  <script src="js/stellar.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/nivo-lightbox.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

</body>
</html>