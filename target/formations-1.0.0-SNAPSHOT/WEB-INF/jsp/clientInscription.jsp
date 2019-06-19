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
  <link rel="stylesheet" href="css/main.css">

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
            <h2>Pré-inscription</h2>
            <hr>
            <h3>Cours : ${session.courseCode.title}</h3>
            <h4>Session du ${session.startDate} au ${session.endDate}</h4><br>
        </div>
      </div>
            
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
      
     <jsp:include page="footer.jsp" />
     
</body>
</html>