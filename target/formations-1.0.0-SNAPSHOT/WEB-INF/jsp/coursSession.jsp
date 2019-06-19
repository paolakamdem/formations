<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>Session de cours</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  
  <spring:url value="css/main.css" var="main" />
  <link rel="stylesheet" href="${main}"> 
  
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
        <div class="row">
            <h2>${session.courseCode.title}</h2>
            <hr>
            <h3>Session</h3>
        </div>
        <div class="row">
            <dl class="dl-horizontal" style="padding-top: 30px; padding-bottom: 20px">
                <dt style="width: 200px">Date de début : </dt>
                <dd> ${session.startDate}</dd>
                <dt style="width: 200px">Date de fin : </dt>
                <dd> ${session.endDate} </dd>
                <dt style="width: 200px">Lieu  : </dt>
                <dd> ${session.locationId.city}</dd>
                <dt style="width: 200px">Nombre d'inscrits  : </dt>
                <dd> ${session.clients.size() }</dd>
                <dt style="width: 200px">Nombre d'inscrits maximum :</dt>
                <dd> ${session.max }</dd>
            </dl>     

                <c:if test="${session.max > session.clients.size()}">
            <a class="btn btn-default" href="/formations/cours/session/${session.id}/inscription" role="button">S'inscrire</a>
                </c:if>
                <c:if test="${session.max == session.clients.size()}">
            <a class="btn btn-danger" href="#" role="button">Inscription close</a>
                </c:if> 
        </div>
      </div><br>
    
       <jsp:include page="footer.jsp" />
       
</body>
</html>