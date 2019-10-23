<!DOCTYPE html>
<html lang="en">
  <head>
    <title>EatAway-MyCart</title>
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
            <li class="nav-item"><a href="index.html" class="nav-link" value="<% session.invalidate(); %>"><i class="fa fa-sign-out" aria-hidden="true">Logout</i></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/food.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-10 col-sm-12 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Delivery</span></p>
              <h1 class="mb-3">Delivery</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    
 <div style="background:url(images/scooter-running.gif) no-repeat;">
 
 <h4 align=center > Out for Delivery </h4>
 <span style="float:right"><a class="btn btn-primary btn-outline-primary p-3" onclick="document.getElementById('id01').style.display='block'"><h1>Cancel Order</h1></a></span>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 
 </div>



  
  <style>


#open-button{
cursor:pointer;
}

/* Full-width input fields */
input[type=text], input[type=number] {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}
.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 80%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}


/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
    
     
    <div id="id01" class="modal">
  
  <form class="modal-content animate" action="Cancel" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/profile.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
     <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Name" name="usrnm">

      <i class="fa fa-address-card icon"></i>
    <input class="input-field" type="text" placeholder="Order No" name="order">
        
      <button type="submit">Submit</button>
      
    </div>

    
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
    








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