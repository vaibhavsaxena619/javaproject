<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style type="text/css">
 
body {
  color: #343434;
  margin: 0;
  padding: 0;
  font-family: 'Montserrat', sans-serif;
  font-size: 15px;
  line-height: 1.5;
}

 .header{
 width=100%;
 text-align: center;
 padding:15px;
 color: white;
 background: #2F3061;
 font-size: medium;
 font-family: sans-serif;
 font-style:italic;
 }
 
 .tab{
 text-align: center;
 color: black;
 background: #ffedf8;
 font-family: sans-serif;
 font-style:italic;
 }
 
 .footer{
 text-align: center;
 padding:50px;
 color: white;
 background: #A1C6D7;
 font-size: medium;
 font-family: sans-serif;
 font-style:italic;
 }
 
 button {
  background-color: #555555;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
 
 table {
  border-collapse: collapse;
  width: 100%;
}

 table.center {
    margin-left:auto; 
    margin-right:auto;
  }
  
th, td {
  text-align: left;
  padding: 8px;
}

 </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<h1> Weather Details </h1>
		
	</div>
	<div class="tab">
		<table class="center">
			<tr>
				<th> Attributes</th>
				<th> Values</th>
			
			</tr>
			<tr>
				<td> humidity</td>
				<td> ${humidity}%</td>
			</tr>
			<tr>
				<td> pressure</td>
				<td> ${pressure}mb</td>
			</tr>
			<tr>
				<td > feels like</td>
				<td id="fl">C</td>
			</tr>
			<tr>
				<td > Max Temperature</td>
				<td id="maxt"></td>
			</tr>
			<tr>
				<td > Min Temperature</td>
				<td id="mint"> </td>
			</tr>
			<tr>
				<td> sea level</td>
				<td> ${sea_level} above sea level</td>
			</tr>
			<tr>
				<td> temperature</td>
				<td id="temp"></td>
			</tr>
			<tr>
				<td> ground level</td>
				<td> ${grnd_level}m</td>
			</tr>
		</table>
	</div>
	<div class="footer">
		<button onclick="redirect()">Change City</button>
	</div>
	<script>
	
	function redirect()
	{
		 history.go(-2);
	}
	
	function toCelsius(s)
	{
		var a = s-275.15;
		return a;
	}
	
	document.getElementById("fl").innerHTML = Math.round(toCelsius(${feels_like}))+" C";
	document.getElementById("maxt").innerHTML = Math.round(toCelsius(${temp_max}))+" C";
	document.getElementById("mint").innerHTML = Math.round(toCelsius(${temp_min}))+" C";
	document.getElementById("temp").innerHTML = Math.round(toCelsius(${temp}))+" C";
	</script>
</body>
</html>