<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %> 
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core"  %>

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
     <div class="panel-title">Session List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>COURS</th>
       <th>Date de debut</th>
       <th>Date de fin</th>
       <th>Nbre de places </th>
       <th> Action</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="ses" items="${sessions}">
          
       <tr>
        <td>${ses.courseCode}</td>
        <td>${ses.startDate}</td>
        <td>${ses.endDate}</td>
        <td>${ses.max}</td>
        <td>
            ${ses.locationId}
        </td>
        <td>${ses.clients}</td>
        </tr>

      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
</body>
</html>
