<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>HomeStay &mdash; Stay Smart </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Free-Template.co" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700"> 
    <link rel="stylesheet" href="<c:url value="/jsp/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/icomoon_style.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/jquery-ui.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.theme.default.min.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap-datepicker.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/userregister.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/fonts/flaticon/flaticon.css" />">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

  
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="200" >
  
  <!-- <div class="site-wrap"> -->

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar py-3 js-site-navbar site-navbar-target" role="banner" id="site-navbar">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-11 col-xl-2 site-logo">
            
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation" >

              <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                <li><a href="#section-home" class="nav-link">Home</a></li>
                <li><a href="#section-about" class="nav-link">About Us</a></li>
                <li><a href="#section-services" class="nav-link">Services</a></li>
                <li><a href="#section-contact" class="nav-link">Contact</a></li>
               
                <li class="has-children">
				<a href="#section-sign_in" class="nav-link" >Sign-In</a>
				<ul class="dropdown">
                    <li><a href="#section-sign_in" class="nav-link" onclick="signin()">User</a></li>
                    <li><a href="#section-owner" class="nav-link" onclick="ownerin()">Owner</a></li>
                    <li><a href="#section-admin" class="nav-link" onclick="adminin()">Admin</a></li>
                  </ul>
                </li>
               
				
				
				
				
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu h3"></span></a></div>

          </div>

        </div>
      </div>
      
    </header>

  
 <%-- <jsp:setProperty name = "box" property = "perimeter" value = "100"/> --%>
    <div class="site-blocks-cover overlay" style="background-image: url('<c:url value="/jsp/images/img_12.jpg" />'); data-aos="fade" data-stellar-background-ratio="0.5" id="section-home"">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
            

            <h1 class="text-white font-weight-light text-uppercase font-weight-bold" data-aos="fade-up">We Offer a better Place to Live </h1>
            <p class="mb-5" data-aos="fade-up" data-aos-delay="100">Join HomeStay <i class="fas fa-home"></i></p>
            <p data-aos="fade-up" data-aos-delay="200"><a href="helloworld1" class="btn btn-primary py-3 px-5 text-white">Register With Us !!</a></p>

          </div>
        </div>
      </div>
    </div>  
	<div class="site-section" id="section-sign_in" style="display:none; background-image:url('<c:url value="/jsp/images/background_1.jpg" />'); background-size: cover;">
<!-- <Add Sign-In Code> -->
		<div id="sign_in">
		<c:url var="action" value="shubham"></c:url>
		<form:form action="${action}"  method="POST">
		<div class="main">
    		<p class="sign" align="center">Sign in</p>
      		<input class="un " type="text" align="center"  placeholder="Username" name="user_id">
      		<input class="pass" type="password" align="center"  placeholder="Password" name="password">
   			<input type="submit" class="submit" align="center" value="Sign In">
   			<br>
   			<div>
					<p style="color:red;text-align:center;">${failed}</p>
			</div>
      		</div>
      		</form:form>
    		</div>
   			</div>
     <!-- Owner sign in -->
     <div class="site-section" id="section-owner" style="display:none; background-image:url('<c:url value="/jsp/images/background_1.jpg" />'); background-size: cover;">
		<div id="ownerin">
		<c:url var="action" value="ownerlogin"></c:url>
		<form:form action="${action}"  method="POST">
		<div class="main">
    		<p class="sign" align="center">Sign in</p>
      		<input class="un " type="text" align="center" placeholder="Username"   name="owner_id">
      		<input class="pass" type="password" align="center" placeholder="Password"  name="password">
   			<input type="submit" class="submit" align="center" value="Sign In">
      		</div>
      		</form:form>
    		</div>
   			</div>
   			<!-- Admin sign in -->
   			  <div class="site-section" id="section-admin" style="display:none; background-image:url('<c:url value="/jsp/images/background_1.jpg" />'); background-size: cover;">
		<div id="adminin">
		<c:url var="action" value="adminlogin"></c:url>
		<form:form action="${action}"  method="POST">
		<div class="main">
    		<p class="sign" align="center">Sign in</p>
      		<input class="un " type="text" align="center" placeholder="Username"  value="admin" name="admin_id">
      		<input class="pass" type="password" align="center" placeholder="Password"  value="admin" name="password">
   			<input type="submit" class="submit" align="center" value="Sign In">
      		</div>
      		</form:form>
    		</div>
   			</div>
   			
    <div class="site-section" id="section-about">
      <div class="container">
        <div class="row mb-5">
          
          <div class="col-md-5 ml-auto mb-5 order-md-2" data-aos="fade-up" data-aos-delay="100">
            <img src="<c:url value="/jsp/images/img13.jpg" />" alt="Image" class="img-fluid rounded" width=100% height=260% ">
          </div>
          <div class="col-md-6 order-md-1" data-aos="fade-up">
            <div class="text-left pb-1 border-primary mb-4">
              <h2 class="text-primary">About Us</h2>
            </div>
            <p>We offer a better place to live!!!!</p>
            <p class="mb-5">We believe in "Stay Smart, Feel homely"</p>
            
            <ul class="ul-check list-unstyled success">
              <li>Parking Space</li>
              <li>Hygienic Food</li>
              <li>Rooms in one's budget</li>
            </ul>
            
          </div>
          
        </div>
      </div>
    </div>
  <%-- <jsp:setProperty name = "box" property = "perimeter" value = "100"/> --%>
    <div class="site-section bg-image overlay" style="background-image: url('<c:url value="/jsp/images/img_14.jfif" />');" id="section-how-it-works">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary" data-aos="fade">How It Works</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
            <div class="how-it-work-item">
              <span class="number">1</span>
              <div class="how-it-work-body">
                <h2>Select the Location</h2>
                <p class="mb-5">You can chose from wide range of locations according to your comfort.</p>
                <ul class="ul-check list-unstyled success">
                  <li class="text-white">Residental Socities</li>
                  <li class="text-white">Away from City</li>
                  
                </ul>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
            <div class="how-it-work-item">
              <span class="number">2</span>
              <div class="how-it-work-body">
                <h2>Select the PG</h2>
                <p class="mb-5">Choose a particular PG/Hostel according to your requirements after exploring the various rooms available in various PG of the location.</p>
                <ul class="ul-check list-unstyled success">
                  <li class="text-white">PG that fits in your budget</li>
                  <li class="text-white">Fullfill your requirements</li>
                  <li class="text-white">Is available in required dates</li>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="300">
            <div class="how-it-work-item">
              <span class="number">3</span>
              <div class="how-it-work-body">
                <h2>Chose the required dates and proceed to booking</h2>
                <p class="mb-5">Once you find the perfect room.You can check for the availability</p>
                <ul class="ul-check list-unstyled success">
                  <li class="text-white">once available</li>
                  <li class="text-white">Make an offer</li>
                  
                </ul>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>





    <div class="site-section bg-light" id="section-services">
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div class="col-md-7 text-center border-primary">
            <h2 class="mb-0 text-primary">Our Services</h2>
            <p class="color-black-opacity-5">Where we lay concrete of our Idea</p>
          </div>
        </div>
        <div class="row align-items-stretch">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><i class=" text-primary fas fa-hotel" style="font-size: 2.2em"></i></div>
              <div>
                <h3 style="color:black">Luxury Private Rooms</h3>
                <p style="color:black">Personal,fully furnished rooms are available at reasonable prices. </p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><i class="text-primary fas fa-wind" style="font-size: 2em"></i></div>
              <div>
                <h3>AC - Sharing Rooms</h3>
                <p>AC rooms are available with two and three sharing.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><i class="text-primary fas fa-bed" style="font-size:2em"></i></div>
              <div>
                <h3>Rent Furnished Apartments</h3>
                <p>You get a fully furnished apartment.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>


          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary fas fa-hourglass" style="font-size:2em"></span></div>
              <div>
                <h3>24 X 7 Personal Assistance</h3>
                <p>there is 24 hr water and electricity supply with backup.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="400">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary fas fa-coffee"></span></div>
              <div>
                <h3>With Kitchen Utilities</h3>
                <p>All the kitchens are equipped with all amenities. </p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="500">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary fas fa-times"></span></div>
              <div>
                <h3>No Owner Interference</h3>
                <p>Be your own lord. We offer rooms with zero owner interference.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    

   

    <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url('<c:url value="/jsp/images/img_15.jpg" />'); background-attachment: fixed;">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-7" data-aos="fade-up">
            <a href="https://vimeo.com/channels/staffpicks/93951774" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
            <h2 class="text-white font-weight-light mb-5 h1">Watch The Video</h2>
            
          </div>
        </div>
      </div>
    </div>  
    
  

   

    <div class="site-section bg-light" id="section-contact">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Contact Us</h2>
           
          </div>
        </div>
        <div class="row">
          <div class="col-md-7 mb-5">

            

            <form action="#" class="p-5 bg-white">
             

              <div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">First Name</label>
                  <input type="text" id="fname" class="form-control">
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="lname">Last Name</label>
                  <input type="text" id="lname" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Subject</label> 
                  <input type="subject" id="subject" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Message</label> 
                  <textarea name="message" id="message" cols="30" rows="7" class="form-control"></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          <div class="col-md-5">
            
            <div class="p-4 mb-3 bg-white">
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">XYZ street, PQR city XY state</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+91 232 3235 324</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">youremail@domain.com</a></p>

            </div>
            
            

          </div>
        </div>
      </div>
    </div>
  
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-5 mr-auto">
                <h2 class="footer-heading mb-4">About Us</h2>
                <p>Home Stay helps you to find a better,safe and homely place  to live.</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </footer>
  <!-- </div> -->
<script>
function signin(){
var x = document.getElementById("section-sign_in");
if (x.style.display === "none") {
    x.style.display = "block";
  } else {
	x.style.display= "none";
  }
  }
</script>
<script>
function ownerin(){
	var x = document.getElementById("section-owner");
	if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
		x.style.display= "none";
	  }
	  }
</script>
<script>
function adminin(){
	var x = document.getElementById("section-admin");
	if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
		x.style.display= "none";
	  }
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
  <script src="<c:url value="/jsp/js/aos.js" />"></script>

  <script src="<c:url value="/jsp/js/main.js" />"></script>
    
  </body>
</html>