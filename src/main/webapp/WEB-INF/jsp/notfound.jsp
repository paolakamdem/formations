<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Page non trouvée</title>
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
    }

    .error-template {padding: 115px 0px 10px 0px;text-align: center;}
    .error-actions {margin-top:15px;margin-bottom:15px;}
    .error-actions .btn { margin-right:10px; }
  </style>
</head>
<body>

        <div class="container" >
                <div class="row">
                    <div class="col-md-12">
                        <div class="error-template">
                            <h1>
                                Oops!</h1>
                            <h2>
                                404 Not Found</h2>
                            <div class="error-details">
                                Sorry, an error has occured, Requested page not found!
                            </div>
                            <div class="error-actions">
                                <a href="#" class="btn btn-default btn-lg">
                                    <span class="glyphicon glyphicon-home"></span>
                                    Take Me Home 
                                </a>
                            </div>
                        </div>
                    </div>
               </div>
        </div>

    <footer class="container-fluid text-center" style="margin-top: 230px">
        <p>LO54 Copyright &copy;</p>  
    </footer>

</body>
</html>