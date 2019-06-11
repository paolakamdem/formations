<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

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
  <link rel="stylesheet" href="css/main.css">
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
                  <li class="active"><a href="#">Liste des cours</a></li>
				  <li><a href="#">Créer un cours</a></li>
                </ul>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Connexion </a></li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="container">    
        <div class="row">
            <h2>Course name</h2>
            <hr>
            <h3>Session</h3>
        </div>
        <div class="row">
            <dl class="dl-horizontal">
                <dt>Date de début :</dt>
                <dd> date</dd>
                <dt>Date de fin :</dt>
                <dd> date</dd>
                <dt>Lieu :</dt>
                <dd> lieu</dd>
                <dt>Nombre d'inscrits :</dt>
                <dd> 20</dd>
            </dl>     
            <a class="btn btn-default" href="#" role="button">S'inscrire</a>
            <a class="btn btn-danger" href="#" role="button">Inscription close</a>
        </div>
      </div><br>
    
      <footer class="container-fluid text-center">
        <p>LO54 Copyright</p>  
      </footer>

</body>
</html>