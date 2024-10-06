<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Q8MPSController">
	<table>
	<h1>
		<tr>
		<td>First Name :</td>
		<td><input type="text" name="firstname"></td>
		</tr>
		
		<tr>
		<td>Last Name :</td>
		<td><input type="text" name="lastname"></td>
		</tr>		
		
		
		<tr>
		<td>Email :</td>
		<td><input type="text" name="email"></td>
		</tr>
		
		
		<tr>
		<td>Mobile:</td>
		<td><input type="text" name="mobile"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="register"></td>
		</tr>
		<tr>
			<td><a href="Q8MPSController?action=sendmessage">Message</a></td>
		</tr>
	</form>
	</table>
</body>
</html>