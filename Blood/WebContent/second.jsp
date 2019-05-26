<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .navbar-nav li{
        padding-left: 35px;
        padding-right: 35px;
        height:80px;
        padding-top:21px;
       
    }
    
    
    
  body {
           margin: 0px 0px;
           font-family: 'Fugaz One', cursive;
           color:black;
       }
       .navbar-default .navbar-nav > li.dropdown:hover > a, 
       .navbar-default .navbar-nav > li.dropdown:hover > a:hover,
       .navbar-default .navbar-nav > li.dropdown:hover > a:focus {
          
           color:black;
       }
       li.dropdown:hover > .dropdown-menu {
           display: block;
       }
 
      
      
    
       
       .navbar
       {
      font-size:20px;
       
       color:white;
       }
       
       
       #navv li:hover
       {
       background-color:red;
       text-color:white;
       }
       
       #navv a:hover
       {
       background-color:red;
       color:white;
       }
       
       a
       {
       color:black;
       }
       
  </style>
  
</head>
<body>

    <nav class="navbar navbar-expand-md bg-light   " style="border-bottom:3px solid rgba(212, 84, 84, 0.856); border-top :none;">
        <a class="navbar-brand " href="#" style="text-decoration:none;color:black;">Logo</a>
        <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:black;" href="#">WebSiteName</a>
        </div>
        <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:rgba(212, 84, 84, 0.856); ">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
            <ul class="navbar-nav ">
                <li class="nav-item">
                    <a class="nav-link" style="text-decoration:none;color:black;"
                        href="#">Donate Blood</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="text-decoration:none;color:black;"
                        href="#">Get Blood</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="text-decoration:none;color:black;"
                        href="#">Donating Restriction</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" style="text-decoration:none;color:black;"> Page 1 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#" class="dropdown-item">Page 1-1    </a></li>
                      <li><label><a href="#" class="dropdown-item">Page 1-1</a></label></li>
                       <li><label><a href="#" class="dropdown-item">Page 1-1</a></label></li>
                    </ul>
                  </li>
                <li class=" nav-item dropdown" >
                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" style="text-decoration:none;color:black;" href="#">
                        <i class="fa fa-user-circle" style="font-size:20px;padding-right:12px;"></i>Profile </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item" href="#">
                                <i class="fa fa-sign-out" style="font-size:20px"></i>Logo Out</a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    




<div id="demo" class="carousel slide" data-ride="carousel" >

    <!-- Indicators -->
    
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
        
      </ul>
    <!-- The slideshow -->
    <div class="carousel-inner">
      <div class="carousel-item active">
       
        <!-- <img src="https://ichef.bbci.co.uk/news/660/media/images/79452000/jpg/_79452414_bloodtransfusion.jpg"  style=" width:100%; height:550px;" > -->
      <div class="cor-1" style="background-image:url(https://ichef.bbci.co.uk/news/660/media/images/79452000/jpg/_79452414_bloodtransfusion.jpg);width:100%; height:550px;background-position: center;background-repeat: no-repeat;background-size: cover;">
          <div class="row">
              <div class="col-sm-12 col-md-12 col-lg-12">
                    <h2 class="text-white text-center" style="margin-top:150px;">The best coffee maker you've ever found. She knows how to wow her clients
                            with a cup of fresh coffee.</h2>
              </div>
          </div>
      </div>
    </div>
      <div class="carousel-item">
        <!-- <img src="https://images.pexels.com/photos/297485/pexels-photo-297485.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"   style="background-color:#3d3d3d;width:100%; height:550px;"> -->
        <div class="cor-2" style="background-image:url(https://images.pexels.com/photos/297485/pexels-photo-297485.jpeg?auto=compress&cs=tinysrgb&h=650&w=940);width:100%; height:550px;background-position: center;background-repeat: no-repeat;background-size: cover;">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                      <h2 class="text-white text-center" style="margin-top:150px;">The best coffee maker you've ever found. She knows how to wow her clients
                              with a cup of fresh coffee.</h2>
                </div>
            </div> 
    </div>
     </div>
      <div class="carousel-item">
        <!-- <img src="https://www.healthline.com/hlcmsresource/images/Blood_Donation-1200x549-facebook.jpg" style="width:100%; height:550px;"> -->
        <div class="cor-3" style="background-image:url(https://www.healthline.com/hlcmsresource/images/Blood_Donation-1200x549-facebook.jpg);width:100%; height:550px;background-position: center;background-repeat: no-repeat;background-size: cover;">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                      <h2 class="text-white text-center" style="margin-top:150px;">The best coffee maker you've ever found. She knows how to wow her clients
                              with a cup of fresh coffee.</h2>
                </div>
            </div>  
    </div>
    </div>
      <div class="carousel-item">
        <!-- <img src="https://wallscover.com/images/blood-donation-2.jpg" style="width:100%; height:550px;"> -->
        <div class="cor-4" style="background-image:url(https://wallscover.com/images/blood-donation-2.jpg);width:100%; height:550px;background-position: center;background-repeat: no-repeat;background-size: cover;">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                      <h2 class="text-white text-center" style="margin-top:150px;">The best coffee maker you've ever found. She knows how to wow her clients
                              with a cup of fresh coffee.</h2>
                </div>
            </div>  
    </div>
    </div>
    </div>
    
    <!-- Left and right controls -->
    
    
  </div>
</body>
</html>
