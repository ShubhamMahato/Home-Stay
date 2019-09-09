<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
 pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="temp" %>

<html lang="en">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
         User
  </title>
   <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
           $( function() {
        		$.getJSON("https://raw.githubusercontent.com/ShubhamMahato/HomeStay1/master/csvjson.json", function(data) {
        			autoComplete = [];
        			for (var i = 0, len = data.length; i < len; i++) {
        				autoComplete.push(data[i].key + ", " + data[i].place_name+ ", " + data[i].admin_name1+ ", " + data[i].latitude+ ", " + data[i].longitude);
        			}
        			$( "#hello" ).autocomplete({
        				source: autoComplete,
        				minLength:3
        			});
        		});
        	});
	</script>
	<script type="text/javascript">
	function myFunction() {
		var jobValue = document.getElementById('hello').value.split(",");
		document.getElementById('zip').value=jobValue[0];
		    document.getElementById('city').value=jobValue[1];
			document.getElementById('state').value=jobValue[2];
			document.getElementById('lat').value=jobValue[3];
			document.getElementById('log').value=jobValue[4];
			}
		function myFunction1() {
			var jobValue1 = document.getElementById('range_in_km').value;
			document.getElementById('range_in_m').value=jobValue1;
		}
		function calculate() {
		    
		    var jobValue = document.getElementById('range_in_km').value;
			document.getElementById('range_in_m').value=jobValue*1000;

		}
		</script>
		
		 <script type="text/javascript">
	function myFunction1() {
		var search = document.getElementById('hello').value;
		var zip=document.getElementById('zip').value;
		var city=document.getElementById('city').value;
		var state=document.getElementById('state').value;
		var lat=document.getElementById('lat').value;
		var log=document.getElementById('log').value;
		
		if(city==""||city=="undefined")
			{
				alert("please select values from list");
			}
	}
		
		</script> 
<style>
body {
	width: 100wh;
	height: 90vh;
	color: #fff;
	background: linear-gradient(-75deg, #0099ff 0%, #66ffff, #0099ff, #66ffff);
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
 
/*card*/
.card-outline-info
{
width:400px;
margin-left:240px;
margin-top:50px;
height:500px;
background-color: #0033cc;
opacity:0.9;
}
.card{
background-color:  #0033cc;
opacity:0.9;
color:white;
}
.card-outline-info:hover
{
box-shadow:0 20px 20px 0 black;
}
.card-title
{
	font-size:20px;
	font-weight:bold;
	margin-left:180px;
	margin-top:0px;
	align:center;
}

.card-image{
	padding-left:20px;
	padding-right:20px;
}

.btn{
border-radius:20px;
right:15px;

bottom:20px;
position:absolute;
font-size:20px;
}
.btn:hover
{
background-color:#1f2e2e;
}
/*side navbar*/
.sidenav a:hover {
  color: #e67300;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 20;
  left: 0;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  box-sizing: border-box;
  border:2px;
  background-color: black;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  text-color: #e67300;
  display: block;
  transition: 0.3s;
  
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}


@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
  .card-horizontal{}
  .card{}
  .content{font-size: 10px;}
  .image{}
}


/*Sidenav*/
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    opacity:0.8;
    background-color: #0073e6;
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

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
    color: white;        
}

@media screen and (max-height: 450px) {
  .sidenav a {font-size: 18px;}
}

.sidenav-heading{
    font-size: 36px;
    color: #e67300;
}

.logbtn{
border-radius:20px;
padding-left:15px;
right:30px;
bottom:50px;
position:absolute;
font-size:20px;
}

/*navbar*/
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #002699;
  padding: 0px 0px 12px;
  opacity:0.8;
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
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
/*filterbtn*/
.navbtn{
top:10px;
	Left:270px; 
	position: absolute;
	display: block;
  color: white;
  text-align: center;
  padding: 12px 20px 15px 20px;
  text-decoration: none;
  font-size: 20px;
	background-color:#1ab2ff;
	border:0 none;
	border-radius:15px;
	opacity:0.9;
}
.navbtn a:hover {
  background-color: grey;
  color: black;
}
.navbtn:hover{
background-color:grey;
}
.navbtn .icon {
  display: none;
}
/*filters*/

.filtershare{
	top:13px;
	Left:580px; 
	position: absolute;	
	border-radius: 25px; 
	width:10%;
	height:30px;
	font-size:1em;
	display:none;
}
.filterac{
	top:13px;
	Left:400px; 
	position: absolute;	
	border-radius: 25px; 
	width:10%;
	height:30px;
	font-size:1em;
	display:none;
}

.searchbtn {
top:10px;
	Left:1290px; 
	position: absolute;
	display: none;
    color: white;
    text-align: center;
    padding: 12px 20px 15px 20px;
    text-decoration: none;
    font-size: 20px;
    font-weight:1.5em;
	background-color:#1ab2ff;
	border:0 none;
	border-radius:15px;
 
}
.searchbtn:hover{
background-color:grey;
}
.lgt{
	top:13px;
	Left:750px;
	position:absolute;
    background-color:#1ab2ff;
  	height:30px;
    width: 180px;
    border: none;
    font-family: "Segoe UI Light","Segoe UI","Segoe",Tahoma,Helvetica,Arial,sans-serif;
    font-size: 1em;
    font-weight: bold;
    border-radius:15px;
    transition: 0.3s;
    display:none;
    color:white;
}
.lgt::placeholder {
    color: white;
    font-family: "Segoe UI Light","Segoe UI","Segoe",Tahoma,Helvetica,Arial,sans-serif;
    font-size: 1em;
    font-weight: bold;
   display:none;
    padding-left:8px;
   
}

.meter{
	top:13px;
	Left:970px;
	position:absolute;
    background-color:#1ab2ff;
    color: white;
    width:10%;
	height:30px;
    width: 160px;
    border: none;
    font-family: "Segoe UI Light","Segoe UI","Segoe",Tahoma,Helvetica,Arial,sans-serif;
    font-size: 1em;
    font-weight: bold;
    border-radius:15px;
    transition: 0.3s;
 	display:none;
}
.meter::placeholder {
    color: white;
    padding-left:8px;
    font-family: "Segoe UI Light","Segoe UI","Segoe",Tahoma,Helvetica,Arial,sans-serif;
    font-size: 1em;
    font-weight: bold;
    display:none;
   
}
</style>
</head>
<body>

<!--navbar open -->

<div class="topnav" id="myTopnav">
<button class="navbtn" onclick="Hidebtn()" >Filters</button>
      <c:url var="action" value="userdashboard2"></c:url>
              <form:form action="${action}"  method="POST">
    <select  id="a1" name="a1" class="filterac">
              <option value="None">None</option>
              <option value="Ac">AC</option>
              <option value="Non-Ac">Non-Ac</option>
           </select>
              
      <select  id="a2" name="a2" class="filtershare"><!-- Sharing -->
              <option value="None">None</option>
              <option value="House">House</option>
              <option value="2 sharing">2 sharing</option>
              <option value="3 sharing">3 sharing</option>
              <option value="4 sharing">4 sharing</option>
          </select>
           
              
  			  <input type="text" placeholder="Search zip (min 3 char)"  id="hello" class="lgt" onblur="myFunction()">
              <input type="hidden" placeholder="zip" name="zip" id="zip" readonly >
              <input type="hidden" placeholder="city" name="city" id="city" readonly >
              <input type="hidden" placeholder="state" name="state" id="state" readonly>
              <input type="hidden" placeholder="lat" name="lat" id="lat" readonly >
              <input type="hidden" placeholder="log" name="log" id="log" readonly >
              <input type="text" placeholder="Range_in_km" id="range_in_km"  class="meter" onkeyup="calculate()" >
              <input type="hidden" placeholder="range_in_m" name="range_in_m" id="range_in_m"readonly>
  		      <input type="submit" class="searchbtn" id="a3" value="GO" onclick="myFunction1()">
  				</form:form>
 <span style="font-size:30px;cursor:pointer; color:white;" onclick="openNav()">&#9776;</span>
</div>
<!--navbar closed -->
 <div id="mySidenav" class="sidenav">
   <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="color:white;">&times;</a>
   <br><br><br>
   
   <a href="helloworld">Home</a>
   <a href="#">Profile</a>
 <a href="showbookings">Your Bookings</a>
  <br>
  <button  onclick="" class="logbtn">Logout</button>
</div>


<div class="row">
<div class="col-sm-0"></div> 

 <c:forEach var = "temp" items="${list}" >
   <div class="card card-outline-info" id="'+i+'Panel">
   <div class="card">
   <div class="card-title"><u>${temp.homestay}</u></div>
         <img src="data:images/jpeg;base64,${temp.encimg}"class="card-image" /> 
    <div class="col-lg-10">
    <b>
    <p><b>Address:</b>${temp.addressline1}</p>
 	<p><b>Address:</b>${temp.addressline1}</p>
   <p><b>City:</b>${temp.city}</p>
   <p><b>State:</b>${temp.state}</p>
   <p><b>Contact No:</b>${temp.contactno}</p>
   <p><b>AC :</b>${temp.faclity1}</p>
   <p><b>Occupancy:</b>${temp.faclity8}</p>
   </b>
   </div>
   <a href="bookingpro?id=${temp.id}" ><button class="btn" >Accept</button></a></td>
<%--      <td> <a href="bookingpro?id=${temp.owner.u_id}" ><button class="button button1" >Accept</button></a></td>
 --%>     
   <%--  <td> <button class="button button1" href="Booking?id=${temp.id}">Book</button></td> --%>
   </div>
   </div>
  
   
   </c:forEach>
  </div>
 



   <!--   Core JS Files   -->
  
  <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
<script>

</script>
<script>
function Hidebtn()
{
	var x=document.getElementById("a1");
	var y=document.getElementById("a2");
	var z=document.getElementById("hello");
	var v=document.getElementById("range_in_km");
	var u=document.getElementById("a3");
	if(x.style.display==="none"||y.style.display==="none"||z.style.display==="none"||v.style.display==="none"||u.style.display==="none")
		{
			x.style.display="block";
			y.style.display="block";
			z.style.display="block";
			v.style.display="block";
			u.style.display="block";
		}
	else
		{
		x.style.display="none";
		y.style.display="none";
		z.style.display="none";
		v.style.display="none";
		u.style.display="none";
		}
	}
</script>
  
  <%-- <script src="<c:url value="/jsp/js/jquery-3.3.1.min.js" />"></script> --%>
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