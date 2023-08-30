<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" /><script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky navbar container-fluid bg-danger" >
    <%
    String email=session.getAttribute("email").toString();
    
    %>
           <h2 style="text-align:center;">Online shopping by Mukesh Ghorse</h2>
            <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Home<i class="fa fa-institution "></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp" >Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" placeholder="Search" name="search"  >
             <button type="submit" ><i class="fa fa-search"></i></button>
             </form>
               
               
             
            </div>
          </div>
           <br>
           <!--table-->
           <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
