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

<h2>What's the name of this track number, then? -- C(R)UD</h2>
	<form action="getSong.do" method="GET">
		Track Number: <input type="text" name="fid" /> <input type="submit"
			value="Show Song" />
</form>

${test.trackName}
</body>
</html>