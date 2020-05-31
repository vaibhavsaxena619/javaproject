<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="weather">
	 		<p>City: ${city}</p><br>
	 		<p>longitude: ${longitude}</p><br>
	 		<p>latitude: ${latitude}</p><br>
	 		<br>
	 		<br>
	 		<br>
	 		<input type="text" name="longitude" value=${longitude}><br>
	 		<input type="text" name="latitude" value=${latitude}><br>
	 	<input type="submit" value="View Weather Conditions">
	 </form>
</body>
</html>