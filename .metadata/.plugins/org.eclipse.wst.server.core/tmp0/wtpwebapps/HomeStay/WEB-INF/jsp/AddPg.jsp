<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
		$( function() { /* list of the zip with city and lattitude and logtitude */
	$.getJSON("https://raw.githubusercontent.com/ShubhamMahato/HomeStay1/master/csvjson.json", function(data) {
		autoComplete = [];
		for (var i = 0, len = data.length; i < len; i++) {
			autoComplete.push(data[i].key + ", " + data[i].place_name+ ", " + data[i].admin_name1);
		}
		$( "#hello" ).autocomplete({
			source: autoComplete,
			minLength: 3
		});
	});
});
		function myFunction() {
			var jobValue = document.getElementById('hello').value.split(",");
			document.getElementById('zipcode').value=jobValue[0];
			    document.getElementById('city').value=jobValue[1];
				document.getElementById('state').value=jobValue[2];
				}

	</script>
 <link rel="stylesheet" href="<c:url value="/jsp/css/icomoon_style.css" />">
	<link rel="stylesheet" href="<c:url value="/jsp/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/magnific-popup.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/jquery-ui.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/jsp/css/owl.theme.default.min.css" />">

<style>
@import url(https://fonts.googleapis.com/css?family=Montserrat);

/*basic reset*/
* {margin: 0; padding: 0;}

html {
       height: 100%;
     
}

body {
       font-family: montserrat, arial, verdana;
}
/*form styles*/
#msform {
       width: 400px;
       margin: 50px auto;
       text-align: center;
       position: relative;
}
#msform fieldset {
       opacity:0.8;
       border: 2px;
       border-radius: 3px;
       padding: 20px 30px;
       box-sizing: border-box;
       width: 80%;
       margin: 0 10%;
       
       /*stacking fieldsets above each other*/
       position: relative;
}

/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
       display: none;
}

/*inputs*/
#msform input, #msform textarea {
       padding: 15px;
       border: 1px solid #ccc;
       border-radius: 3px;
       margin-bottom: 10px;
       width: 100%;
       box-sizing: border-box;
       font-family: montserrat;
       color: #2C3E50;
       font-size: 13px;
}

/*buttons*/
#msform .action-button {
       width: 100px;
       background: #99ccff;
       font-weight: bold;
       color: white;
       border: 0 none;
       border-radius: 20px;
       cursor: pointer;
       padding: 10px 5px;
       margin: 10px 5px;
}
#msform .action-button:hover, #msform .action-button:focus {
       box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
}
/*headings*/
.fs-title {
       font-size: 15px;
       text-transform: uppercase;
       color: #2C3E50;
       margin-bottom: 10px;
}
.fs-subtitle {
       font-weight: normal;
       font-size: 13px;
       color: #666;
       margin-bottom: 20px;
}
/*progressbar*/
#progressbar {
       margin-bottom: 30px;
       overflow: hidden;
       /*CSS counters to number the steps*/
       counter-reset: step;
}
#progressbar li {
       list-style-type: none;
       color: white;
       text-transform: uppercase;
       font-size: 9px;
       width: 25%;
       float: left;
       position: relative;
}
#progressbar li:before {
       content: counter(step);
       counter-increment: step;
       width: 20px;
       line-height: 20px;
       display: block;
       font-size: 10px;
       color: #333;
       background: white;
       border-radius: 3px;
       margin: 0 auto 5px auto;
}
::placeholder {
  color: blue;
  opacity: 1; 
  font-weight:bold;
}
/*progressbar connectors*/
#progressbar li:after {
       content: '';
       width: 100%;
       height: 2px;
       background: white;
       position: absolute;
       left: -50%;
       top: 9px;
       z-index: -1; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
       /*connector not needed before the ,/.l/ ,/ ,./ ,first step*/
       content: none; 
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before,  #progressbar li.active:after{
       background: #99ccff;
       color: white;
}

body{
font-family:Lora;
background:-webkit-gradient(linear,left top,left bottom,from(rgba(47,23,15,.65))),url('<c:url value="/jsp/images/img_12.jpg" />');
background:linear-gradient(rgba(47,23,15,.65)),url('<c:url value="/jsp/images/img_12.jpg"/>');
background-attachment:fixed;
background-position:center;
background-size:cover;

}
.ll{
margin-left:20px;
}
</style> 
</head>
<body>
<c:url var="action" value="home1"></c:url>

 <form:form action="home1" commandName="pgdetails" method="POST" enctype="multipart/form-data" >
<div id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Account Setup</li>
    <li>Address Details</li>
    <li>Facilities</li>
    <li>Image</li>
  </ul>

<fieldset>
		  
       	 <form:input type="text" id="homestay"  placeholder="Name" path="homestay" style="border-radius: 25px; opacity:0.7; text-align: center; text-color:black;"></form:input>
       	 <form:input type="text" id="addressline1"  placeholder="AddressLine1" path="addressline1" style="border-radius: 25px; opacity:0.7; text-align: center; "></form:input>
       	 <form:input type="text" id="addressline2"  placeholder="AddressLine2" path="addressline2" style="border-radius: 25px; opacity:0.7; text-align: center;"></form:input>
       	 <input type="text" placeholder="search_zip_code" id="hello" onblur="myFunction()" style="border-radius: 25px; opacity:0.7; text-align: center;">
       	 <form:input type="text" id="zipcode"  placeholder="Zip_code" path="zipcode" style="border-radius: 25px; opacity:0.7; text-align: center;" required="true"></form:input>
		 
    <input type="button" name="next" class="next action-button" value="Next" />
		
</fieldset>
<fieldset>       	 
       	 <form:input type="text" id="state"  placeholder="State" path="state" style="border-radius: 25px; opacity:0.7; text-align: center;"></form:input>
       	 <form:input type="text" id="city"  placeholder="City" path="city" style="border-radius: 25px; opacity:0.7; text-align: center;" ></form:input>
       	 
       	 <form:input type="text" id="mailId"  placeholder="E-mail address" path="mailId" style="border-radius: 25px; opacity:0.7; text-align: center;"></form:input>
       	 <form:input type="text" id="contactno" placeholder="Contact Number" path="contactno" style="border-radius: 25px; opacity:0.7; text-align: center;"></form:input>
       	 <form:input type="text" id="altcontactno"  placeholder="Alt_Contact Number" path="altcontactno" style="border-radius: 25px; opacity:0.7; text-align: center;"></form:input>
		<input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />
		
</fieldset>
<fieldset>

     <label style="font-weight:bold;color:pink;">Air Conditioner</label>
     <div class="ll">
     	<select  id="faclity" name="faclity1" style="border-radius: 25px ; text-align: center ;width:50% ;height:30px; font-size:1em ;padding-left:12.5%">
  		<option value="None" style="color:red">None</option>
  			<option value="Ac">AC</option>
  			<option value="Non-Ac">Non-Ac</option>
		</select>
		</div>
		<br>
		 <label style="font-weight:bold;color:pink;">Food</label>
		  <div class="ll">
		<select  id="faclity" name="faclity2" style="border-radius: 25px; width:50%; height:30px; font-size:1em; padding-left:12.5%;">
  		<option value="None"style="color:red;">None</option>
  			<option value="Veg">Veg</option>
  			<option value="Non-Veg">Non-Veg</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold; color:pink;">Water Supply</label>
		 <div class="ll">
		<select  id="faclity" name="faclity3" style="border-radius: 25px; width:50%; height:30px; font-size:1em; padding-left:12.5%;">
  		<option value="None"style="color:red;">None</option>
  			<option value="24 Hours water">24 Hours water</option>
  			<option value="Timings">Timings</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Chairs</label>
		 <div class="ll">
		<select  id="faclity"  name="faclity4" style="border-radius: 25px;  width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- chairs -->
  		<option value="None"style="color:red;">None</option>
  			<option value="less than 5">less than 5</option>
  			<option value="less than 10">less than 10</option>
  			<option value="less than 20">less than 20</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Tables</label>
		 <div class="ll">
		<select  id="faclity" name="faclity5" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Tables -->
  		<option value="None"style="color:red;">None</option>
  			<option value="less than 5">less than 5</option>
  			<option value="less than 10">less than 10</option>
  			<option value="less than 20">less than 20</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Water Cooler</label>
		 <div class="ll">
		<select  id="faclity" name="faclity6" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Fridge -->
  		<option value="None"style="color:red;">None</option>
  			<option value="1 per floor">1 per floor</option>
  			<option value="2 per floor">2 per floor</option>
  			
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Washroom</label>
		 <div class="ll">
		<select  id="faclity" name="faclity7" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Washrooms -->
  		<option value="None"style="color:red;">None</option>
  			<option value="Attached">Attached</option>
  			<option value="1 per floor">1 per floor</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Occupancy</label>
		 <div class="ll">
		<select  id="faclity" name="faclity8" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Sharing -->
  		<option value="None"style="color:red;">None</option>
  			<option value="House">House</option>
  			<option value="2 sharing">2 sharing</option>
  			<option value="3 sharing">3 sharing</option>
  			<option value="4 sharing">4 sharing</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Almirah</label>
		 <div class="ll">
		<select  id="faclity" name="faclity9" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Windows -->
  		<option value="None"style="color:red;">None</option>
  			<option value="1 per room">1 per room</option>
  			<option value="2 per room">2 per room</option>
  			<option value="3 per room">3 per room</option>
  			<option value="4 per room">4 per room</option>
  			<option value=">5 per room">>5 per room</option>
		</select>
		</div>
		<br>
		<label style="font-weight:bold;color:pink;">Windows</label>
		 <div class="ll">
		<select  id="faclity" name="faclity10" style="border-radius: 25px;  text-align: center; width:50%; height:30px; font-size:1em; padding-left:12.5%;"><!-- Almirahs -->
  		<option value="None"style="color:red;">None</option>
  			<option value="1 per room">1 per room</option>
  			<option value="2 per room">2 per room</option>
  			<option value="3 per room">3 per room</option>
  			<option value="4 per room">4 per room</option>
  			<option value=">5 per room">>5 per room</option>
		</select>
		</div>
<input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />

</fieldset>
		<fieldset>
		<input type="file" value="file" id="fileUpload" name="fileUpload" style="color:pink;">
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" value="Submit">
		</fieldset>
		</div>
		</form:form> 

 <script>
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
       if(animating) return false;
       animating = true;
       
       current_fs = $(this).parent();
       next_fs = $(this).parent().next();
       
       //activate next step on progressbar using the index of next_fs
       $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
       
       //show the next fieldset
       next_fs.show(); 
       //hide the current fieldset with style
       current_fs.animate({opacity: 0}, {
              step: function(now, mx) {
                     //as the opacity of current_fs reduces to 0 - stored in "now"
                     //1. scale current_fs down to 80%
                     scale = 1 - (1 - now) * 0.2;
                     //2. bring next_fs from the right(50%)
                     left = (now * 50)+"%";
                     //3. increase opacity of next_fs to 1 as it moves in
                     opacity = 1 - now;
                     current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
                     next_fs.css({'left': left, 'opacity': opacity});
              }, 
              duration: 800, 
              complete: function(){
                     current_fs.hide();
                     animating = false;
              }, 
              //this comes from the custom easing plugin
              easing: 'easeInOutBack'
       });
});

$(".previous").click(function(){
       if(animating) return false;
       animating = true;
       
       current_fs = $(this).parent();
       previous_fs = $(this).parent().prev();
       
       //de-activate current step on progressbar
       $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
       
       //show the previous fieldset
       previous_fs.show(); 
       //hide the current fieldset with style
       current_fs.animate({opacity: 0}, {
              step: function(now, mx) {
                     //as the opacity of current_fs reduces to 0 - stored in "now"
                     //1. scale previous_fs from 80% to 100%
                     scale = 0.8 + (1 - now) * 0.2;
                     //2. take current_fs to the right(50%) - from 0%
                     left = ((1-now) * 50)+"%";
                     //3. increase opacity of previous_fs to 1 as it moves in
                     opacity = 1 - now;
                     current_fs.css({'left': left});
                     previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
              }, 
              duration: 800, 
              complete: function(){
                     current_fs.hide();
                     animating = false;
              }, 
              //this comes from the custom easing plugin
              easing: 'easeInOutBack'
       });
});

$(".submit").click(function(){
       return false;
})
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
  <script src="<c:url value="/jsp/js/aos.js" />"></script>

  <script src="<c:url value="/jsp/js/main.js" />"></script> 


</body>
</html>