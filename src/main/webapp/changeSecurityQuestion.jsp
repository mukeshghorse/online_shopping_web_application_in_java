<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer"
/>
<title>Change Security Question</title>
</head>
<body>
	<%
	String msg=request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert">Your security Question successfully changed !</h3>
	<%
	}
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Your Password is wrong!</h3>
	<%
	}
	%>


<form action="changeSecurityQuestionAction.jsp" method="post">
	<h3>Select Your New Security Question</h3>
	<select class="input-style" name="securityQuestion" required>
		<option value="What was your first car?">What was your first car?</option>
		<option value="What is the name of first pet?">What is the name of first pet?</option>
		<option value="What elementary school did you attend?">What elementary school did you attend?</option>
		<option value="What is the name of town where you was born?">What is the name of town where you was born?</option>
	</select>
	<hr>
	<h3>Enter Your New Answer</h3>
	<input class="input-style" type="text" name="newAnswer" placeholder="Enter Answer" required>
	<hr>
	<h3>Enter Password (For Security)</h3>
	<input class="input-style" type="password" name="password" placeholder="Enter Password" required>
	<hr>
	<button type="submit" class="button"><i class='far fa-arrow-alt-circle-right'></i>Save</button>
</form>
</body>
<br>
<br>
<br>
</html>