<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer"
/>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert">Your Mobile Number successfully changed!</h3>
	<%
	}
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Your Password is wrong!</h3>
	<%
	}
	%>

	<form action="changeMobileNumberAction.jsp" method="post">

		<h3>Enter Your New Mobile Number</h3>
		<input class="input-style" type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>

		<hr>
		<h3>Enter Password (For Security)</h3>
		<input class="input-style" type="password" name="password" placeholder="Enter Password" required>

		<hr>
		<button type="submit" class="button">
			<i class='far fa-arrow-alt-circle-right'></i>Save
		</button>
	</form>
</body>
<br>
<br>
<br>
</html>