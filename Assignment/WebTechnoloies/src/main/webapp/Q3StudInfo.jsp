<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Q3ServletStudInfo">
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
		<td>Mobile Number :</td>
		<td><input type="text" name="mobile"></td>
		</tr>

			
		<tr>
		<td>Gender :</td>
		<td><input type="radio" name="gender" value="male"> male</td>
		<td><input type="radio" name="gender" value="female">female</td>
		</tr>
		
		<tr>
		<td>Password :</td>
		<td><input type="password" name="password"></td>
		</tr>
		
		<tr>
		<td><input type="submit" vaule="display"></td>
		</tr>
		</h1>
	</table>
	</form>
</body>
</html>