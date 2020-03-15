<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Sports</title>
<%@ include file="commonhead.jsp"%>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%@ include file="organizerMenu.jsp"%>
	<div style="width: 30%; margin-left: 35%; margin-top: 5%">
		<h1 align="center">Update Sports</h1>
		<f:form action="updateSportsData" modelAttribute="sports"
			method="post">
			<table style="margin-left: 8%; width: 80%;">
				<tr>
					<td><f:label path="sportsName">Sports Name</f:label></td>
					<td><f:input path="sportsName" value="${sports.sportsName}"
							placeholder="Enter Sports Name" class="field" disabled="true" /></td>
				</tr>
				<tr>
					<td><f:label path="sportsType">Sports Type</f:label></td>
					<td><f:input path="sportsType" placeholder="Enter Sports Type"
							class="field" value="${sports.sportsType}" disabled="true" /></td>

				</tr>
				<tr>
					<td><f:label path="noOfPlayers">No of players</f:label></td>
					<td><f:input value="${sports.noOfPlayers}" path="noOfPlayers"
							class="field" placeholder="Enter No of players" /></td>
				</tr>
				<tr>
					<td></td>
					<td><span style="color: red"><f:errors
								path="noOfPlayers"></f:errors></span></td>
				</tr>
				<tr>
					<td><f:label path="timeOfMatch">Time of match</f:label></td>
					<td><f:input value="${sports.timeOfMatch}" path="timeOfMatch"
							class="field" placeholder="Enter time of match(HH:MM)" /></td>
				</tr>
				<tr>
					<td></td>
					<td><span style="color: red"><f:errors
								path="timeOfMatch"></f:errors></span></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" id="SubmitButton"
						value="Update Sports" /></td>
				</tr>

			</table>
		</f:form>
	</div>
</body>
</html>
