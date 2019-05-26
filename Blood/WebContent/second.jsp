<!DOCTYPE html>
<html lang="en">
<head>
   <title style="font-family: 'Merienda', cursive; letter-spacing:3px">lifeline</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="icon" href="1.png" type="image/x-icon">
 <link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">
  <style>
  .toggle{
    width: 25px;
    height: 3px;
    background-color: white;
    margin: 6px 0;
}
    #navlist #anchar b:hover{
color:#c8271e;
}

    /*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .carousel-item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .3;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
 .hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: gray;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h3 {
    font-size: 4em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .carousel-item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .carousel-item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .3;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(https://nhsbtdbe.blob.core.windows.net/umbraco-assets-corp/11829/fb-og-giveblood.png); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://res.cloudinary.com/jpress/image/fetch/w_700,f_auto,ar_3:2,q_auto:low,c_fill/if_h_lte_200,c_mfit,h_201/https://www.thestar.co.uk/webimage/1.9528474.1547053641!/image/image.jpg);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://img.freepik.com/free-photo/blood-donation-picture_41050-970.jpg?size=626&ext=jpg);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h3 { font-size: 3em; }    
}
      
  </style>
  <script>
    <!--
    //edit this message to say what you want
    var message = "Function Disabled";

    function clickIE() {
        if (document.all) {
            alert(message);
            return false;
        }
    }
    function clickNS(e) {
        if (document.layers || (document.getElementById && !document.all)) {
            if (e.which == 2 || e.which == 3) {
                alert(message);
                return false;
            }
        }
    }
    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN);
        document.onmousedown = clickNS;
    }
    else {
        document.onmouseup = clickNS;
        document.oncontextmenu = clickIE;
    }

    document.oncontextmenu = new Function("return false")
    // -->
</script>
</head>
<body style="background-color: black">

    <nav class="navbar navbar-expand-md    " style="background-color:#1a2930">
   
    <a class="navbar-brand " href="#" style="text-decoration:none;color:white;"><i class="fas fa-tint" style="color:red; font-size:30px;"></i></a>
    <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="First.jsp">lifeline</a>
        </div>
    <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:#c8271e; ">
        <div class="toggle"></div>
             <div class="toggle"></div>
              <div class="toggle"></div>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
        <ul class="navbar-nav" id="navlist">
            <li class="nav-item" >
                <a class="nav-link" id="anchar" style="text-decoration:none;color:white"
                    href="page1.jsp"><b>Donate Blood</b></a>
            </li>
           
            <li class="nav-item" >
                <a class="nav-link" style="text-decoration:none;color:white" id="anchar"
                    href="Three.jsp"><b>Get Blood</b></a>
            </li>
            
            <%  
                            if(session.getAttribute("profile")!=null)
                            { %>
                            <li class=" nav-item dropdown" style="padding-left:5px;">
                <a class="dropdown-toggle nav-link" data-toggle="dropdown" style="text-decoration:none;color:white;" href="#">
                    <i class="fa fa-user-circle" style="font-size:20px;padding-right:5px"></i><b><%=session.getAttribute("profile")%> </b></a>
                <ul class="dropdown-menu dropdown-menu-right">
                   <li>
                   
                        <a class="dropdown-item" href="changepassword.jsp"style="">
                          <span >ChangePassword</span> </a>
                    </li>
                  
                  
                    <li>
                        <a class="dropdown-item" href="First.jsp"style="color:">
                           <span >Log Out</span> </a>
                    </li>
                   
                </ul>
            </li> <%
                            }
                            %>
             
            
            
            
        </ul>
    </div>
</nav>




<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
                <!-- Overlay -->
                <div class="overlay"></div>
              
                <!-- Indicators -->
               
                
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="carousel-item slides active">
                    <div class="slide-1"></div>
                    <div class="hero" style=>
                      <hgroup>
                          <h3 style="color:white;text-shadow: 4px 4px 8px black;">A UNIT OF BLOOD SAVED MY LIFE,WAS IT YOURS</h3>        
                          
                      </hgroup>
                      
                    </div>
                  </div>
                  <div class="carousel-item slides">
                    <div class="slide-2"></div>
                    <div class="hero">        
                      <hgroup>
                                  
                          <h3 style="color:white;text-shadow: 4px 4px 8px black;">BE A DONAR AND BE THE HERO IN THE LIFE</h3>
                      </hgroup>       
                     
                    </div>
                  </div>
                  <div class="carousel-item slides">
                    <div class="slide-3"></div>
                    <div class="hero">        
                      <hgroup>
                          <h3 style="color:white;text-shadow: 4px 4px 8px black;">BLOOD DONATION IS THE REAL ACT OF HUMANITY</h3>
                      </hgroup>
                      
                    </div>
                  </div>
                </div> 
              </div>
              <div class="container-fluid" style="background-color: black;margin:0px;padding:0px;">

        <div class="row"  style="margin:0px;padding:0px;">

            <div class="col-sm-1" style="margin:0px;padding:0px;">

            </div>
            
             <div class="col-sm-5" style="margin:0px;padding:0px;">

                <form action="Account" method="post">
                <input type="hidden" name="command" value="message">
                    <div class="form-group" style="color:white;"><br>
                            <i class="fa fa-comments-o" style="font-size:23px"></i>   <label  style="font-size:22px; ">Message</label><br>
                               <div class="container">
                      <textarea class="form-control" rows="3" id="comment" name="message"></textarea>
                  </div>  </div>
                  <center> <button type="submit" class="btn btn-primary">Send</button></center> 
                  </form>
             </div>

             <div class="col-sm-2" style="margin:0px;padding:0px;">
                 
                </div>


             <div class="col-sm-4" style="margin:0px;padding:0px;">

                 <div class="container" style="color: white;">
                       
                   <br>
                    <span>   <i class="fas fa-tint" style="color:red; font-size:20px;"></i>   </span>
                  <label   style="font-size:25px; margin-left:12px;">lifeline.tk</label><br>

                   <span><i class="fa fa-envelope" aria-hidden="true"style="font-size:23px; color:blue"></i>    </span>
                  <label   style="font-size:23px; margin-left:12px;">lifeline3003@gmail.com</label><br>

                  <i style="font-size:36px;  color:blue" class="fa fa-mobile" aria-hidden="true"></i>
                  <label  style="font-size:19px; margin-left:12px;">9500573661,9500731232</label><br>

                 </div>
             </div>

             

        </div>


       
    </div>
              
</body>
</html>
