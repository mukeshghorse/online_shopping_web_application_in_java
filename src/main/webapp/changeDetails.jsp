<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Change Details</title>
<style>

{width:70%;}</style>
</head>
<body>
<%

try{
	Connection con =ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs =st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){
		
		
	
%>

<h3>Name: <%= rs.getString(1) %> </h3>
<hr>
 <h3>Email:<%= rs.getString(2) %> </h3>
 <hr>
 <h3>Mobile Number: <%= rs.getString(3) %></h3>
 <hr>
<h3>Security Question: <%= rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
      
<%
	}
}
catch(Exception e){
	System.out.println(e);
}

%>
</body>
</html>