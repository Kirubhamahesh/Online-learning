<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="com.Blood.util.DBUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="1.png" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">
   <title style="font-family: 'Merienda', cursive; letter-spacing:3px">lifeline</title>
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
    }

   </style>
 
</head>

<% String location=request.getParameter("location");
String type=request.getParameter("type");

System.out.println(location);
System.out.println(type);

%>
</head>
 
<body  >



<div style=" background-image: linear-gradient(to right, #083850 , #20a0b8);"   id="demo1"  >

<nav class="navbar navbar-expand-md   " style="background-color:#1a2930">
   
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
<div class="first" >
 <div class="container-fluid">
  <div class="row ">
 
    <div class="col-sm-4 col-md-4 col-lg-4 col-pixel-width-100"style="padding:0px; margin0px; " >
     
     <video autoplay muted loop id="myVideo" style="width:100%;height:660px; object-fit: fill;">
      <source src="bv.mp4"type="video/mp4">
</video>
   
    </div>
    
    
    
    <div class="col-sm-8" style="width:100%;height:660px; overflow:scroll; ">
    
   
   
    
<%


    try
    {
    	 
       
    Connection con=DBUtil.getDBConnection();
   
    String sql ="select * from donarinfo where location=? and bloodtype=? ";
    PreparedStatement st1 = con.prepareStatement(sql);
	st1.setString(1,location);
	st1.setString(2,type);
    ResultSet resultSet = st1.executeQuery();
    
    
    	
    	%>
    	
    	

    	
    	
    	
    	<div class="container">
    	<br>
    	<% 
    while(resultSet.next()){
    	%>
    	
    	<label style="padding:7px;">
    	
    	<div class="card" style="width:300px; background-color:#ecf0f1 ">
   
    <div class="card-body">

       

       <h4 ><img src=" https://png.pngtree.com/svg/20170803/human_customer_107652.png" style="width:50px; height:50px">
    
                    <%=resultSet.getString(1) %></h4>


                    <i class="fas fa-map-marker-alt" style="padding-left:10px; color:blue"></i>
                   
        
        <label  style="margin-left:10px;"class="card-text"><%=resultSet.getString(3) %></label>
                   <br>
                   <label style="padding-left:10px;" class="card-text"><%=resultSet.getString(6) %></label><br>
                    <button type="submit" class="btn btn-success">
						<a href="tel:<%=resultSet.getString(2) %>" style="color:white;text-decoration:none"><i class="fa fa-commenting" style="padding-right:5px"></i>Call</a>
					</button>
					<button type="submit" class="btn btn-success">
						<a href="sms:<%=resultSet.getString(2) %>" style="color:white;text-decoration:none"><i class="fa fa-commenting" style="padding-right:5px"></i>Message</a>
					</button>
                             
                   
            </div>


        </div>
        
         </label>
         
         <%

    }
    	%>
      
    </div>
  <br>
  
   
      
      <%

    
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }

    %>
      
   
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
                      <textarea style="padding:12px 50px;" class="form-control" rows="3" id="comment" name="message"></textarea>
                   </div>  </div>
                    <center><button type="submit" class="btn btn-primary">Send</button></center>
                  </form>
             </div>

             <div class="col-sm-2" style="margin:0px;padding:0px;">
                 
                </div>


            <div class="col-sm-4" style="margin:0px;padding:0px;">

                 <div class="container" style="color: white;">
                       
                   <br>
                    <span>   <i class="fas fa-tint" style="color:red; font-size:20px;"></i>   </span>
                  <label   style="font-size:25px; margin-left:12px;">lifeline.tk</label><br>

                   <span><i class="fa fa-envelope" aria-hidden="true"style="font-size:23px; color:blue"></i>   </span>
                  <label   style="font-size:23px; margin-left:12px;">lifeline3003@gmail.com</label><br>

                  <i style="font-size:36px;  color:blue" class="fa fa-mobile" aria-hidden="true"></i>
                  <label  style="font-size:19px; margin-left:12px;">9500573661,9500731232</label><br>

                 </div>
             </div>
             

        </div>


              
</div>
   

</body>
</html>