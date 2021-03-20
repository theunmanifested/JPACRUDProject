<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Newest Song Added</title>
</head>
<body>

	<!-- New Updated Song Displayed -->

	<h2>Here's Your Updated Song!</h2>

	<table>
		<tr>
			<td>Track Name</td>
			<td>${song.trackName}</td>
		</tr>
		<tr>
			<td>Author(s)</td>
			<td>${song.writtenBy}</td>
		</tr>
		<tr>
			<td>Length</td>
			<td>${song.length}</td>
		</tr>
		<tr>
			<td>Original Album</td>
			<td>${song.album}</td>
		</tr>
		<tr>
			<td>Does it Have Ringo Singing?</td>
			<td>${song.hasRingo}</td>
		</tr>
		<tr>
			<td>Recorded On</td>
			<td>${song.dateRecorded}</td>
		</tr>
		<tr>
			<td>Main Singer</td>
			<td>${song.mainSinger}</td>
		</tr>
		<tr>
			<td>Newest Album's Version Name</td>
			<td>${song.albumVersion}</td>
		</tr>

	</table>

	<form action="home.do">
		<input type="submit" value="Go Back Home" />
	</form>

</body>
</html>