<%@page import="com.DAO.ViewEmpDAO"%>
<%@page import="com.Model.EmpModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ViewEmployee.css">
</head>
<body>
	<form method="post">
		<table border="2">
			<tr>
				<th colspan="11"><h1>List of Employee</h1></th>
			</tr>
			<tr>
				<td>EMPID</td>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Email</td>
				<td>Mobile</td>
				<td>Address</td>
				<td>Gender</td>
				<td>Password</td>
				<td>CPassword</td>
			</tr>
			<%
				ArrayList<EmpModel> empmodel=new ViewEmpDAO().viewEmp();
				for(EmpModel emp:empmodel)
				{
			%>
			<tr>
				<td><%=emp.getEmpid()%></td>
				<td><%=emp.getFirstname()%></td>
				<td><%=emp.getLastname()%></td>
				<td><%=emp.getEmail()%></td>
				<td><%=emp.getMobile()%></td>
				<td><%=emp.getAddress()%></td>
				<td><%=emp.getGender()%></td>
				<td><%=emp.getPassword()%></td>
				<td><%=emp.getCpassword()%></td>
				<td><a href="ViewEmpController?action=edituser&empid=<%=emp.getEmpid()%>">EDIT</a></td>
				<td><a href="ViewEmpController?action=deleteuser&empid=<%=emp.getEmpid()%>">DELETE</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
	<br>
	<br>
	<c:if test="${eemodel.empid > 0 }">
	<form action="ViewEmpController" method="post">
	<table>
	<tr>
	<th colspan="3">Edit User</th>
	</tr>
		<tr>
		<td>First Name :</td>
		<td><input type="text" name="firstname" value="${eemodel.firstname }"></td>
		</tr>
		
		<tr>
		<td>Last Name :</td>
		<td><input type="text" name="lastname" value="${eemodel.lastname }"></td>
		</tr>		
		
		
		<tr>
		<td>Email :</td>
		<td><input type="text" name="email" value="${eemodel.email }"></td>
		</tr>
		
		
		<tr>
		<td>Mobile Number :</td>
		<td><input type="text" name="mobile" value="${eemodel.mobile }"></td>
		</tr>
		
		
		<tr>
		<td>Address :</td>
		<td><input type="text" name="address" value="${eemodel.address }"></td>
		</tr>
	
		<tr>
		<td>Gender :</td>
		<td><input type="radio" name="gender" value="male" <c:if test="${eemodel.gender == 'male'}">checked</c:if>> male
		<input type="radio" name="gender" value="female"  <c:if test="${eemodel.gender == 'female'}">checked</c:if>> >female</td>
		</tr>
		
		<tr>
		<td>Password :</td>
		<td><input type="password" name="password" value="${eemodel.password }"></td>
		</tr>
		
		<tr>
		<td>Confirm Password :</td>
		<td><input type="password" name="cpassword" value="${eemodel.cpassword }"><input type="hidden" name="empid" value="${eemodel.empid }"></td>
		</tr>
		
		<tr>
		<td><input type="submit" vaule="UPDATE"></td>
		</tr>
	</table>
</form>
</c:if>
<c:if test="${msg !=null }">
	${msg }
</c:if>
</body>
</html>