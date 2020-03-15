<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="commonhead.jsp"%>
<title>View Sports</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<%@ include file="commonhead.jsp"%>
</head>
<body>

	<%@ include file="organizerMenu.jsp"%>
	<div style="width: 30%; margin-left: 35%; margin-top: 5%">
		<h1 align="center">View Sports</h1>
		<table border="1" align="center">

<c:forEach var="s" items="${slist}">

<table class="table table-bordered">
    <thead>
      <tr>
        <th>Sports Id</th>
        <th>Sports Name</th>
        <th>Sports Type</th>
        <th>No of Players </th>
        <th>Time of Match</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${s.sId}</td>

		<td>${s.sportsName}</td>

		<td>${s.sportsType}</td>

		<td>${s.noOfPlayers}</td>

		<td>${s.timeOfMatch}</td>
      </tr>
     
     
    </tbody>
  </table>




</c:forEach>
</table>
	</div>
</body>
</html>
