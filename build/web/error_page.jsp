

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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

        <title>Something went wrong</title>
    </head>
    <body>
        <div class="container text-center"  >
            <img src="img/fail.png" alt="Something went wrong" height="vh" width="vh" class="img-fluid">
            <h3 class="display-4">Something went wrong.</h3>
            
            <a href="index.jsp" class="btn primary-background text-white mb-3">Try again</a>
        </div>    
    </body>
</html>
