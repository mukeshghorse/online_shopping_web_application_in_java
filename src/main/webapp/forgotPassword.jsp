<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>ForgotPassword</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="forgotPasswordAction.jsp" method="post">
				<input type="email" placeholder="Enter Email" name="email" required>
				<input type="number" placeholder="Enter Mobile Number"
					name="mobileNumber" required> <select
					name="securityQuestion" required>
					<option value="What was your first car?">What was your
						first car?</option>
					<option value="What is the name of first pet?">What is the
						name of first pet?</option>
					<option value="What elementary school did you attend?">What
						elementary school did you attend?</option>
					<option value="What is the name of town where you was born?">What
						is the name of town where you was born?</option>
				</select> <input type="text" name="answer" placeholder="Enter Answer"
					required> <input type="password" name="newPassword"
					placeholder="Enter New Password" required> <input
					type="submit" value="Save">
			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whyforgotPassword'>
			<%
			String msg = request.getParameter("msg");
			if ("done".equals(msg)) {
			%>
			<h1>Password Changed Successfully!</h1>

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