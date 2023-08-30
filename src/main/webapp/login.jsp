
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Login</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="password" name="password" placeholder="Enter password"
					required> <input type="submit" value="login">


			</form>

			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
			<%
			String msg = request.getParameter("msg");
			if ("notexist".equals(msg)) {
			%>
			<h1>Incorrect Username or Password</h1>

			<%
			}
			%>
			<%
			if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}
			%>

			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>