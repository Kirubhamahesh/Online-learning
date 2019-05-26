<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title style="font-family: 'Merienda', cursive; letter-spacing:3px">lifeline</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="1.png" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">
  <style>
  .toggle{
    width: 25px;
    height: 3px;
    background-color: white;
    margin: 6px 0;
}
       #navv #anchar b:hover
       {
       color:red;
       }
      
       #navv li a {
           padding:10px 20px;
          
       } 
     
      
    #map{
      height:400px;
      width:100%;
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

<% String location=request.getParameter("location");
String type=request.getParameter("type");

%>

<body style="background-image: linear-gradient(to right, #083850 , #20a0b8);">

<nav class="navbar navbar-expand-md    " style="background-color:#1a2930">
   
    <a class="navbar-brand " href="#" style="text-decoration:none;color:white;"><i class="fas fa-tint" style="color:red; font-size:30px;"></i></a>
     <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="First.jsp">lifeline</a>
        </div>
    <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:rgba(212, 84, 84, 0.856); ">
         <div class="toggle"></div>
             <div class="toggle"></div>
              <div class="toggle"></div>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
        <ul class="navbar-nav" id="navv">
            <li class="nav-item" id="list" >
                <a class="nav-link" id="anchar" style="text-decoration:none;color:white"
                    href="page1.jsp"><b>Donate Blood</b></a>
            </li>
           
            <li class="nav-item" id="list">
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
<br>
<br>
<div class="first">
<div class="container">
<div class="row">

<div class="col-sm-12">

<label style="color:white">If blood not available in your city, use the map and try  nearby cities.</label>
<div id="map"></div>
</div>
</div>
<br>
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<form class="form-outline" action="Four.jsp" method="get">
      
      
           
           
            <label for="sel1" style="font-size:20px;color: white;"">Blood type:</label>
            
             <div class="input-group mb-3">
        
         
            
      <select class="form-control"  name="type" style="color:">
        <option value="B Positive">B Positive</option>
         <option value="B Negative">B Negative</option>
  <option value="A Positive" >A Positive</option>
  <option value="A Negative" >A Negative</option>
 
  <option value="AB Positive">AB Positive</option>
  <option value="AB Negative">AB Negative</option>
  <option value="O Positive">O Positive</option>
  <option value="O Negative">O Negative</option>
  
      </select>
    
          
          
        </div>
        
        
         <label for="Location" style="font-size:20px;color: white;""> District</label>
        <div class="input-group mb-3">
        
        										
      
      <select class="form-control"  name="location">
        <option value="Ariyalur">Ariyalur</option>
        <option value="Chennai">Chennai</option>
        <option value="Cuddalore">Cuddalore</option>
        <option value="Coimbatore">Coimbatore</option>
        <option value="Dharmapuri">Dharmapuri</option>
        <option value="Dindigul">Dindigul</option>
        <option value="Erode">Erode</option>
        <option value="Kallakurichi">Kallakurichi</option>
        <option value="Kanchipuram">Kanchipuram</option>

        <option value="Kanniyakumari">Kanniyakumari</option>
        <option value="Karur">Karur</option>
        <option value="Krishnagiri">Krishnagiri</option>
        <option value="Madurai">Madurai</option>
        <option value="Nagapattinam">Nagapattinam</option>
        <option value="Namakkal">Namakkal</option>
        <option value="Nilgiris">Nilgiris</option>
        <option value="Perambalur">Perambalur</option>
        <option value="Pudukkottai">Pudukkottai</option>
        <option value="Ramanathapuram">Ramanathapuram</option>
        <option value="Salem">Salem</option>
        <option value="Sivagangai">Sivagangai</option>

        <option value="Thanjavur">Thanjavur</option>
       <option value="Theni">Theni</option>
       <option value="Thoothukudi">Thoothukudi</option>
       <option value="Tiruchirappalli">Tiruchirappalli</option>
       <option value="Tirunelveli">Tirunelveli</option>
       <option value="Tiruppur">Tiruppur</option>
       <option value="Tiruvallur">Tiruvallur</option>
       <option value="Tiruvannamalai">Tiruvannamalai</option>
       <option value="Tiruvarur">Tiruvarur</option>
       <option value="Vellore">Vellore</option>
       <option value="Viluppuram">Viluppuram</option>
       <option value="Virudhunagar">Virudhunagar</option>
       

      </select>
     
   
          </div>
        <a href="Four.jsp" style="text-decoration: none; color: black"><button type="submit" class="btn btn-primary">Submit</button></a>
      </form>
      

</div>
<div class="col-sm-3"></div>
</div>
</div>
</div>

<script>
    function initMap(){
      // Map options
      var latitude=<%= session.getAttribute("lat")%>
      var longitude=<%= session.getAttribute("lag")%>
      var options = {
        zoom:12,
        center:{lat:latitude,lng:longitude}
      }

      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);

      // Listen for click on map
     

      // Array of markers
      var markers = [
        {
        	  
          coords:{lat:latitude,lng:longitude},
         
        },
        
        
      ];

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }
        addMarker({
        	
          coords:{lat:latitude,lng:longitude}
         })
     
      // Add Marker Function
      function addMarker(props){
        var marker = new google.maps.Marker({
          position:props.coords,
          map:map,
          //icon:props.iconImage
        });

        // Check for customicon
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);
        }

        // Check content
        if(props.content){
          var infoWindow = new google.maps.InfoWindow({
            content:props.content
          });

          marker.addListener('click', function(){
            infoWindow.open(map, marker);
          });
        }
      }
    }
  </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnEpS9oj5Wt_52T1kMLYwp0_veH_AuWyo

&callback=initMap">
    </script>
</body>

</body>
</html>