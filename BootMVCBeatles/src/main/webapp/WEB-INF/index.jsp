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

<h3>What's All This, then?</h3>
<p>To our (beatles fans) delight, we have gotten plenty of remixes, re-releases, lost-tapes, and many other forms of some of the fab four's albums. But there is one inconveniece.... We've got to keep up with the new additions to the Abbey Road album. So, here you go!</p>
<br>
<h4>All Together Now?</h4>
<form action="getAllSongs.do" method="GET">
	<input type="submit" value="ShowAllSongs"/>
</form>
<br>
<h2>Got A New Song From A New Version of Abbey Road?</h2>

<form action="addASongForm.do" method="GET">
	<input type="submit" value="Add Your New Song!"/>
</form>





<a href="showSong"></a><h4>Want to Find Your Song by Track Number?</h4>	
	
	<form action="getSong.do" method="GET">
		Track Number: <input type="text" name="fid" /> <input type="submit"
			value="Show Song" />
</form>

	
</body>
</html>