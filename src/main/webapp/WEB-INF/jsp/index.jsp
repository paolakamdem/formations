<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formation</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>Formation en ligne</h2>
   <hr />
   
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Session des formations</div>
    </div>
    <div class="panel-body">
<!--
     <table class="table table-striped table-bordered">
      <tr>
       <th>ID</th>
       <th>First Name</th>
       <th>Last Name</th>
       <th>Adress </th>
       <th> Phone</th>
      </tr>
     
       <tr>
        <td>${ses.id}</td>
        <td>${ses.firstName}</td>
        <td>${ses.lastName}</td>
        <td>${ses.address}</td>
        <td>${ses.phone}</td>

        </tr>

    

     </table>
-->
  
     <table class="table table-striped table-bordered">
      <tr>
       <th>Liste des cours</th>
       <th>ville</th>
       <th>Date de debut</th>
       <th>Date de fin</th>
       <th>Nombres de places</th>
      </tr>

      <!-- loop over and print our customers 
       <tr>
        <td>${v.courseCode.title}</td>
        <td>${v.locationId.city}</td>
        <td>${v.startDate}</td>
        <td>${v.endDate}</td>
        <td>${v.max}</td>
        

        </tr>

       
-->
     </table>

    </div>
   </div>
  </div>

 </div>
</body>
</html>