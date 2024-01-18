
<%@page import="com.emp.project.controller.*"%>
<%@page import="com.emp.project.dto.Emp1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <% 
		ArrayList<Emp1> list = (ArrayList<Emp1>) request.getAttribute("LIST");
	String mm = (String) request.getAttribute("msg");
	%>

	<div class="container">
		<%
			if (mm != null)
			out.println("<h2> " + mm + "</h2>");
		%>
		<table class="table" border="1">
		<h1>All Employee List</h1>
			<thead class="thead thead-dark">
				<th>Emp Id</th>
				<th>Name</th>
				<th>DOB</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Salary</th>
				<th>Delete</th>
				<th>Update</th>
			</thead>
			<%

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Empdata", "root", "root");
				PreparedStatement ps = con.prepareStatement("select * from emptable");
                /*  Emp1 ee=new Emp1(); */
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					%>
					<tr>
					 <td><%=rs.getString(1)%></td>
					 <td><%=rs.getString(2)%></td>
					 <td><%=rs.getString(3)%></td>
					 <td><%=rs.getString(4)%></td>
					 <td><%=rs.getString(5)%></td>
					 <td><%=rs.getString(6)%></td>
					 <td><a href="Empdelete?eid=<%=rs.getString(1)%>"
					class="btn btn-danger"
					onclick="return confirm('Are You Sure To Delete This Record?')">DELETE
				</a></td>
				<td><a href="Empupdate?employeeid=<%=rs.getString(1)%>"
					class="btn btn-primary">UPDATE</a></td>
					 </tr>	
					 <%		 
				}
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

				
			%>
		</table>
	</div>

</body>
</html>