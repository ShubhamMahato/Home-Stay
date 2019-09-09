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
    .grad1 {
  height: 100%;
  width:100%;
  background: linear-gradient(to right, #004d4d , #80ffff); /* Standard syntax (must be last) */
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


       </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60"  class="grad1">
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
       <j:if test="${ !empty list}">
       <table id="myTable" border="2">
       <tr>
       <td>id</td>
       <td>HomestayName</td>
       <td>Addressline1</td>
       
	   <td>City</td>
	   <td>State</td>
       
       
       <td>ContactNumber</td>
	   
	   <td>Facility1</td>
      
       <td>Facility8</td>
  	   <td>image</td>
       

       </tr>
              <j:forEach var="c" items="${list}">
              <tr>
              <td>${c.id}</td>
              <td>${c.homestay}</td>
              <td>${c.addressline1}</td>
           
              <td>${c.city}</td>
              <td>${c.state}</td>
            
              <td>${c.contactno}</td>
              
              <td>${c.faclity1}</td>
              
              <td>${c.faclity8}</td>
             
              <td><img src="data:images/jpeg;base64,${pg_img}"/></td>
              
                    
           
       
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
