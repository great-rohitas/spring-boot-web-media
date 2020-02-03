<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot</title>
</head>
<body>
  <h1>Spring Boot - Media Server Application${list}</h1>
  <c:forEach items="${list}" var="listItem">
         
        <video style="border:5px solid black" width="300" height="250" controls>
    <source src="${listItem}" type="video/mp4" >
        Your browser does not support the video tag.
  </video>
  <br />
	</c:forEach>
  
</body>
</html>