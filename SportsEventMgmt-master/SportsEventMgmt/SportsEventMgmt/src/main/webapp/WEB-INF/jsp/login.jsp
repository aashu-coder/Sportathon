<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="commonhead.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/style.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="mainHeader.jsp"%>
	<%@ include file="mainMenu.jsp"%>
	<div style="width: 30%; margin-left: 35%; margin-top: 5%">
		<div id="gbg" style="margin-left: 17%; width: 60%;">

			<form action="authenticateUser" method="post">
				<h1 style="font-size: 30px; color: red" align="center">Login</h1>
				<input class="field" type="email" name="emailId"
					placeholder="Enter Email Id" required="required"
					autofocus="autofocus"> <input class="field" type="password"
					name="password" placeholder="Enter password" required="required">
				<input type="submit" value="signin" />
			</form>
			<span style="color: red">${status}</span><br> <span
				style="color: red">${errMsg}</span>
		</div>
	</div>
</body>
</html>