<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beatles Song</title>
</head>
<body>

	<!-- Displays details from the song  -->

	<h1>Here Comes Yer Song</h1>
	<table class="table table-striped table-hover">
		<thead class="table-dark">
			<th>Track Name</th>
			<th>Written By</th>
			<th>Length</th>
			<th>Album</th>
			<th>Ringo in it?</th>
			<th>Recorded On</th>
			<th>Main Singer</th>
			<th>Album Version</th>
		</thead>
		<tbody>
			<tr>
				<td>${song.trackName}</td>
				<td>${song.writtenBy}</td>
				<td>${song.length}</td>
				<td>${song.album}</td>
				<td>${song.hasRingo}</td>
				<td>${song.dateRecorded}</td>
				<td>${song.dateRecorded}</td>
				<td>${song.mainSinger}</td>
				<td>${song.albumVersion}</td>
			</tr>
		</tbody>
	</table>

	<form action="updateASongForm.do" method="GET">
		<button type="submit" name="id" value="${song.id}">Do you
			want to update this song?</button>
	</form>
	<form action="destroySong.do" method="POST">
		<button type="submit" name="id" value="${song.id}">Let's
			Delete</button>
	</form>
	<br>

	<form action="home.do">
		<input type="submit" value="Go Back Home" />
	</form>
</body>
</html>