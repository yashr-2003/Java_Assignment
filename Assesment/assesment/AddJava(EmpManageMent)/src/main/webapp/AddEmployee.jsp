<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/AddEmployee.css">

</head>
<body>
${msg }
<form action="AddEmpController" method="post">

	<table>
	<tr>
	<th colspan="3">AddEmployee</th>
	</tr>
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
		<td>Address :</td>
		<td><input type="text" name="address"></td>
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
		<td>Confirm Password :</td>
		<td><input type="password" name="cpassword"></td>
		</tr>
		
		<tr>
		<td><input type="submit" vaule="display"></td>
		</tr>
	</table>

</form>
</body>
</html>