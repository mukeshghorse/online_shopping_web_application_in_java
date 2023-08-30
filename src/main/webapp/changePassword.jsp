<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Message Us</title>
</head>
<body>

	<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg)){
	%>
	<h3 class="alert">New password and Confirm password does not
		match!</h3>
	<% 
}

	if("wrong".equals(msg)){ %>
	<h3 class="alert">Your old Password is wrong!</h3>

	<% 
}

	if("done".equals(msg)){ %>
	<h3 class="alert">Password change successfully!</h3>

	<%
	}
	
	if("invalid".equals(msg)){ %>
	<h3 class="alert">Some thing went wrong! Try again!</h3>

	<%
	}
	%>

<form action="changePasswordAction.jsp" method="post">



	<h3>Enter Old Password</h3>
	<input class="input-style" name="oldPassword" type="password" placeholder="Enter Old password" required="required" >
	<hr>
	<h3>Enter New Password</h3>
	<input class="input-style" name="newPassword" type="password" placeholder="Enter New password"  required="required">

	<hr>
	<h3>Enter Confirm Password</h3>
	<input class="input-style" name="confirmPassword" type="password" placeholder="Enter  Password again" required="required" >

	<hr>
	<button class="button" type="submit" >Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br>
<br>
<br>
</html>