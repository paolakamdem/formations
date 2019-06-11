<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Formations</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css"rel="stylesheet">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <script src="js/datepicker.js"></script>
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

      <div class="container text-center">
        <h2>Liste des cours au programme</h2>      
      </div><br>
   
    <div class="container">    
      <form class="form" action="Course" method="GET" >
          <div class="row">
              <div class="col-sm-4">
                  <div class="form-group ">
                      <label class="control-label" for="titleCourse">Nom du cours</label>
                      <br/>
                        <input class="form-control mr-sm-2" type="search" placeholder="Rechercher par nom de cours" id="titleCourse">
                  </div>              
              </div>
              <div class="col-sm-4"> 
                  <div class="form-group">
                      <label class="control-label" for="sessionDate">Date de session</label>
                      <br/>
                       <input type="text" class="form-control datepicker" name="sessionDate" id="sessionDate" placeholder="sélectionnez une date de session">
                  </div>
              </div>
              <div class="col-sm-4"> 
                  <div class="form-group">
                      <label class="control-label" for="cityLocation">Lieu</label>
                      <select class="form-control" id="cityLocation">
                        <option>--</option>
                        <option>Belfort</option>
                        <option>Paris</option>
                      </select>
                    </div>
              </div>
              <div class="col-sm-4"> 
                  <div class="form-group"> 
                      <button class="btn btn-default" type="submit" name="FilterCourse" value="rehercher">Rechercher</button>				  
                   </div>            
              </div>
            </div>
			</form>
    </div><br>

    <div class="container">

          <table class="table table-hover" id="dataTable"  cellspacing="0">
              <thead>
                  <tr>
                    <th> Cours </th>
                    <th> Sessions </th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>
                          ${cour.title}
                      </td>
                      <td >
                        <table class="table table-bordered table-hover" style="border: none" >
                            <tr style="border: none">
                             
                                <td style="border: none"><a href="#">
                                    
                                        Start date: ${session.startDate}<br>
                                        Session End date: ${session.endDate} <br>
                                        Location : ${session.location.city} <br/> 
                                    
                                </a></td>
                                <td style="border: none">
                                   
                                      <p>Nombre d'inscrits</p>
                                      <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                                          <span >7/10</span>
                                        </div>
                                      </div>                                 
                                </td>
                              
                            </tr>
                      </table>
                      </td>
                  </tr>
              </tbody>
          </table>
      
  </div>




    <footer class="container-fluid text-center">
        <p>LO54 Copyright &copy;</p>  
    </footer>

    <script>
        $('.datepicker').datepicker({
        language: 'en-AU',
        autoclose: true,
        todayHighlight: true
        });
    </script>
    
</body>
</html>