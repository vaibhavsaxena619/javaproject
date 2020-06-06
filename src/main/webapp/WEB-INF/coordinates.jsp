<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
input[type=button], input[type=submit], input[type=reset] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text] {
  background-color: #ffedf8;
  color: black;
}
.h1{
text-align:center;
padding: 20px;
background: #2F3061;
color: white;
}

.for{

font-size: large;
padding: 50px;
text-align: center;
 color: black;
 background: #ffedf8;
 font-family: sans-serif;
 font-style:italic;

}
.hide{
visibility: hidden;
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="h1">
		<h1>Coordinates</h1>
	</div>
	
	<div class="for">
			<form action="weather">
	 		<p><b>City</b>: ${city}</p><br>
	 		<p><b>longitude</b>: ${longitude}</p><br>
	 		<p><b>latitude</b>: ${latitude}</p><br>
	 		<br>
	 		<div class="hide">
	 		<input type="text" name="longitude" value=${longitude}><br>
	 		<input type="text" name="latitude" value=${latitude}><br>
	 		</div>
	 	<input type="submit" value="View Weather Conditions">
	 </form>
	</div>
</body>
</html>