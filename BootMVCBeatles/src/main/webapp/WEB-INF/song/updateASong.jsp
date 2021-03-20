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

	<!-- Song to be Updated Form -->
	<h1>Let's Get That Updated Here!</h1>
<!-- use of "form" tag to allow "path" like attribute, and "modelAttribute"  -->
	<form:form action="updatedSong.do" modelAttribute="song"  method="POST">
		<table>
		<tr>				
				<td><form:input type="hidden" path="id" value ="${song.id}"/>
				</td>
			</tr>
			
			<tr>
				<td>Track Name:</td>
				<td><form:input path="trackName"/>
				</td>
			</tr>
			<tr>
				<td>Written by:</td>
				<td><form:input path="writtenBy"/>
				</td>
			</tr>
			<tr>
				<td>Length:</td>
				<td><form:input path="length"/>
				</td>
			</tr>
			<tr>
				<td>Album</td>
				<td><form:input path="album"/>
				</td>
			</tr>
			<tr>
				<td>Is Ringo Singing in This?</td>
				<td><form:input path="hasRingo"/>
				</td>
			</tr>
			<tr>
				<td>Date Recorded</td>
				<td><form:input path="dateRecorded"/>
				</td>
			</tr>
			<tr>
				<td>Main Singer</td>
				<td><form:input path="mainSinger"/>
				</td>
			</tr>
			<tr>
				<td>New Album's Version Name</td>
				<td><form:input path="albumVersion"/>
				</td>
			</tr>	
			<!-- Submit -->
			<tr>
				<td><button  type="submit" name="id" value="${song.id}">Let's Update This Song!</button>
				</td>
			</tr>
		</table>		
</form:form>

<form action="home.do">
		<input type="submit" value="Go Back Home" />
</form>


	

</body>
</html>