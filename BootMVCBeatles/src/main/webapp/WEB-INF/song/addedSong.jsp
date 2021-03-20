<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Newest Song Added</title>
</head>
<body>

	<!-- New song added displayed -->

	<h2>Here's Your New Song Added!</h2>

	<h4>But first, do you want to update it?</h4>
	<form action="updateASongForm.do" method="GET">
		<input class="btn btn-primary" type="submit"
			value="Let's Update This Song" />
	</form>
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

	<h4>Already hate it? Want to delete it?	</h4>
	
	<form action="destroySong.do" method="POST">
			<button type="submit" name="id" value="${song.id}">Let's Delete</button>
		</form> 
		<br>
	<form action="home.do">
		<input type="submit" value="Go Back Home" />
	</form>
</body>
</html>