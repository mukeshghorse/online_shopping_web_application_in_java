<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>change address</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<h3 class="alert">Address Successfully Updated !</h3>
	<% 
}


if("inValid".equals(msg)){
	%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
	<% 
}
%>

<% 
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");

while(rs.next()){
	

%>

<form action="addChangeAddressAction.jsp" method="post"><h3>Enter Address</h3>
 <input class="input-style" type="text" placeholder="Enter address" name="address" value="<%=rs.getString(7) %>" required>
 <hr>
 <h3>Enter city</h3>
  <input class="input-style" type="text" placeholder="Enter city" name="city" value="<%=rs.getString(8) %>" required>
 
<hr>
<h3>Enter State</h3>
 <input class="input-style" type="text" placeholder="Enter State" name="state" value="<%=rs.getString(9) %>" required>

<hr>
<h3>Enter country</h3>
 <input class="input-style" type="text" placeholder="Enter country" name="country" value="<%=rs.getString(10) %>" required>

<hr>
 <button class="button" type="submit" >Save<i class='far fa-arrow-alt-circle-right'></i></button>
<%
}
}
catch(Exception e){
	System.out.println(e);
	
}
%>
</form>

</body>
<br><br><br>
</html>