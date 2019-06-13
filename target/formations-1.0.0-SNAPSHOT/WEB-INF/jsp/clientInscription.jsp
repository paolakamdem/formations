<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
          <h2>Pré-inscription à la session du ${session.startDate} du cours ${session.courseCode.title}</h2>
      </div><br>

      <div class="container" style="padding-left: 100px">
          <form:form class="form-horizontal" action="/formations/register/${session.id}" method="POST" modelAttribute="client" >
            <div class="form-group row">
               <%-- <form:input type="hidden" path="id" id="id" /> --%>
                  <form:input type="hidden" path="sessions" id="session" /> 
              <div class="input-group col-sm-6">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <form:input class="form-control"  path="lastName" placeholder="Nom" />
                    <%--<form:errors path="address" element="div" cssClass="alert alert-warning"/>--%>
              </div>
           </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <form:input type="text" class="form-control" id="firstname" path="firstName" placeholder="Prénom" />
                    <%--<form:errors path="address" element="div" cssClass="alert alert-warning"/>--%>
                </div>
            </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <form:input id="email" type="email" class="form-control" path="eMail" placeholder="Email" />
                    <%--<form:errors path="address" element="div" cssClass="alert alert-warning"/>--%>
                </div>
            </div>
            <div class="form-group row">

                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <form:input type="text" class="form-control" id="phone" path="phone" placeholder="Téléphone " />
                    <%--<form:errors path="address" element="div" cssClass="alert alert-warning"/>--%>
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group col-sm-6">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <form:input type="text" class="form-control" id="address" path="address" placeholder="Adresse " />
                    <%--<form:errors path="address" element="div" cssClass="alert alert-warning"/>--%>
                </div>
            </div><br>
            <div class="form-group row"> 
                <div >
                    <button type="submit" class="btn btn-default" name="validate" value="confirmer"> Confirmer </button>				  
                </div>
            </div>
          </form:form>
     </div><br>
      
      <footer class="container-fluid text-center">
        <p>LO54 Copyright</p>  
      </footer>

</body>
</html>