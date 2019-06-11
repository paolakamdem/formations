<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Site en Maintenance</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

  <style>
    /* Add a gray background color and some padding to the footer */
    footer {
        background-color: #f2f2f2;
        padding: 25px;
        margin-top: 210px
    }

    .error-template {padding: 60px 0px 10px 0px;text-align: center;}
    .container {padding-left: 390px;border:black; }

  </style>
</head>
<body>


        <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="error-template">
                            <h1>:) Oops!</h1>
                            <h2>Temporarily down for maintenance</h2>
                            <h1>We will be back soon!</h1>
                            <div>
                                <p>Sorry for the inconvenience but we are performing some maintenance at the moment.
                                    we will be back online shortly!</p>
                                <p> - The Team</p>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
        </div>

    <footer class="container-fluid text-center" >
        <p>LO54 Copyright &copy;</p>  
    </footer>

</body>
</html>


