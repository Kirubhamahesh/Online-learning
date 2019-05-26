<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.Blood.util.DBUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    #navlist #anchar b:hover{
color:#c8271e;
}




tr {
	border-bottom: 2px solid black;
}

tr:hover {
	
}

select {
	border: 1.8px solid white;
}

input {
	border: 1.8px solid white;
	color: white;
}

input:hover {
	border: 4px solid lightblue;
}

select:hover {
	border: 4px solid lightblue;
}

option {
	background-color: white;
	color: black;
	width: 300px;
}
</style>

</head>
<body style="background-image: linear-gradient(to right, #083850 , #20a0b8);">

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




		<div class="container-fluid"
			style="padding: 0px; margin: 0px; position: absolute;">

			<div class="row" style="padding: 0px; margin: 0px;">
				<div class="col-sm-4" id="sticky-sidebar">

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-0.5"></div>

							<div class="col-sm-11">
								<br> <br>
								

										<%
											try {
												String location = (String) session.getAttribute("location");
												System.out.println(location);
												// String location="salem";
												// System.out.print("kjsdhksdn111");
												Connection con = DBUtil.getDBConnection();

												String sql = "select username from Account where location=?";
												PreparedStatement st1 = con.prepareStatement(sql);
												st1.setString(1, location);

												ResultSet resultSet = st1.executeQuery();
												
												if(resultSet.equals(null))
														{  %>
													<center><h2 style="color:white;" class="align-item-center">You are the first donar in your city</h2></center>  
													
													 <%
															  
														}
												else
												{    %>
												
										
										<div class="table-responsive"
									>
									 <table class="table table-striped" style="background-color:white">
										 <thead class="thead-dark">
											<th colspan="2"
												style=" color: white;"><center>Friends
													in your city</center></th>
										</thead>
										<% 
										while (resultSet.next()) {
										%>
										<tr>
											<th style="color: black; background-color:#dcdde1 "><center><%=resultSet.getString(1)%></center></th>

											

										</tr>
										<%
											}
												}
											} catch (Exception e) {
												e.printStackTrace();
											}
										%>
									</table>
								</div>
							</div>
							<div class="col-sm-0.5"></div>
						</div>
					</div>
				</div>

				<div class="col-sm-8"
					style="padding: 0px; margin: 0px; background-repeat: no-repeat; background-size: cover;">






					<div class="container" style="">

						<div class="row">
							<div class="col-sm-3"></div>

							<div class="col-sm-6" style="background: rgba(0, 0, 0, .1);">
								<div style="">
									<form class="form-outline" action="Donar" method="post">

										<br>
										<h4 style="color: white;">Donar Registration</h4>
										
										
										<div class="form">
											<label for="pwd" style="font-size: 20px; color: white;">Username</label>
											<input type="text" class="form-control" id="pwd"
												name="username" style="color: black;" required>
										</div>
                                       <%
										if(session.getAttribute("errormessge") != null)
										{
											%>
											<br>
											<span><b style="color:red"><%= session.getAttribute("errormessge") %></b></span> 
											
											<%
											
										}
										%>
										<div class="form-group">
											<label for="pwd" style="color: white; font-size: 20px;">Contact:</label>
											<input type="text" class="form-control" id="pwd"
												name="contact" style="color: black;" required>
										</div>

										<div class="form-group">
											<label for="pwd" style="color: white; font-size: 20px;">Address:</label>
											<input type="text" class="form-control" id="pwd"
												name="address" style="color: black;" required>
										</div>

										 <div class="form-group">
      <label for="sel1" style="color: white; font-size: 20px;">District:</label>
      <select class="form-control" id="sel1" name="location">
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
   
										<div class="form-group">
											<label for="pwd" style="color: white; font-size: 20px;">Age:</label>
											<input type="text" class="form-control" id="pwd" name="age"
												style="color: black;" required>
										</div>

										<label for="sel1" style="color: white; font-size: 20px;">Blood
											type:</label> <select class="form-control" id="sel1" name="bloodtype"
											style="color: black;" required>
											<option value="B positive">B Positive</option>
											<option value="A positive">A Positive</option>
											<option value="B Negative">B Negative</option>
											<option value="A Negative">A Negative</option>
											<option value="AB positive">AB Positive</option>
											<option value="AB Negative">AB Negative</option>
											<option value="O positive">O Positive</option>
											<option value="O Negative">O Negative</option>
										</select><br> 
											<button type="submit" value="submit" class="btn btn-primary">Register</button>
										
</form>
								</div>

								<div class="col-sm-3"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	
	
		
</body>
</html>