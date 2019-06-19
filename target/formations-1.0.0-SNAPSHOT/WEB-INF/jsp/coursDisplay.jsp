<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    <script src="<c:url value='/WEB-INF/js/datepicker.js' />"></script>
    <link rel="stylesheet" href="<c:url value='css/main.css' />">
 
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

      <div class="container text-center">
        <h2>Liste des cours au programme</h2>      
      </div><br>
   
    <div class="container">    
      <form class="form" action="/formations/cours/filter" >
          <div class="row">
              <div class="col-sm-6">
                  <div class="form-group ">
                      <!--<label class="control-label" for="titleCourse">Nom du cours</label>
                      <br/>-->
                        <input name="title" class="form-control mr-sm-2" type="search" placeholder="Rechercher par nom de cours" id="titleCourse">
                  </div>              
              </div>
              <div class="col-sm-2"> 
                  <div class="form-group"> 
                      <button class="btn btn-default" type="submit" name="filterCourse" value="rehercher">Rechercher</button>				  
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
                  </tr>
              </thead>
              <tbody>
                  <c:forEach var="cours" items="${courses}" >
                  <tr>
                      <td>
                          ${cours.title}
                      </td>
                  </tr>
                  </c:forEach>
              </tbody>
          </table>
      
  </div>

       <jsp:include page="footer.jsp" />
       
</body>
</html>