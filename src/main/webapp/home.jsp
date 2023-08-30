<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body class="bg-dark">
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
	%>
	<h3 class="alert alert-success ">Product added successfully!</h3>
	
<% }
if("exist".equals(msg)){
	%>
<h3 class="alert alert-success">Product already exist in you cart! Quantity  increased!</h3>
	
<% }
if("invalid".equals(msg)){
	%>
<h3 class="alert alert-danger">Something went Wrong! Try again!</h3>
	
<% }

%>



<table class="table table-dark table-striped ">
        <thead>
          <tr >
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        
        <%
        try{
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where active='Yes'");
        while(rs.next()){
    
		%>
		
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%> </td>
            <td><a href=" addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
          
      	<%}
        }
        catch (Exception e){
        	System.out.println(e);
        }
        %>

        </tbody>
      </table>
      <br>
      <br>
      <br>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>