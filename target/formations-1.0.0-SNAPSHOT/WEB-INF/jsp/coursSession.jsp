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
  <link rel="stylesheet" href="<c:url value='css/main.css' />"> 
</head>
<body>

    <div class="jumbotron">
        <div class="container text-center">
          <h1>Formation en Ligne</h1>      
        </div>
    </div>
      
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-education"></span></a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                  <li class="active"><a href="/formations/cours">Liste des cours</a></li>
				  <li><a href="#">Créer un cours</a></li>
				  <li><a href="/formations/session">Liste des sesions</a></li>                                  
                </ul>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Connexion </a></li>
            </ul>
          </div>
        </div>
      </nav>

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
    
      <footer class="container-fluid text-center">
        <p>LO54 Copyright</p>  
      </footer>

</body>
</html>