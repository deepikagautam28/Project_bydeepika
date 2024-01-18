<%@page import="com.emp.project.dto.Emp1"%>
<%@page import="com.emp.project.controller.*"%>
<%@page import="com.emp.project.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <div class="container">
		<h1 class="jumbotron">Employee Update Form</h1>
		
		<%Emp1 m = (Emp1) request.getAttribute("EMP"); %>
		<form action="Empupdate" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="employeeid" value="<%=m.getEmployeeid()%>"
					readonly="readonly">		
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="ename" value="<%=m.getName()%>">
			</div>	
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ADDRESS</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eaddress"
					value="<%=m.getAddress()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Gender</label> <input
					type="int" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="gender"
					value="<%=m.getGender()%>">
			</div>	
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE SALARY</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="esalary"
					value="<%=m.getSalary()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DOB</label> <input
					type="date" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edob" value="<%=m.getDob()%>">
			</div>

			<button type="submit" class="btn btn-primary">UPDATE</button>
			<button type="reset" class="btn btn-primary">CLEAR</button>
		</form>
	</div>

</body>
</html>