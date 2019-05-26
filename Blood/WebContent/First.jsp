<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Blood.bean.*"%>
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
    <link rel="icon" href="1.png" type="image/x-icon" sizes="64x64">
     <link rel="stylesheet" href="style.css"> 
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
    .two {
   text-align: center;
}
.toggle{
    width: 25px;
    height: 3px;
    background-color: white;
    margin: 6px 0;
}
.form1 input {
    background: transparent;
    box-sizing: border-box;
    box-shadow: none;
    outline: none;
    border: none;
    border-bottom: 1px solid black;
    border-top: none;
    margin: 0;
}



.form1 label {
    position: absolute;
    top: 20px;
    left: 20px;
    pointer-events: none;
    transition: .5s;
}

.form1 input:focus~label,
.form1 input:valid~label {
    top: -1px;
    font-size: 12px;
    color: red;
    /* border-bottom-color: red; */
}
.form1 input:valid {
    border-bottom-color: red;
}




.form1 input:focus {
    border-bottom: 1px solid rgba(212, 84, 84, 0.856);
}

@media screen and (max-width: 576px) {
    .form1 input {
        height: 30px;
    margin-bottom: 15px;
    }
    .form1 label {
    position: absolute;
    top: 8px;
    left: 20px;
    pointer-events: none;
    transition: .5s;
}
    
   .form1 input:focus~label,
.form1 input:valid~label {
    top: -12px;
    font-size: 12px;
    color: red;
    /* border-bottom-color: red; */
}
}


.form2 input {
    background: transparent;
    box-sizing: border-box;
    box-shadow: none;
    outline: none;
    border: none;
    border-bottom: 1px solid black;
    border-top: none;
    margin: 0;
}



.form2 label {
    position: absolute;
    top: px;
    left: 20px;
    pointer-events: none;
    transition: .5s;
}

.form2 input:focus~label,
.form2 input:valid~label {
    top: -15px;
    font-size: 12px;
    color: red;
    /* border-bottom-color: red; */
}
.form2 input:valid {
    border-bottom-color: red;
}




.form2 input:focus {
    border-bottom: 1px solid rgba(212, 84, 84, 0.856);
}

@media screen and (max-width: 576px) {
    .form2 input {
        height: 30px;
    margin-bottom: 15px;
    }
}

@media screen and (max-width: 576px) {
    #typing  {
    top:40%;
        left:10%;
    }
    #particles-js
    {
    height:100%;
    }
    
}
#navlist #anchar b:hover{
color:#c8271e;
}

    </style>
</head>

<body>


    <nav class="navbar navbar-expand-md   " style="border-bottom:  ; background-color:#1a2930">
        <a class="navbar-brand " href="#" style="text-decoration:none;color:white"><i class="fas fa-tint" style="color:red; font-size:30px;"></i></a>
        <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="First.jsp">lifeline</a>
        </div>
        <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:#c8271e">
            <div class="toggle"></div>
             <div class="toggle"></div>
              <div class="toggle"></div>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
            <ul class="navbar-nav " id="navlist">
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal"id="anchar" style="text-decoration:none;color:white;"
                        href="#"><b>Sign UP</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal1" id="anchar"style="text-decoration:none;color:white"
                        href="#"><b>Login</b></a>
                </li>
                
            </ul>
        </div>
    </nav>
  
    <!-- The Modal -->

    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f); color:white">
                   
                    <h5 class="modal-title " style="font-family: 'Merienda', cursive; letter-spacing:1px;">lifeline</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <h3 class="text-center">signup</h3>
                
               <center> <p style="color:red"><%
            		   if(session!=null)
                       {
                            if(session.getAttribute("error")!=null)
                            { %>
                            	<%=session.getAttribute("error")%>
                          <% session.setAttribute("error", null);}}
                            %> </p></center>
                <!-- Modal body -->
                
                <div class="modal-body">
                    <div class="text-center form1">
                        <form action="Account" method="post">
                        <input type="hidden" name="command" value="signup">
                            <div class="row">
                                <div class="input-group col-sm-6">
                                    <input type="text" id="firstname" name="firstname" style="width:100%;" required>
                                    <label class="control-label" for="firstname">First Name</label>
                                </div>
                                <br>
                                <br>

                                <div class="input-group col-sm-6">
                                    <input type="text" id="lastname" name="lastname" style="width:100%;" required>
                                    <label class="control-label" for="lastname">Last Name</label>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="input-group col-sm-6">
                                    <input type="text" id="email" name="email" style="width:100%;" required>
                                    <label class="control-label" for="email">Email Id</label>
                                </div>
                                <br>
                                <br>
                                 <div class="input-group col-sm-6">
                                    <input type="text" id="location" name="location" style="width:100%;" required>
                                   <label class="control-label" for="location">District</label>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-sm-6 input-group">
                                    <input type="password" id="password" name="password" style="width:100%;" required>
                                    <label class="control-label" for="password">Password</label>
                                </div>
                                <br>
                                <br>

                                <div class="col-sm-6 input-group">
                                    <input type="password" id="retypepassword" name="retypepassword" style="width:100%;" required>
                                    <label class="control-label" for="retypepassword">Re-typepassword</label>
                                </div>
                            </div>
                            <br>
						
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <button class="btn btn-block " type="submit" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);color:white;">submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
                
            </div>
        </div>
    </div>
                




     <div class="modal" id="myModal1">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);color:white;">
                   
                   <h5 style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="#">lifeline</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <h3 class="text-center">Login</h3>
                
                <center><p style="color:red"> <%
                if(session!=null)
                {
                            if(session.getAttribute("errormg")!=null)
                            { %>
                            	<%=session.getAttribute("errormg")%>
                          <% session.setAttribute("errormg", null);  }}
                            %></p></center>
                            
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="text-center form2">
                        <form action="Account" method="post">
                        	<input type="hidden" name="command" value="login">
                           
                            
                            <div class="row">
                                <div class="input-group col-sm-12">
                                    <input type="text" id="username" name="username" style="width:100%;" required>
                                    <label class="control-label" for="username">Username(*First Name)</label>
                                </div>
                               
                            </div>
                             <br>
                               
                            <div class="row">
                                <div class="col-sm-12 input-group">
                                    <input type="password" id="password" name="password" style="width:100%;" required>
                                    <label class="control-label" for="password">Password</label>
                                </div>
                                

                              
                            </div>
                           
						 <br>
                               
                            <div class="row">
                                <div class="col-sm-12 input-group">
                                 <a data-toggle="modal" data-target="#myModal2" id="anchar" style="text-decoration:none;"
                        href="#">Forget Password?</a>
                                   
                                </div>
                                

                              
                            </div>
                           
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <button class="btn btn-block " type="submit" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);color:white;">submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
                
            </div>
        </div>
    </div>
                

  <div class="modal" id="myModal2">
        <div class="modal-dialog">
            <div class="modal-content">
	
                <!-- Modal Header -->
                <div class="modal-header" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);color:white;">
                   
                   <h5 class="navbar-brand " style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="#">lifeline</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <h3 class="text-center">Change Password</h3>
                
                <center><p style="color:red"> <%
                if(session!=null)
                {
                            if(session.getAttribute("errormsg")!=null)
                            { %>
                            	<%=session.getAttribute("errormsg")%>
                          <% session.setAttribute("errormsg", null);  }}
                            %></p></center>
                                                        
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="text-center form2">
                        <form action="Account" method="post">
                        	<input type="hidden" name="command" value="forgetpassword">
                            <div class="row">
                                <div class="input-group col-sm-12">
                                    <input type="text" id=email" name="username" style="width:100%;" required>
                                    <label class="control-label" for="email">Username</label>
                                </div>
                               
                            </div>
                             <br>
                            <br>
                            <div class="row">
                                <div class="input-group col-sm-12">
                                    <input type="mail" id=email" name="email" style="width:100%;" required>
                                    <label class="control-label" for="email">Email-Id</label>
                                </div>
                               
                            </div>
                             <br>
                           
                                

                              
                            </div>
						
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <button class="btn btn-block " type="submit" style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);color:white;">submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
                
            </div>
        </div>
    </div>
                
        
        <div id="particles-js"style="background-image: linear-gradient(to top, #c0392b, #c43125, #c8271e, #cb1a17, #cf000f);" >

		 <div class="container-fluid" style="padding:0px;margin:0px;">
            <div class="two" id="typing">
            
                <div class="row" style="padding:0px;margin:0px;">
                    <div class="col-sm-12 text-center"  >
                            <h1 STYLE="color:white; "> 
                                    <a href="" class="typewrite  " data-period="2000" style="color:white; text-align:center; text-decoration: none;" data-type='["Tears of mother cannot", "save her child ","but your blood can","Give blood for those","who give life" ]' >
                                      <span class="wrap"></span>
                                    </a>
                                  </h1>
                    </div>
                    
                </div>
            </div>
        </div>
      
        </div>
        
        
        <script src="particles.js"></script>
<script src="app.js"></script>

<!-- stats.js -->
<script src="stats.js"></script>
        
        <script>
            
          
            //typed letter
            var TxtType = function(el, toRotate, period) {
            this.toRotate = toRotate;
            this.el = el;
            this.loopNum = 0;
            this.period = parseInt(period, 10) || 2000;
            this.txt = '';
            this.tick();
            this.isDeleting = false;
        };
    
        TxtType.prototype.tick = function() {
            var i = this.loopNum % this.toRotate.length;
            var fullTxt = this.toRotate[i];
    
            if (this.isDeleting) {
            this.txt = fullTxt.substring(0, this.txt.length - 1);
            } else {
            this.txt = fullTxt.substring(0, this.txt.length + 1);
            }
    
            this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';
    
            var that = this;
            var delta = 200 - Math.random() * 100;
    
            if (this.isDeleting) { delta /= 2; }
    
            if (!this.isDeleting && this.txt === fullTxt) {
            delta = this.period;
            this.isDeleting = true;
            } else if (this.isDeleting && this.txt === '') {
            this.isDeleting = false;
            this.loopNum++;
            delta = 500;
            }
    
            setTimeout(function() {
            that.tick();
            }, delta);
        };
    
        window.onload = function() {
            var elements = document.getElementsByClassName('typewrite');
            for (var i=0; i<elements.length; i++) {
                var toRotate = elements[i].getAttribute('data-type');
                var period = elements[i].getAttribute('data-period');
                if (toRotate) {
                  new TxtType(elements[i], JSON.parse(toRotate), period);
                }
            }
            // INJECT CSS
            var css = document.createElement("style");
            css.type = "text/css";
            css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
            document.body.appendChild(css);
        };
        
        
        
        
        //background
        
         var count_particles, stats, update;
  stats = new Stats;
  stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function() {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
  };
  requestAnimationFrame(update);
        </script>


</body>

</html>