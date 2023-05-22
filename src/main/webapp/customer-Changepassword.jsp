<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<%
Customer c = null;
if(session.getAttribute("data")!=null){
	c = (Customer)session.getAttribute("data");
}
else{
	response.sendRedirect("login.jsp");
}
%>



    <!-- Topbar Start -->
    <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
            </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
   
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    
                        <div class="navbar-nav ml-auto py-0">
                           <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><%=c.getName() %></a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="customer-profile.jsp" class="dropdown-item">Profile</a>
                                    <a href="custoomer-Changepassword.jsp" class="dropdown-item">Change Password</a>
                                    <a href="customer-logout.jsp" class="dropdown-item">Logout</a>
                                </div>
                        </div>
                    </div>
                </nav>
                
                </div>
            </div>
        </div>
    </div>
   
<!-- edit s -->
<div class="col-md-4 mb-5">
<%String msg = (String)request.getAttribute("msg");%>
			<%if(msg!=null){ %>
				<%out.print(msg); %>
			<%} %>
			<%String msg1 = (String)request.getAttribute("msg1");%>
			<%if(msg1!=null){ %>
				<%out.print(msg1); %>
			<%} %>
                        <h5 class="font-weight-bold text-dark mb-4">Customer Change Password</h5>
                        <form action="CustomerController" method="post">
                            <div class="form-group">
                                <input type="hidden" name="id" class="form-control border-0 py-4" required="required" value="<%=c.getId() %>" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="op" class="form-control border-0 py-4" placeholder="Old Password"
                                    required="" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="np" class="form-control border-0 py-4" placeholder="New Password"
                                    required="" />
                            </div>
                            <div class="form-group">
                                <input type="password" name="cnp" class="form-control border-0 py-4" placeholder="Confirm New Password"
                                    required=""  />
                            </div>
                           
                           <div>
                                <button class="btn btn-primary btn-block border-0 py-3" value="Change Password" name="action" type="submit">Change Password</button>
                                
                            </div>
                           
                        </form>
                    </div>
<!-- edit e -->
    <!-- Footer Start -->
   
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                    &copy; <a class="text-dark font-weight-semi-bold" href="#">EShopper</a>. All Rights Reserved. Designed
                    by
                    <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a><br>
                   
                </p>
            </div>
           
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>