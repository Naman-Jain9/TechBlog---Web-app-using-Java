<%-- 
    Document   : Registerpage
    Created on : Jul 17, 2020, 2:29:00 PM
    Author     : win 7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>

        <!---bootsrap css -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href ="css/mystyle.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!------ font icons css -------->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 19% 91%, 0 100%, 0% 35%, 0 0);





            }
        </style>

    </head>
    <body>
        
        
        <!----- Navbar  ------->
        <%@include file="navbar_front.jsp" %>
        
        <main class="primary-background p-5 banner-background" style="padding-bottom:40px">
            <div class="container">
                     <div class="row">
                    <div class="col-md-5 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                
                                <%@include file = "MessageAfter.jsp" %>
                                
                                <span class="fa fa-user-circle fa-2x"></span>
                                <p>Register here</p>
                            </div>
                            <div class="card-body">
                                 <form id="reg_form" action="RegisterServlet" method="POST">
                                  
                                      <div class="form-group">
                                     <label for="user_name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter your name">
                                      </div>
                               
                                     
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                     
                                     
                                <div class="form-group">
                                    <label for="gender">Select your gender</label>
                                    <br>
                                    <input type="radio" id="gender" name="gender" value="male">Male
                                    <input type="radio" id="gender" name="gender" value="female">Female
                                    <input type="radio" id="gender" name="gender" value="other">Other
                                </div>
                                     
                                    <div class="form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                     <div class="container text-center" id="loader" style="display:none;">    
                                <span class="fa fa-refresh fa-2x fa-spin"></span>
                                <h4>Please wait..</h4>
                                     </div>
                                    <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>


            </div> 
        </main>   




        <!-- bootstarp js -->
        <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>

        <script  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/app.js" type="text/javascript"></script>
        
        <script src="
                https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
            
            
        </script>
        
    <!--    <script>
            $(document).ready(function () {
                console.log("loaded........")
                
                $('#reg_form').on('submit',function(event){
                    event.preventDefault();
                    
                    let form=new FormData(this);
                    
                    $("#submit-btn").hide();
                    $("loader").show();

                    
                    //send register servlet
                    
                    //using ajax function
                      $.ajax({
                         url:"RegisterServlet",
                         type: 'POST',
                         data: form,
                         success: function(data, textStatus, jqXHR){
                             console.log(data)
                             
                            $("#submit-btn").show();
                            $("loader").hide();
                            
                            swal("Click on either the button or outside the modal.")
                            .then((value) => {
                            swal(`The returned value is: ${value}`);
                            });
                            
                         },
                         error: function( jqXHR, textStatus,errorThrown){
                             console.log(jqXHR
                             
                            $("#submit-btn").show();
                            $("loader").hide();
                            swal("Something went wrong.Try again");
                            
                             
                         },
                         
                         processData: false,
                         contentType: false
                      }); 
                    
                });
                
            });
            
            
            
        </script> -->


    </body>
</html>












