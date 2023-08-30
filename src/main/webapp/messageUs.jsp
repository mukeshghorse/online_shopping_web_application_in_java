<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer"
/>
<title>Message Us</title>
</head>
<body>

	<div style="color: white; text-align: center; font-size: 30px;">
		Message Us <i class='fas fa-comment-alt'></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<h3 style="text-align: center; color: yellow;">Message successfully sent. Our team will contact you soon!</h3>
	<%
	}
	if ("invalid".equals(msg)) {
	%>
	<h3 style="text-align: center;">Some thing Went Wrong! Try Again!</h3>
	<%
	}
	%>
	<form action="messageUsAction.jsp" method="post">

		<input class="input-style" name="subject" type="text" placeholder="Subject" required> <br><br>
		<textarea class="input-style" name="body" placeholder="Enter Your Message" required></textarea>
		<br>
		<button type="submit" class="button">
			<i class='far fa-arrow-alt-circle-right'></i>Send Message
		</button>
		
	</form>
</body>
</html>