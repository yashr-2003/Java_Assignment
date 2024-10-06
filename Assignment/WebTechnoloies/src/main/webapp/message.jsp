<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Q8MPSController" method="post">
	<table border="2">
		<tr>
			<td>From(email) :</td>
			<td><input type="text" name="from"></td>
		</tr>
		<tr>
			<td>To(email) :</td>
			<td><input type="text" name="to"></td>
		</tr>
		<tr>
			<td>Message:</td>
			<td><input type="text" name="msg"></td>
		</tr>
		<tr>
			<td><input type="submit" value="send"></td>
		</tr>
</table>
</form>
</body>
</html>