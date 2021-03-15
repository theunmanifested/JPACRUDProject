<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beatles Abbey Road</title>
</head>
<body>
<!--  -->

<h1>Beatles Fab Albums</h1>

<h2>Abbey Road</h2>

<a href=""></a>  <h3>What's All This, then?</h3>
	<form action="getSong.do" method="GET">
		Track Number: <input type="text" name="fid" /> <input type="submit"
			value="Show Song" />
</form>

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