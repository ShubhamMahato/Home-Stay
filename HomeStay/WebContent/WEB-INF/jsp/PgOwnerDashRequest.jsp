<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HomeStay</title>
  <link rel="stylesheet" href="<c:url value="/jsp/css/icomoon_style.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/jquery-ui.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.theme.default.min.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap-datepicker.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/fonts/flaticon/flaticon.css" />">
  <link href="./fontawesome/css/all.css" rel="stylesheet" type="text/css" media="all"/>
<style>
tr:hover{background-color:#00cca3;  }
.but2{
width:130px;
height:60px;
border:none;
font-size:15px;
text-align:center;
color:rgba(0, 57, 77);
background-color:LightGray;
font-weight:bold;
}
.container{
border-style:solid;
border-color:inset;
width:auto;
height:auto;
margin-left:200px;
position: relative;
padding-top:20px;
margin-top:150px;
background: linear-gradient(to bottom, #33ccff 0%, #3333cc 100%);
}
/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

background-color: rgba(0, 96, 128, 0.8);
td,th{
	text-align:center;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
opacity:0.6;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  text-color:#000066;
   box-sizing: border-box;
    border:2px;
     background-color:#808000;
}

.sidenav a {

  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
 color:#000066;
  display: block;
  transition: 0.3s;
  margin-left:23px;
  
}

.sidenav a:hover {
  color:red;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
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
.but2{
position:relative;
border-radius:20px;
}
.but3{
position:relative;
border-radius:20px;
}
	</style>
</head>
<body >
  <!--banner-->

  <div id="mySidenav" class="sidenav">
 
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"style="color:black;">&times;</a>
  <center>
            	<i style="height:150px;width:150px;color:white;" class="fa fa-user"></i>
            	<br>
      <a>
      Welcome Admin
      </a>
      <hr>
      <p><h3 style="color:white;">Name</h3> <br><span style="font-size:20px;color:white;">Admin</span></p>
      <p><h3 style="color:white;">Contact No</h3> <br><span style="color:white;font-size:20px;">9876543210</span></p>
      <p><h3 style="color:white;">Email</h3> <br><span style="color:white;font-size:20px;">admin@outlook.com</span></p>
          </center>

  
</div>
<div class="topnav" id="myTopnav">
<span style="font-size:30px;cursor:pointer; color:white;" onclick="openNav()">&#9776;</span>



</div>

  
<div class="container">
  <div class="row">
    <div class="col-sm-2">
     <a href="admindashboard"><button  class="but2">User Requests</button></a>
    </div>
    <div class="col-sm-2">
     <a href="adminUserList"><button  class="but2">ACCEPTED USERS</button></a>
    </div>
    <div class="col-sm-2">
     <a href="pgrequest"><button  class="but2">OWNER REQUEST</button></a>
    </div>
    <div class="col-sm-2">
			<a href="allowner"><button  class="but2">All OWNERS</button></a>
			</div>
			<div class="col-sm-2">
			<a href="deletedusers"><button   class="but2">DELETED USERS</button></a>
			</div>
			<div class="col-sm-2">
			<a href="deleteOwners"><button  class="but2" >DELETED OWNERS</button></a>
			</div>
  </div>
	
  	<br>
  	<br>
<j:if test="${!empty OwnerList}">
<table style="width:100%" >
                      <tr align="center"style="border-bottom: 1px solid white;font-size:20px;height:50px;">
                      	<th width="100px;">U Id</th>
						<th width="250px;">User Name</th>
						<th width="200px;">Age</th>
						<th width="150px;">Gender</th>
						<th width="150px;">Contact Number</th>
						<th width="220px;">Email</th>
						<th width="100px;">User id</th>
						<th width="200px;"></th>
					</tr>

		<j:forEach var="c" items="${OwnerList}">
		<tr style="height:50px;">
		<td>${c.u_id}</td>
		<td>${c.first_name} ${c.last_name}</td>
		<td>${c.age}</td>
		<td>${c.gender}</td>
		<td>${c.contact_number}</td>
		<td>${c.email}</td>
		<td>${c.user_id}</td>
		<td><a href="<j:url value='/AcceptOwner/${c.u_id}'/>"  style="color:red"><button id="but1">Accept</button></a></td> 
		 <td><a href="<j:url value='/deleteOwner/${c.u_id}'/>" style="color:red"><button id="but1">Delete</button></a></td>
</tr>
</j:forEach>
</table>
</j:if>

	</div>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script> 
</body>

</html>