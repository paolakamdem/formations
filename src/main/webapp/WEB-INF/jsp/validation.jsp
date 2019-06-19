<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>Validation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/WEB-IN/css/main.css' />">
  
    <style>
        
        
/* Remove the navbar's default rounded borders and increase the bottom margin */ 
  .navbar {
    margin-bottom: 50px;
    border-radius: 0;
  }
  
  /* Remove the jumbotron's default bottom margin */ 
   .jumbotron {
    margin-bottom: 0;
  }
 
  /* Add a gray background color and some padding to the footer */
  footer {
    background-color: #f2f2f2;
    padding: 25px;
  }

  
  a, a:focus,a:hover,a:visited,a:link, a:active {
    text-decoration: none;
    outline: none;
  }

    </style>
 </head>
<body>

   <jsp:include page="header.jsp" />
       
   <div class="container">    
<!--        <center><p>${client.firstName} ${client.lastName}, vous avez bien été pré-inscrit à la session du ${session.startDate} du cours ${session.courseCode.title}</p></center> -->
            <center><p>Vanessa Kameni, vous avez bien été pré-inscrite à la session du 2018-05-11 du cours APPLIED DATA SCIENCE WITH PYTHON</p></center>
   </div><br>

    <jsp:include page="footer.jsp" />
    
</body>
</html>