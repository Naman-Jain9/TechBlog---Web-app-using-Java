<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp" %>







<%
    User user = (User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
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
      
        <!-----Navbar start--->
       
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="#"><span class="fa fa-certificate"></span> BlogsMania</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bell"></span>Recent <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="fa fa-check-square-o"></span> Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Languages</a>
          <a class="dropdown-item" href="#">Internships</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">DataStructures</a>
        </div>
      </li
       
      <li class="nav-item">
          <a class="nav-link" href="#"><span class="fa fa-address-book"></span>Contact</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-asterisk"></span>Add Post</a>
      </li> 
      
    </ul>

      
      <ul class="navbar-nav mr-right">
        <li class="nav-item">
            <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle "></span><%= user.getName() %> </a>
        </li
     </ul>
   
       <ul class="navbar-nav mr-right">
        <li class="nav-item">
          <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus "></span>Logout</a>
        </li
     </ul>
  </div>
</nav>
        
            <!---navbar ends----------->

            <!-------main body start------>
            <main>
                <div class="container">
                    <div class="row mt-4">
                        <!--first col---->
                        <div class="col-md-4">
                            <!--showing all the categories--->
                           <div class="list-group">
                              <a href="#" class="list-group-item list-group-item-action active ">
                                All Categories
                              </a>
                              <%
                                PostDao d =new PostDao(ConnectionProvider.getConnection());
                               ArrayList<Category>list1 =  d.getAllCategories();
                               for(Category cc:list1)
                               { 
                                   %>
                                   <a href="#" onclick="getPosts(<%= cc.getCid() %>)" class="list-group-item list-group-item-action "><%=cc.getName() %></a>
                                   <%
                               }
                              %>
                            
                            </div>
                        </div>
                        
                        <!--second col---->
                        <div class="col-md-8" >
                            <!---posts--->
                            <div class="container text-center " id="loader" >
                                <i class="fa fa-refresh fa-2x fa-spin"></i>
                                <h3 class="mt-2">Loading....</h3>
                            </div>
                            <div class="container-fluid" id="post-container">
                                
                            </div>
                        </div>
                    </div>
                </div>
        
            </main>
            
            
            
            
            <!---------main body ends11----------------------->
      
            
            <!---profie modal start-->
            
         

<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="exampleModalLabel"> TechBlog </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
         <div class="container text-center">
             <img src="pics/<%= user.getProfile()  %>"class="img-fluid" style="border-radius:50%">  
                <br>
          <h5 class="modal-title" id="exampleModalLabel"><%=user.getName()%></h5>
            
          <!---------table-------->
          <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">Id</th>
      <td><%=user.getId()%></td>
     
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td><%=user.getEmail()%></td>
     
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%=user.getGender()%></td>
     
    </tr>
  </tbody>
</table>
          
         </div>  
          
      </div>
      <div class="modal-footer text-center">
                <div class="container text-center">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div>
</div>
            
            <!-------profile modal ends
            
            <!--------add post modal-------->
            

<!-- Modal -->
<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add blog details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="AddPostServlet" id="add-post-form" method="post">
             
              <div class="form-group">
                   
              <select class="form-control" name="cid">
                  <%
                    PostDao postd = new PostDao(ConnectionProvider.getConnection()); 
                    ArrayList<Category> list = postd.getAllCategories();
                  %>
                  
                    <option selected disabled>Select Category</option>
                    <%
                    for(Category c:list)
                    {
                     %>   
                  
                     <option value="<%= c.getCid() %>"><%=c.getName() %></option>

                  <%
                    }
                  %>    
              </select>
              </div> 
              <div class="form-group">
                  
                  <input name="pTitle" type="text" placeholder="Enter post title" class="form-control"/>
              </div>
              <div class="form-group">
                  <label>Select any post pic</label>
                  <br>
                  <input type="file" name="pic" class="form-control"/>
              </div>
              <div class="form-group">
                  <textarea name="pContent" placeholder="Enter post content" style="height:150px" class="form-control"></textarea>
              </div>
               <div class="form-group">
                  <textarea name="pCode" placeholder="Enter any code" style="height:150px" class="form-control"></textarea>
              </div>
              
              
          <div class=" container text-center">
        <button type="submit" class="btn btn-outline-primary">Post</button>
        
         </div>
              
          </form>
      </div>
      
    </div>
  </div>
</div>
            
            <!-------add post modal ends------------------>
             <!-- bootstarp js -->
        <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>
        
        <script  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/app.js" type="text/javascript"></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <!---sweet alert js--->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
   
        <!----add post js----->
        <script>
            $(document).ready(function(e){
                
                $("#add-post-form").on("submit",function(event){
                    //this code iwilll be callled when form get submitted
                    event.preventDefault();
                    console.log("ssssssssssss");
                    let form=new FormData(this);
                    
                    //now requesting servlet
                    $.ajax({
                        url:"AddPostServlet",
                        type: 'POST',
                        data: form,
                        success:function(data,textStatus,jqXHR){
                            //SUCCESS
                            console.log(data);
                            if(data.trim()==='done'){
                                swal("Good job!", "Blog created successfully!", "success");

                            }
                            else{
                                swal("Oops!", "Somethng went wrong try again!", "error");

                            }
                            
                        },
                        error:function(jqXHR,textStatus,errorThrown){
                            //error
                             swal("Oops!", "Somethng went wrong try again!", "error");
                        },
                        processData:false,
                        contentType:false
                    });
                    
                });
                
                
            });
            
            
            
            
        </script>
        
        <!--------Loading post using ajax------------>
        <script>
            function getPosts(catId){
                        $("#loader").show();
                        $('#post-container').hide();
                
                $.ajax({
                  url:"load_posts.jsp",
                  data:{cid:catId},
                  success:function(data,textStatus, jqXHR){
                        console.log(data);
                        $("#loader").hide();
                        $('#post-container').show();
                        $('#post-container').html(data);
                  }
               });
            }
            
            $(document).ready(function(e){
               getPosts(0);
               
            });
        </script>
        
        
    </body>
</html>



















