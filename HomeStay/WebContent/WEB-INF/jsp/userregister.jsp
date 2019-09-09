<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Register</title>
<link rel="stylesheet" href="C:\bootstrap-3.3.7-dist\css\min.css" >
<link rel="stylesheet" href="C:\bootstrap-3.3.7-dist\js\min.js">
<link rel="stylesheet" href="<c:url value="/jsp/css/userregister.css" />">
<link rel="stylesheet" href="https:\\use.fontawesome.com\releases\v5.0.8\css\all.css">
<style>
.error{
color:red;
font-family:sans-serif;
padding-left:10px 20px;
text-align:center;
position:center;
float: center;
}
</style>
</head>
<body style="background-image: url('<c:url value="/jsp/images/background_1.jpg" />');">
<c:url var="action" value="add"></c:url>
<form:form action="${action}" commandName="user" method="POST">

<div class="main">
    <p class="sign" align="center">Sign in</p>
      <form:input class="un " align="center" placeholder="Your First Name" path="first_name"></form:input>
      <form:errors path="first_name" cssClass="error"></form:errors>
      
       <form:input class="un " align="center" placeholder="last Name" path="last_name"></form:input>
     	<form:errors path="last_name" cssClass="error"></form:errors>
       
        <form:input class="un " type="text" align="center" placeholder="Age" path="age"></form:input>
        <br>
         <form:errors path="age" cssClass="error"></form:errors><div class="inputWithIcon">
                           <select class="un "  name="gender">
                           <option selected="">Gender</option>
                           <option>Male</option>
                           <option>Female</option>
                           </select>
                           
           </div>
          <form:input class="un " type="text" align="center" placeholder="E-mail" path="email"></form:input>
          <br>
          <form:errors path="email" cssClass="error"></form:errors>
          
          <form:input class="un " type="text" align="center" placeholder="Contact No. " path="contact_number"></form:input>
          <form:errors path="contact_number" cssClass="error"></form:errors>
          
          <form:input class="un " type="text" align="center" placeholder="User Id" path="user_id"></form:input>
          <br>
          <form:errors path="user_id" cssClass="error"></form:errors>
              <form:input class="pass" type="password" align="center" placeholder="Password" path="password"></form:input>
              <br>
              <form:errors path="password" cssClass="error"></form:errors>
              
              
              <input class="pass" type="password" align="center" placeholder="Confirm Password" id="confirm_password" ></input> 
              
              <button class="submit" align="center">Sign Up</button>

    </div>
</form:form>

<script>
$('.gender').click(function() {
    $(this).find('.btn').toggleClass('active');  
    if ($(this).find('.btn-primary').length>0) {
    	$(this).find('.btn').toggleClass('btn-primary');
    }
    $(this).find('.btn').toggleClass('btn-default');
});
</script> 
 <script>
 var password = document.getElementById("password")
 var confirm_password = document.getElementById("confirm_password");

function validatePassword(){
 if(password.value != confirm_password.value) {
   confirm_password.setCustomValidity("Passwords Don't Match");
 } else {
   confirm_password.setCustomValidity('');
 }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
<script>
function viewPassword()
{
  var passwordInput = document.getElementById('password');
  
 
  if (passwordInput.type == 'password'){
    passwordInput.type='text';
    passStatus.className='fa fa-eye-slash';
    
  }
  else{
    passwordInput.type='password';
    passStatus.className='fa fa-eye';
  }
}

</script>
</body>
</html>