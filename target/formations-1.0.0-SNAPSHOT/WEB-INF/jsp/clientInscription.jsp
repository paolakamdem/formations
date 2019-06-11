<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Pré-inscription</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="<c:url value='pages/css/main.css' />" >
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
				  <li><a href="#">Crer un cours</a></li>
                </ul>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Connexion </a></li>
            </ul>
          </div>
        </div>
      </nav>
    

      <div class="container">
          <h2>Pré-inscription à une session de cours</h2>
      </div><br>

      <div class="container" style="padding-left: 100px">
          <form class="form-horizontal" action="Course" method="POST" >
            <div class="form-group row">

              <div class="input-group col-sm-6">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <input type="text" class="form-control" id="lastname" name="nom" placeholder="Nom">              </div>
           </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Prénom">
                </div>
            </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <input id="email" type="email" class="form-control" name="email" placeholder="Email">
                </div>
            </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <input type="text" class="form-control" id="phone" name="email" placeholder="Téléphone 0999999999">
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" class="form-control" id="address" name="address" placeholder="Adresse ">
                </div>
            </div><br>
            <div class="form-group row"> 
                <div >
                    <button type="submit" class="btn btn-default" name="confirmer" value="confirmer"> Confirmer </button>				  
                </div>
            </div>
          </form>
     </div><br>
      
      <footer class="container-fluid text-center">
        <p>LO54 Copyright</p>  
      </footer>

</body>
</html>