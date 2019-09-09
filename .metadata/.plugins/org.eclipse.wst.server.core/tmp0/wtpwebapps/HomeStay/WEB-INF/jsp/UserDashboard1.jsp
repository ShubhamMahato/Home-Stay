<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HomeStays Cities</title>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="./fontawesome/css/all.css" rel="stylesheet" type="text/css" media="all"/> 
              <link href="./fontawesome/css/all.min.css" rel="stylesheet" type="text/css" media="all"/> 
              <script  src="./fontawesome/js/all.min.js"></script>
              <script  src="./fontawesome/js/all.js"></script>
    <style>
    .grad1 {
  height: 100%;
  width:100%;
  background: linear-gradient(to right, #004d4d , #80ffff); /* Standard syntax (must be last) */
}
       .sub {
  background-color:  #0f3d3d;
  color: white;
  padding: 12px 20px;
  border: none;
  font-size:20px;
  font-weight:bold;
  border-radius: 20px;
  cursor: pointer;
  width:150px;
       }
       .sub:hover{
       background-color:#00cca3;
       }
       .wrapper {
    text-align: center;
}

.container{
margin-top:50px;
}
.myTable {

  cellspacing:10px;
  width: 100%;
	table-layout: auto;
	
}
th{
font-weight:bold;
}
th, td {
  text-align: center;
  padding: 8px;
}

tr:hover{background-color:#00cca3;  }

.field{
border-radius:20px;
width:130px;
padding-left:20px;
height:30px;

}
.field1{
border-radius:20px;
width:130px;
padding-left:20px;
height:30px;
}

.logbtn{
border-radius:20px;
float:right;
margin-bottom:20px;
position:absolute;
font-size:20px;
border:none;
padding: 12px 20px;
color: white;
background-color:  #0f3d3d;
}
.logbtn:hover{
background-color:#00cca3;
}
       </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60" class="grad1">
  
 
  
  
  <!--banner-->
  
  <section id="banner" class="banner">
    <div class="bg-color">
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="col-md-12">
         
          </div>
        </div>
      </nav>
      <div class="container">
        <!-- MAIN -->
    <main role="main">
       <div class="wrapper">
       <j:if test="${ !empty list1}">
       ${fn:length(list1)}
       <table id="myTable" border="2" class="myTable" cellspacing="6">
       <tr>
       <th>id</th>
       <th>HomestayName</th>
       <th>Addressline1</th>
       <th>Addressline2</th>
	   <th>City</th>
	   <th>State</th>
       <th>Zip</th>
       <th>MailId</th>
       <th>ContactNumber</th>
	   <th>AltNumber</th>
	   <th>Facility1</th>
       <th>Facility2</th>
       <th>Facility3</th>
       <th>Facility4</th>
	   <th>Facility5</th>
	   <th>Facility6</th>
       <th>Facility7</th>
       <th>Facility8</th>
       <th>Facility9</th>
	   <th>Facility10</th>
	  <!--  <td>fileName</td> -->
	   <td>Pg_Image</td>

       </tr>
              <j:forEach var="c" items="${list1}">
              <tr>
              <td>${c.id}</td>
              <td>${c.homestay}</td>
              <td>${c.addressline1}</td>
              <td>${c.addressline2}</td>
              <td>${c.city}</td>
              <td>${c.state}</td>
              <td>${c.zipcode}</td>
              <td>${c.mailId}</td>
              <td>${c.contactno}</td>
              <td>${c.altcontactno}</td>
              <td>${c.faclity1}</td>
              <td>${c.faclity2}</td>
              <td>${c.faclity3}</td>
              <td>${c.faclity4}</td>
              <td>${c.faclity5}</td>
              <td>${c.faclity6}</td>
              <td>${c.faclity7}</td>
              <td>${c.faclity8}</td>
              <td>${c.faclity9}</td>
              <td>${c.faclity10}</td>
             <%--  <td>${c.fileName}</td> --%>
          <%--     <td>${c.image}</td> --%>
              <td><img src="data:images/jpeg;base64,${c.encimg}" width="200px" height="150px"/></td>
              
                    
           
       
</tr>
</j:forEach>
</table>
</j:if>
<br><br><br>


 
       		
       <form:form action="updatePgDetails" commandName="updatepgdetails" method="GET">
       	 <input type="text" id="id" name="id" readonly class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="homestay" name="homestay" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="addressline1" name="addressline1" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="addressline2" name="addressline2" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="city" name="city" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="state" name="state" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="zipcode" name="zipcode" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="mailId" name="mailId" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="contactno" name="contactno" class="field">&nbsp;&nbsp;&nbsp;
       	 <input type="text" id="altcontactno" name="altcontactno" class="field">&nbsp;&nbsp;&nbsp;
     
     	<select  id="faclity1" name="faclity1" class="field1">
  		<option value="None">None</option>
  			<option value="Ac">Ac</option>
  			<option value="Non-Ac">Non-Ac</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity2" name="faclity2" class="field1">
  		<option value="None">None</option>
  			<option value="Veg">Veg</option>
  			<option value="Non-Veg">Non-Veg</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity3" name="faclity3" class="field1">
  		<option value="None">None</option>
  			<option value="24 Hours water">24 Hours water</option>
  			<option value="Timings">Timings</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity4" name="faclity4" class="field1"><!-- chairs -->
  		<option value="None">None</option>
  			<option value="less than 5">less than 5</option>
  			<option value="less than 10">less than 10</option>
  			<option value="less than 20">less than 20</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity5" name="faclity5" class="field1"><!-- Tables -->
  		<option value="None">None</option>
  			<option value="less than 5">less than 5</option>
  			<option value="less than 10">less than 10</option>
  			<option value="less than 20">less than 20</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity6" name="faclity6" class="field1"><!-- Fridge -->
  		<option value="None">None</option>
  			<option value="1 per floor">1 per floor</option>
  			<option value="2 per floor">2 per floor</option>
  			<option value="more than 5 per floor">more than 5 per floor</option>
		</select><br><br>
		
		<select  id="faclity7" name="faclity7" class="field1"><!-- Washrooms -->
  		<option value="None">None</option>
  			<option value="Attached">Attached</option>
  			<option value="1 per floor">1 per floor</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity8" name="faclity8" class="field1"><!-- Sharing -->
  		<option value="None">None</option>
  			<option value="House">House</option>
  			<option value="2 sharing">2 sharing</option>
  			<option value="3 sharing">3 sharing</option>
  			<option value="4 sharing">4 sharing</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity9" name="faclity9" class="field1"><!-- Windows -->
  		<option value="None">None</option>
  			<option value="1 per room">1 per room</option>
  			<option value="2 per room">2 per room</option>
  			<option value="3 per room">3 per room</option>
  			<option value="4 per room">4 per room</option>
  			<option value=">5 per room">>5 per room</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<select  id="faclity10" name="faclity10" class="field1"><!-- Almirahs -->
  		<option value="None">None</option>
  			<option value="1 per room">1 per room</option>
  			<option value="2 per room">2 per room</option>
  			<option value="3 per room">3 per room</option>
  			<option value="4 per room">4 per room</option>
  			<option value=">5 per room">>5 per room</option>
		</select>
		&nbsp;&nbsp;&nbsp;
		<!-- <input type="text" name="fileName" id="fileName" readonly>
		<input type="hidden" name="fileUpload" id="fileUpload" > -->
			<input type="submit" value="Submit" class="sub">&nbsp;&nbsp;&nbsp;
		</form:form>
     <script>
    
                var table = document.getElementById('myTable');
                
                for(var i = 1; i < table.rows.length; i++)
                {
                    table.rows[i].onclick = function()
                    {
                    	document.getElementById("id").value = this.cells[0].innerHTML;
                    	document.getElementById("homestay").value = this.cells[1].innerHTML;
                    	document.getElementById("addressline1").value = this.cells[2].innerHTML;
                    	document.getElementById("addressline2").value = this.cells[3].innerHTML;
                    	document.getElementById("city").value = this.cells[4].innerHTML;
                    	document.getElementById("state").value = this.cells[5].innerHTML;
                    	document.getElementById("zipcode").value = this.cells[6].innerHTML;
                    	document.getElementById("mailId").value = this.cells[7].innerHTML;
                    	document.getElementById("contactno").value = this.cells[8].innerHTML;
                    	document.getElementById("altcontactno").value = this.cells[9].innerHTML;
                         
                         document.getElementById("faclity1").value = this.cells[10].innerHTML;
                         document.getElementById("faclity2").value = this.cells[11].innerHTML;
                         document.getElementById("faclity3").value = this.cells[12].innerHTML;
                         document.getElementById("faclity4").value = this.cells[13].innerHTML;
                         document.getElementById("faclity5").value = this.cells[14].innerHTML;
                         document.getElementById("faclity6").value = this.cells[15].innerHTML;
                         document.getElementById("faclity7").value = this.cells[16].innerHTML;
                         document.getElementById("faclity8").value = this.cells[17].innerHTML;
                         document.getElementById("faclity9").value = this.cells[18].innerHTML;
                         document.getElementById("faclity10").value = this.cells[19].innerHTML;
                        /*  document.getElementById("fileName").value = this.cells[20].innerHTML;  */
                    };
                }
    
         </script>
		       
       </div>
    </main>
      </div>
    </div>
   <a href="logout"> <button class="logbtn">Logout</button></a>
  </section>
  <!--/ footer-->

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

</body>
</html>
