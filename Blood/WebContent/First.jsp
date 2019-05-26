<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Blood.bean.*"%>
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
    <!-- <link rel="stylesheet" href="style.css"> -->
    <style>
    .two {
   text-align: center;
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
    top: 4px;
    left: 20px;
    pointer-events: none;
    transition: .5s;
}

.form2 input:focus~label,
.form2 input:valid~label {
    top: -8px;
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
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-md   " style="border-bottom:3px solid #25CCF7 ; background-color:#25CCF7 ">
        <a class="navbar-brand " href="#" style="text-decoration:none;color:white;"><b>Logo</b></a>
        <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:white;" href="#"><b>WebSiteName</b></a>
        </div>
        <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:rgba(212, 84, 84, 0.856); ">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
            <ul class="navbar-nav ">
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal" style="text-decoration:none;color:white;"
                        href="#"><b>Sign UP</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal1" style="text-decoration:none;color:white;"
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
                <div class="modal-header" style="background-color:rgba(212, 84, 84, 0.856);">
                    <h5 class="modal-title text-center"> logo</h5>
                    <h5 class="modal-title ">website Name</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <h3 class="text-center">signup</h3>
                
               <center> <p style="color:red"><%
                            if(session.getAttribute("error")!=null)
                            { %>
                            	<%=session.getAttribute("error")%>
                          <% session.invalidate();}
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
                                    <label class="control-label" for="email">Email</label>
                                </div>
                                <br>
                                <br>
                                 <div class="input-group col-sm-6">
                                    <input type="text" id="location" name="location" style="width:100%;" required>
                                    <label class="control-label" for="location">Location</label>
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
                                        <button class="btn btn-block " type="submit" style="background-color:rgba(212, 84, 84, 0.856)">submit</button>
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
                <div class="modal-header" style="background-color:rgba(212, 84, 84, 0.856);">
                    <h5 class="modal-title text-center"> logo</h5>
                    <h5 class="modal-title ">website Name</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <h3 class="text-center">Login</h3>
                
                <center><p style="color:red"> <%
                            if(session.getAttribute("errormg")!=null)
                            { %>
                            	<%=session.getAttribute("errormg")%>
                          <% session.invalidate();  }
                            %></p></center>
                            
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="text-center form2">
                        <form action="Account" method="post">
                        	<input type="hidden" name="command" value="login">
                           
                            
                            <div class="row">
                                <div class="input-group col-sm-12">
                                    <input type="text" id="username" name="username" style="width:100%;" required>
                                    <label class="control-label" for="username">Username</label>
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
                                <div class="col-sm-12">
                                    <div class="input-group">
                                        <button class="btn btn-block " type="submit" style="background-color:rgba(212, 84, 84, 0.856)">submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>

                </div>
                
            </div>
        </div>
    </div>
                




        <div class="container-fluid" style="padding:0px;margin:0px;">
            <div class="two" >
                <div class="row" style="padding:0px;margin:0px;">
                    <div class="col-sm-12" style="background-image:url('https://img.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2014/02/20/Production/Health/Images/bigstock-Medicine-Doctor-Hand-Working-W-44541469.jpg?uuid=81VcgJp9EeO5MQIEEixRSw');opacity:.7;background-size:100%; height:700px;">
                            <h1 align="center"> 
                                    <a href="" class="typewrite " data-period="2000" style="color:#0984e3  ; text-decoration: none;" data-type='[ "Hi,I am VKR.", "I am Creative.", "I Love Design.", "I Love to Develop." ]' >
                                      <span class="wrap"></span>
                                    </a>
                                  </h1>
                    </div>
                </div>
            </div>
        </div>
        <script>
            // Get the modal
            var modal = document.getElementById('id03');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal1.style.display = "none";
                }
            }
            var modal = document.getElementById('id02');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            function showpassword() {
                var x = document.getElementById("password");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
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
        </script>


</body>

</html>