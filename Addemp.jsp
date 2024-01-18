<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Employee form</title>
</head>
<body>
  <div class="container">
	     <h1 class="jumbotron">Add Employee Form</h1>
		<form action="Addemp" method="post">
			<!-- <div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eid">
			</div> -->
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="ename">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE DOB</label> <input
					type="date" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="edob" value='' max="2024-01-01">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE Address</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="eaddress" pattern="[a-z,A-Z]{1,150}">
			</div>
			
			<div class="form-group">
    <label>EMPLOYEE Gender</label>
         <div class="form-check">
       		<input type="radio" name="gender" value="0" />Male
	   		<input type="radio" name="gender" value="1" />Female
	   	</div>
</div>
			<div class="form-group">
				<label for="exampleInputEmail1">EMPLOYEE Salary</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="esalary" maxlength="5">
			</div>

			<button type="submit" class="btn btn-primary">SUBMIT</button>
			<button type="reset" class="btn btn-primary">CLEAR</button>
		</form>
		</div>
</body>
</html>