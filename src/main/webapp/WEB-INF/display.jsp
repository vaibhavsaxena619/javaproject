<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

body {

	background: #ffedf8;
  text-align: center;
  color: #343434;
  margin: 0;
  padding: 0;
  font-family: 'Montserrat', sans-serif;
  font-size: 15px;
  line-height: 1.5;
}
.h1{
padding: 20px;
background: #2F3061;
color: white;
}

.for{
padding: 50px;
text-align: center;
 color: black;
 background: #ffedf8;
 font-family: sans-serif;
 font-style:italic;

}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="h1">
		<h1>Choose a City</h1>
	</div>
	
	<div class="for">
		<form action="url">
		City: <input type="text" name="city"><br><br><br>
		<input type="submit" value="Submit">
	</form>
	</div>

</body>
</html>
