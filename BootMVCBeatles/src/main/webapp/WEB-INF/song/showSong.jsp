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
<!--  -->

<h1>Here Comes Yer Song</h1>
<div>
  <h4>${song.id} (${song.trackName})</h4>
  <p>${song.album}</p>
</div>


</body>
</html>