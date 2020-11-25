

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>

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


        <title>Eduera</title>
    </head>
    <body>

        <!----- Navbar  ------->
        <%@include file="navbar_front.jsp" %>


        <!----banner------------->  
        <div class="container-fluid m-0 p-0">
            <div class="banner-background">
            <div class="jumbotron  text-white">
                <div class="container">
                    <h3 class="display-4">Welcome to BlogMania</h3>

                    <p>This is the world of technology. Change is the only constant. This applies to your professional life as well. Up-skilling yourself is a need nowadays, the reason is pretty simple, technology is evolving very quickly. I have listed the top 10 trending technologies, which are expected to acquire a huge market in 2020.
                    </p>
                    <p> If you like Eduera and would like to contribute,
                        you may write by clicking on the button below. Write an Article
                        See your article appearing on the Eduera main page and help other learners!!</p>
		

                    </p
                    <button type="button" class="btn btn-info"></button>

                    <button class="btn btn-outline-light "><span class="fa fa-user-plus"></span>Start! its Free </button>
                    <a href="loginpage.jsp" class="btn btn-outline-light "><span class="fa fa-user-circle fa-spin"></span>Login </a>
                </div>
            </div>
            </div>     
        </div>

        <!------------------------------------------now designing second part of our website(three extra  header div starts)-------->
<section class="header-extradiv">
	<div class="container">
		<div class="row">
			<div class="extra-div col-lg-4 col-md-4 col-12">    <!----------bootstrap classes---------->
				<a href="#">
					<i class="fa-2x fa fa-desktop" aria-hidden="true">
					
					</i>
				</a>
				<h3>EASY TO USE AND HANDLE</h3>
				<P> Bjfb n nnoenobn ebn ofn onebneob bnenn nninnn ini kdk vw biogjnoytjnmnkn ff gff rebrbreb rrer</P>
			</div>
			<div class="extra-div col-lg-4 col-md-4 col-12">    <!----------bootstrap classes---------->
				<a href="#">
					<i class=" fa-2x fa fa-trophy" aria-hidden="true">
					
					</i>
				</a>
				<h3>AWESOME DESIGN</h3>
				<P> Bjfb n nnoenobn ebn ofn onebneob bnenn nninnn ini kdk vw biogjnoytjnmnkn ff gff rebrbreb rrer</P>
			</div>
			<div class="extra-div col-lg-4 col-md-4 col-12">    <!----------bootstrap classes---------->
				<a href="#">
					<i class="fa-2x fa fa-magic" aria-hidden="true">
					
					</i>
				</a>
				<h3>EASY TO CUSTOMIZE</h3>
				<P> Bjfb n nnoenobn ebn ofn onebneob bnenn nninnn ini kdk vw biogjnoytjnmnkn ff gff rebrbreb rrer</P>
			</div>


	</div>
	
</section>

<!-----------------------------our price start--------------------------->


<section class="pricing" id="pricingdiv">
	<div class="container headings text-center">
		<h2 class="text-center font-weight-bold text-white">OUR BEST PRICING</h2>
		
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-12">
			 <div class="card">
  				<div class="card-header">BASIC</div>

 			 	  <div class="card-body">	
 			 		<li>$<span class="money">20</span>/website</li>
 			 		<li>Responsive websites</li>
 			 		<li>Domain name free</li>
 			 		<li>Mobile friendly</li>
 			 		<li>Webmail Support</li>
 			 		<li>Customer support</li>



 			 	 </div>
  				 <div class="card-footer"><a href ="#">PURCHASE</a>
  				 </div>
			 </div>
					
				
			</div>

			<div class="col-lg-4 col-12">
			 <div class="card">
  				<div class="card-header">STANDARD</div>

 			 	  <div class="card-body">	
 			 		<li>$<span class="money" >40</span>/website</li>
 			 		<li>Responsive websites</li>
 			 		<li>Domain name free</li>
 			 		<li>Mobile friendly</li>
 			 		<li>Webmail Support</li>
 			 		<li>Customer support</li>



 			 	 </div>
  				 <div class="card-footer"><a href ="#">PURCHASE</a>
  				 </div>
			 </div>
					
				
			</div>


			<div class="col-lg-4 col-12">
			 <div class="card">
  				<div class="card-header">UNLIMITED</div>

 			 	  <div class="card-body">	
 			 		<li>$<span class="money">60</span>/website</li>
 			 		<li>Responsive websites</li>
 			 		<li>Domain name free</li>
 			 		<li>Mobile friendly</li>
 			 		<li>Webmail Support</li>
 			 		<li>Customer support</li>



 			 	 </div>
  				 <div class="card-footer"><a href ="#">PURCHASE</a>
  				 </div>
			 </div>
					
				
			</div>


		</div>
		
	</div>
</section>

<!-----------------------------------our price ends------------------------->

<!-----------------------------contact us starts----------------------->

<section class="contactus" id="contactid" >
	<div class="container headings text-center">
		<h2 class="text-center font-weight-bold ">CONTACT US</h2>
		<p class="text-capitalize text-center pt-1">I am here to help you and solve your querry you might have</p>
	</div> 

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-10  offset-lg-2 offset-lg-2 col-1">
				
  <form action="/action_page.php">
  <div class="form-group">
   <input type="text" class="form-control"  id="username" required autocomplete="off" placeholder="Enter Your Name">
  </div>

  <form action="/action_page.php">
  <div class="form-group">
  <input type="email" class="form-control"  id="email" required autocomplete="off"  placeholder="Enter Email">
  </div>

  <form action="/action_page.php">
  <div class="form-group">
  <input type="number" class="form-control"  id="mobile" required autocomplete="off" placeholder="Enter Mobile Number">
  </div>

  <div class="form-group">
  <textarea class="form-control" rows="4" id="comment" placeholder="Enter Your Message"></textarea>
</div>
  
  <div class="d-flex justify-content-center form-button">
  <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </div>


			</div>
			
		</div>
		
	</div>

</section>



<!---------------------------------contact us ends---------------------------->


<!------------------------------newsletter starts------------------->
<section class="newsletter" id="newsletterid">
	<div class="container headings text-center">
		<h2 class="text-center font-weight-bold">SUBSCRIBE TO OUR NEWSLETTER</h2>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-12">
				<div class="input-group mb-3">
			    <input type="text" class="form-control news-input" placeholder="Your Email">
			    <div class="input-group-append">
			    <span class="input-group-text">Subscribe</span>
			    </div>
			  </div>
			</div> 
		</div>
	</div>
</section>


<!-----------------------------------newsletter ends------------------>


<!--------------------------------footer start----------------------->

<footer class="footersection" id="footerfdiv">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6  col-12 footer-div">
				<div>
					<h3> ABOUT DEVELOPMENTMANIA</h3>
					<p>iionniuohnoin ninininn unioion  unin n nfoinoi nfion oifsn   ijiinini ii ionbiort onbnefkp[2k ,feko otrmbotobp okbk kvpkv
					nnon3gi iojvij33i	 ihni453hi543hn ijg90345j  </p>
				</div>
			</div>

			<div class="col-lg-4 col-md-6  col-12   footer-div text-center">
				<div>
					<h3> NAVIGATION LINKS</h3>
					<li><a href="#">Home</a></li>
					<li><a href="#">Service</a></li>
					<li><a href="#">Price</a></li>
					<li><a href="#">About</a></li>
				</div>
			</div>


			<div class="col-lg-4 col-md-6  col-12 footer-div">
				<div>
					<h3>NEWSLETTER</h3>
					<p>iionniuohnoin ninininn unioion  unin n nfoinoi nfion oifsn   ijiinini ii ionbiort onbnefk.  </p>


					<div class="container newsletter-main">
						<div class="row">
							<div class="col-lg-12   col-12">
								<div class="input-group mb-3">
							    <input type="text" class="form-control news-input" placeholder="Your Email">
							    <div class="input-group-append">
							    <span class="input-group-text">Subscribe</span>
							    </div>
							  </div>
							</div> 
						</div>
					</div>

				</div>
			</div>



		</div>

		<div class="mt-5 text-center">
			<p>Copyright@2020 DevelopmentMania|All rights rserved </p>			
		</div>
		<div class="scrolltop float-right">
			<i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
			
		</div>

	</div>
</footer>

<!-------------------------------------footer ends--------------------->




       



        <!-- bootstarp js -->
        <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>

        <script  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/app.js" type="text/javascript"></script>
    </body>
</html>
