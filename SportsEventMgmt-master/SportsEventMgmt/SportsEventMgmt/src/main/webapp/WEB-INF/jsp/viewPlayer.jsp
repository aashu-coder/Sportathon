<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Player</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<%@ include file="commonhead.jsp"%>
</head>
<body>

	<%@ include file="coachMenu.jsp"%>
	<div style="width: 30%; margin-left: 35%; margin-top: 5%">
		<h1 align="center">View Player</h1>
		<f:form action="viewPlayerData" modelAttribute="sports" method="post">
			<table style="margin-left: 8%; width: 80%;">

			</table>
		</f:form>
	</div>
</body>
</html>
