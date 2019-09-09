<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
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
    body{
    background: linear-gradient(-50deg, #0066ff 0%, #99ccff 100%); 
    }
       input[type=submit] {
  background-color: #0CADAD;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width:200px;
       }
      .myTable {
margin-top:40%;
	
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
.container{
top:40%;
position:absolute;
left:30%
}
tr:hover{background-color:#99ddff;  }
.but3{
border-radius:20px;

}
.but3:hover{
background-color:#00aaff;
}
       </style>
</head>
<body>
  <!--banner-->
  <section id="banner" class="banner">
    <div class="bg-color">
      
      <div class="container">
        <!-- MAIN -->
    <main role="main">
       <div class="wrapper">
       <j:if test="${ !empty list}">
       <table id="myTable" border="2">
       <tr>
       <th>Booking Id</td>
       <!-- <td>Booking_show</td> -->
      <th>First Name</th>
       <th>Last Name</th>
	   <th>Pg Name</th>
	    <th>Accept</th>
	     <th>Decline</th>

       </tr>
              <j:forEach var="c" items="${list}">
              <tr>
              <td>${c.bookingid}</td>
             <%--  <td>${c.Booking_show}</td> --%>
              <td>${c.firstname}</td>
              <td>${c.lastname}</td>
              <td>${c.pgname}</td>
               <td><a href="<j:url value='/AcceptBooking/${c.bookingid}'/>"><button class="but3">Accept</button></a></td>
              <td><a href="<j:url value='/declineBookingowner/${c.bookingid}'/>" style="color:red"><button class="but3">Decline</button></a></td>
              
                    
           
       
</tr>
</j:forEach>
</table>
</j:if>



 
       		
      
   
		  
       
       </div>
    </main>
      </div>
    </div>
  </section>
  <!--/ footer-->

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

</body>
</html>
