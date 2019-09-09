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
		$( function() {
	$.getJSON("https://raw.githubusercontent.com/ShubhamMahato/HomeStay1/master/csvjson.json", function(data) {
		autoComplete = [];
		for (var i = 0, len = data.length; i < len; i++) {
			autoComplete.push(data[i].key + ", " + data[i].place_name+ ", " + data[i].admin_name1+ ", " + data[i].latitude+ ", " + data[i].longitude);
		}
		$( "#hello" ).autocomplete({
			source: autoComplete,
			minLength: 3
		});
	});
});
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
</head>
<body>
<body>
<div id="myin">
              <c:url var="action" value="userdashboard2"></c:url>
              <form:form action="${action}"  method="POST">
              <div class="main">
              <p class="sign" align="center">Sign in</p>
             <fieldset>
     <label style="font-weight:bold;">Air Conditioner</label>
       <select  id="a1" name="a1" style="border-radius: 25px;  width:10%; height:30px; font-size:1em">
              <option value="None">None</option>
                    <option value="Ac">AC</option>
                    <option value="Non-Ac">Non-Ac</option>
              </select>
              <label style="font-weight:bold;">Occupancy</label>
              <select  id="a2" name="a2" style="border-radius: 25px;  text-align: center; width:10%; height:30px; font-size:1em"><!-- Sharing -->
              <option value="None">None</option>
                    <option value="House">House</option>
                    <option value="2 sharing">2 sharing</option>
                    <option value="3 sharing">3 sharing</option>
                    <option value="4 sharing">4 sharing</option>
              </select>
     
            <input type="text" placeholder="search" name="hello" id="hello" onblur="myFunction()">
            <input type="text" placeholder="zip" name="zip" id="zip" readonly >
 			<input type="text" placeholder="city" name="city" id="city" readonly >
  			<input type="text" placeholder="state" name="state" id="state" readonly>
   			<input type="text" placeholder="lat" name="lat" id="lat" readonly >
    		<input type="text" placeholder="log" name="log" id="log" readonly >
              
              <input type="text" placeholder="range_in_km" id="range_in_km" onkeyup="calculate()" >
             <input type="text" placeholder="range_in_m" name="range_in_m" id="range_in_m" readonly>
           <input type="submit" class="submit" align="center" value="submit">
             
             </div>
             </form:form>
</div>

</body>
</html>