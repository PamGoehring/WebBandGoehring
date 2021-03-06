<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="myStyle.css">
<title>List of Marching Bands</title>
</head>
<body>
<img src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAlBAAAAJDM5Yzg5YzU3LWViMjEtNGUxNi1iMDhkLTc5ZTU1NzUyODA2MQ.png" alt="MarchingBand">
<h2>View All Marching Bands</h2>
<form method = "post" action = "modifyMarchingBandServlet">
	<table>

		<tr>
			<th>Band Id</th>
			<th>Band Name</th>
			<th>Band Location</th>
			<th>Number of Members</th>
			<th>Cost Of Participation</th>
			<th>Types of Props</th>
			<th>Color Guard?</th>
		</tr>

		<c:forEach items="${requestScope.allMarchingBands}" var="currentMarchingBand">
			<tr>
				<td><input type="radio" name="id" value="${currentMarchingBand.bandId}">${currentMarchingBand.bandId}</td>
				<td>${currentMarchingBand.bandName}</td>
				<td>${currentMarchingBand.bandLocation}</td>
				<td>${currentMarchingBand.numOfMembers}</td>
				<td><fmt:formatNumber value="${currentMarchingBand.costOfParticipation}" type="currency" /></td>
				<td>${currentMarchingBand.typesOfProps}</td>
				<td>${currentMarchingBand.hasColorGuard}</td>
			</tr>
		</c:forEach>

	</table>
	<input type="submit" value="Edit Selected Marching Band" name="doThisToItem">
	<input type="submit" value="Delete Selected Marching Band" name="doThisToItem">
	<input type="submit" value="Add New Marching Band" name="doThisToItem">
	</form>
	<a href="index.html"> Back to Band Home</a>
</body>
</html>