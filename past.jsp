<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Order your food- Eat away</title>
      <link rel=" icon" href="images/favicon.png" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>

      <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
          <div class="container">
              <a class="navbar-brand" href="index.html"><img src="images/4798371.png" style="width:180px; height:80px" /></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="oi oi-menu"></span> Menu
              </button>
              <div class="collapse navbar-collapse" id="ftco-nav">
                  <ul class="navbar-nav ml-auto">
                     <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="specialties.html" class="nav-link">Specialties</a></li>            
            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
            <li class="nav-item"><a  class="nav-link">Hello ${name}</a></li>
        
  
            
                  </ul>
              </div>
          </div>
      </nav>
      <!-- END nav -->

      <section class="home-slider owl-carousel">
          <div class="slider-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
              <div class="overlay"></div>
              <div class="container">
                  <div class="row slider-text align-items-center justify-content-center">
                      <div class="col-md-10 col-sm-12 ftco-animate text-center">
                          <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Restaurants</span></p>
                          <h1 class="mb-3">Discover Our Exclusive Restaurants</h1>
                      </div>
                  </div>
              </div>
          </div>
      </section>
<br><br><br><br><br><br><br><br>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  
     url="jdbc:oracle:thin:@localhost:1521:XE"  
     user="system"  password="123456789"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from order1 where phone=${numb}
</sql:query>  
   
<table border="2" width="100%">  
<tr>  
<th>Name</th>  
<th>Phone</th>  
<th>Total-Bill</th> 
<th>Address</th>  
<th>Order-no</th>  
 

</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.name}"/></td>  
<td><c:out value="${table.phone}"/></td>  
<td><c:out value="${table.bill}"/></td>  
<td><c:out value="${table.address}"/></td>  
<td><c:out value="${table.orderno}"/></td>  
</tr>  

</c:forEach>  

</table>  




<br><br><br><br><br><br><br><br>

      <style>
      
      
      th {
background-color: #588c7e;
color: white;
}

tr:nth-child(even) {background-color: #E9E1DD }
      
      </style>
      
      
      
      <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
          <div class="row mb-5">
              <div class="col-md">
                  <div class="ftco-footer-widget mb-4">
                      <h2 class="ftco-heading-2">EAT AWAY</h2>
                      <p>We give it our best and are open to the outcomes. We look to raise the bar of performance consistently and reward merit disproportionately.</p>
                      <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
                          <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                          <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                          <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                      </ul>
                  </div>
              </div>
              
              <div class="col-md">
                  <div class="ftco-footer-widget mb-4">
                      <h2 class="ftco-heading-2">Contact Information</h2>
                      <ul class="list-unstyled">
                          <li><a href="#" class="py-2 d-block">
   
    Mphasis Ltd. EON free Zone. Cluster C, Kharadi Knowledge Park SEZ Plot No.1, Survey No.77, MIDC Rd, Kharadi, Pune, Maharashtra 411014
</a></li>
                          <li><a href="#" class="py-2 d-block">+ 1235 2355 98</a></li>
                          <li><a href="#" class="py-2 d-block">eataway@tummy.com</a></li>
                          <li><a href="#" class="py-2 d-block">whistleblower@mphasis.com </a></li>
                      </ul>
                  </div>
              </div>
              <div class="col-md">
                  <div class="ftco-footer-widget mb-4">
                      <h2 class="ftco-heading-2">Newsletter</h2>
                      <p>Far far away, behind the word mountains, far from the countries.</p>
                      <form action="#" class="subscribe-form">
                          <div class="form-group">
                              <span class="icon icon-paper-plane"></span>
                              <input type="text" class="form-control" placeholder="Subscribe">
                          </div>
                      </form>
                  </div>
              </div>
          </div>
        <div class="row">
          <div class="col-md-12 text-center">

            
          </div>
        </div>
      </div>
    </footer>
      

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>
      