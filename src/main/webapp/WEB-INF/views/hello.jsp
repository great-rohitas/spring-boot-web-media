<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Boot</title>
</head>
<body>
  <h1>Spring Boot - Media Server Application</h1>
   <img src="resources/pic.jpg" alt="Smiley face" height="300" width="200"> 
   <object data="resources/test.pdf" type="application/pdf" width="400" height="300">
   <embed src="resources/test.pdf" width="500" height="375" type='application/pdf'>
  <hr>

  <h2>Your name is ${name}</h2>
	<video style="border:5px solid black" width="300" height="250" controls>
    <source src="resources/video/movie.mp4" type="video/mp4" >
        Your browser does not support the video tag.
  </video>
  <video style="border:5px solid black" width="300" height="250" controls>
    <source src="resources/video/b.mp4" type="video/mp4" >
        Your browser does not support the video tag.
  </video>
  <video style="border:5px solid black" width="300" height="250" controls>
    <source src="resources/video/c.mp4" type="video/mp4" >
        Your browser does not support the video tag.
  </video>
  <hr>
   <audio controls>
  <source src="resources/half.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio> 
  
</body>
</html>