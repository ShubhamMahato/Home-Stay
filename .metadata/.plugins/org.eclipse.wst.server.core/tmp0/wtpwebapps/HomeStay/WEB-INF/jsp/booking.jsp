<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
    
    <link rel="stylesheet" href="<c:url value="/jsp/css/icomoon_style.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/jquery-ui.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.theme.default.min.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap-datepicker.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/fonts/flaticon/flaticon.css" />">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

body {
	width: 100wh;
	height: 90vh;
	color: #fff;
	background: linear-gradient(-75deg, #800000, #0000cc, #b30086, #5c8a8a);
	background-size: 400% 400%;
	-webkit-animation: Gradient 10s ease infinite;
	-moz-animation: Gradient 10s ease infinite;
	animation: Gradient 10s ease infinite;
}

@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
} 
 
.topnav {
  overflow: hidden;
  background-color: #00004d;
  padding: 0px 0px 20px;
  opacity:1;
}

.topnav a {
  float: right;
  display: block;
  color: #476b6b;
  text-align: center;
  padding: 20px 20px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color:#476b6b;
  color:#476b6b;
}

.active {
  background-color: #476b6b;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }}
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  .field{
 border-radius:25px; 
 padding-left:30px;
 margin-top:17px;
 margin-left:130px;
  }
 

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    opacity:0.9;
    background-color: #293d3d;
    overflow-x: hidden;
    transition: 0.5s;
    box-shadow: 0 4px 8px -3px #555454;
    padding-top: 0px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: white;
    display: block;
    transition: 0.3s
}

.sidenav a:hover{
color:red;
}
.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
    color: #3d5c5c;        
}

@media screen and (max-height: 450px) {
  .sidenav a {font-size: 18px;}
}

.sidenav-heading{
    font-size: 36px;
    color: #fff;
}

.logbtn{
border-radius:20px;
padding-left:15px;
right:30px;
bottom:50px;
position:absolute;
font-size:20px;
}
.logbtn:hover{
background-color:red;
}
.container{
border-style:solid;
border-color:inset;
width:20%;
margin-left:270px;
margin-top:40px;
position: relative;
padding-top:20px;
}
.container1{
border-style:solid;
border-color:white;
width:20%;
margin-left:600px;
margin-top:-460px;
position: absolute;
padding-left:30px;
padding-top:20px;
}
.container2{
border-style:solid;
border-color:white;
width:20%;
margin-left:920px;
margin-top:-460px;
position: absolute;
padding-left:30px;
padding-top:20px;
}
.field1{
border-radius:15px;
padding-left:10px;
}
.sub{
float:right;
position:relative;
border-radius:20px;
margin-top:14px;
background-color:#0000cc;
color:white;
}
.sub:hover{
background-color:#f9e6ff;
color:black;
}

.ll{
color:white;
font-weight:bold;
font-size:20px;
}

</style>
</head>
<body>
</div>
 
 <div id="mySidenav" class="sidenav">
 
   <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="color:white;">&times;</a>
   <br><br><br>
   <a href="#">Home</a>
   <a href="#">Profile</a>
  <a href="showbookings">Your Bookings</a>
  <br>

  <a href="logout"><button  class="logbtn">Logout</button></a>
</div>

<form action="booking123" commandName="booking1" method="get">
<c:url var="action" value="booking123"></c:url>
<div class="topnav" id="myTopnav">
<span style="font-size:30px;cursor:pointer; color:white;" onclick="openNav()">&#9776;</span>
<input type="text"  name="firstname"  class="field" value="${abc.first_name}" readonly>
<input type="text"  name="lastname"class="field" value="${abc.last_name}" readonly>
<input type="text"  name="userid"  class="field" value="${abc.user_id}" readonly>

<input type="submit" value="confirm" class="sub" >

 <div class="container">
 <center><label class="ll">PG Details</label></center><br>
<input type="text"  name="ownerid" id="ownerid" value="${qwe.u_id}" class="field1" readonly><br><br>
<input type="text"  name="pgname" id="pgname" value="${xyz.homestay}" class="field1" readonly><br><br>
<input type="text"  name="addressline1" id="addressline1" class="field1"value="${xyz.addressline1}" disabled ><br><br>
<input type="text"  name="addressline2" id="addressline2" class="field1"value="${xyz.addressline2}" disabled ><br><br>
<input type="text"  name="city" id="city" value="${xyz.city}" class="field1" disabled ><br><br>
<input type="text"  name="state" id="state" value="${xyz.state}" class="field1" disabled ><br><br>
<input type="text"  name="zipcode" id="zipcode" value="${xyz.zipcode}"class="field1" disabled ><br><br>
<input type="text"  name="contactno" id="contactno" value="${xyz.contactno}"class="field1" disabled ><br><br>
<input type="text"  name="mailId" id="mailId" value="${xyz.mailId}"class="field1" disabled ><br><br>
<input type="date" name="bookingdate" id="bookingdate" class="field1"><br>

</div>
<div class="container1">
<center><label class="ll">Facilities</label></center><br>
<input type="text"  name="faclity1" id="faclity1" value="${xyz.faclity1}" class="field1" disabled ><br><br>
<input type="text"  name="faclity2" id="faclity2" value="${xyz.faclity2}" class="field1" disabled ><br><br>

<input type="text"  name="faclity8" id="faclity8" value="${xyz.faclity8}"class="field1"  disabled ><br><br>
<label style="font-weight:bold;" class="field1">Time to Shift</label>
       <select  id="timeshift" name="timeshift">
              <option value="0">None</option>
                    <option value="5">1-5 days</option>
                    <option value="10">5-10 days</option>
                    <option value="15">10-15 days</option>
              </select>

</div>
<div class="container2">
<center><label class="ll">Owner Details</label></center><br>
<input type="text"  name="contact_number"   value="${qwe.contact_number}" class="field1" disabled ><br><br>
<input type="text"  name="email"   value="${qwe.email}" class="field1" disabled ><br><br>
<input type="text"  name="first_name"   value="${qwe.first_name}" class="field1" disabled><br><br>

</div>

</form>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>

 <script src="<c:url value="/jsp/js/jquery-3.3.1.min.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery-migrate-3.0.1.min.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery-ui.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery.easing.1.3.js" />"></script>
  <script src="<c:url value="/jsp/js/popper.min.js" />"></script>
  <script src="<c:url value="/jsp/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/jsp/js/owl.carousel.min.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery.stellar.min.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery.countdown.min.js" />"></script>
  <script src="<c:url value="/jsp/js/jquery.magnific-popup.min.js" />"></script>
  <script src="<c:url value="/jsp/js/bootstrap-datepicker.min.js" />"></script>
  <script src="<c:url value="/jsp/js/now-ui-dashboard.min.js?v=1.3.0.js" />"></script>

  <script src="<c:url value="/jsp/js/demo.js" />"></script>
 
</body>
</html>