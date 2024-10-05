<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management</title>
	<link rel="stylesheet" href="css/Home.css">
		
</head>
<body>
${msg }
    <h1>Employee Management System</h1>
    <div class="container">
    <form action="AddEmployee.jsp">
        <table>
            <tr>
                <td><input type="submit" value="Add Employee"></td>
            </tr>
        </table>
    </form>

    <form action="ViewEmp.jsp" method="get">
        <table>
            <tr>
                <td><input type="submit" value="View Employee"></td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>

