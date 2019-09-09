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
#myTable
{
	width:100%;
	table-layout: auto;
}

       </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
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
       <j:if test="${ !empty list2}">
       <table id="myTable" border="2">
       <tr>
       <td>id</td>
       <td>HomestayName</td>
       <td>Addressline1</td>
       <td>Addressline2</td>
	   <td>City</td>
	   <td>State</td>
       <td>Zip</td>
       <td>MailId</td>
       <td>ContactNumber</td>
	   <td>AltNumber</td>
	   <td>Facility1</td>
       <td>Facility2</td>
       <td>Facility8</td>
	   <td>fileName</td>
	   <td>image</td>

       </tr>
              <j:forEach var="c" items="${list2}">
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
              <td>${c.faclity8}</td>
              <td>${c.fileName}</td>
              <td>${c.image}</td>
              <td><img src="data:images/jpeg;base64,${c.encimg}" width="200px" height="150px"/></td>
              
                    
           
       
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
