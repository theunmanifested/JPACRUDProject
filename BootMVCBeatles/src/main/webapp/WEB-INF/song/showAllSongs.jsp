<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beatles Abbey Road Songs</title>
</head>
<body>

<!-- From here, users can use the hyperlink to view all of the details of the song  -->

<h1>All The Songs, Then!</h1>
<table class="table table-striped table-hover">
		<thead class="table-dark">
		  <th>ID</th>
		  <th>Track Name</th>
		</thead>
		<tbody>
			<c:forEach var="s" items="${songList}">
				<tr>
					<td>${s.id}</td>
					<td><a href="getSong.do?fid=${s.id}">${s.trackName}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>