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
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
              <h1 class="mb-3">Cart</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    
 

<style>

* {
  box-sizing: border-box;
}
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container1 {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #db7337;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 50%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #f7f2e6;
  color:black;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}



/* Customize the label (the container) */
.container23 {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container23 input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container23:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container23 input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container23 input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container23 .checkmark:after {
  top: 9px;
  left: 9px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: white;
}
</style>

<div class="row">
  <div class="col-75">
    <div class="container1">
     <form action="Data" method="post">
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Aniket Sinha" value=${name}>
            <label for="email"><i class="fa fa-phone"></i> Phone</label>
            <input type="text" id="phone" name="phone" value="${numb}" readonly>
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="addr" placeholder="Eon Clusture C -Kharadi">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Pune">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="Pune">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="411014">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <div class="col-50">
              <label class="container23">COD Mode Of Payment
                <input type="radio" checked="checked" name="p1">
                <span class="checkmark"></span>
              </label>
              <label class="container23">Card Payment
                <input type="radio" name="p1">
                <span class="checkmark"></span>
              </label>
            </div>

            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Aniket Sinha" value=${name}>
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="0111-15102-8000-9544">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
             
              <div class="col-50" >
                <label for="order"><h2 id="name23">Order Number:</h2></label>
                <h3 name="order" id="order" value="val">Eat<span id="demo" ></span></h3>
                <input type="hidden" name="myField" id="myField" value="" />
                <script>
            var a;
                a=document.getElementById("demo").innerHTML = Math.floor(Math.random()*1000000);
                document.getElementById('myField').value = a;
                </script> 
              </div>
              

            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
           <h2>Total Amount: ${total}</h2>
        </label>
        <center><input type="submit" value="Continue to checkout" class="btn" ></center>
      </form>
    </div>
  </div>
 
</div>




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