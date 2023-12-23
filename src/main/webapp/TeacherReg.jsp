<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="EM.Helper"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>TeacherRegistrationForm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom styles for the sidebar */
.sidebar {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 250px;
	padding-top: 50px;
	background-color: #343a40; /* Adjust background color */
	color: #fff;
	transition: all 0.3s;
}

.sidebar a {
	padding: 10px 15px;
	text-decoration: none;
	color: #fff;
	display: block;
}

.sidebar a:hover {
	background-color: #495057; /* Hover background color */
}

.sidebar-heading {
	font-size: 1.2em;
	padding: 10px 15px;
}

@media ( max-width : 768px) {
	.sidebar {
		width: 100%;
		z-index: 1;
		height: auto;
		position: relative;
	}
}
</style>
</head>
<body>
	<%@includefile="Header.jsp" %>

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<div class="content">
			<div class="container my-5">
				<div class="row justify-content-center">
					<div class="col-md-8">
						<h2 class="text-center mb-4">Teacher Registration Form</h2>
						<form action="TeacherReg.jsp" method="Post">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="firstName">First Name</label> <input type="text"
										class="form-control" name="firstName"
										placeholder="Enter First Name" required>
								</div>
								<div class="form-group col-md-6">
									<label for="lastName">Last Name</label> <input type="text"
										class="form-control" name="lastName"
										placeholder="Enter Last Name" required>
								</div>
							</div>
							<div class="form-group">
								<label for="address">Address</label> <input type="text"
									class="form-control" name="address" placeholder="Enter Address"
									required>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="qualification">Qualification</label> <input
										type="text" class="form-control" name="qualification"
										placeholder="Enter Qualification" required>
								</div>
								<div class="form-group col-md-6">
									<label for="experience">Experience</label> <input type="number"
										class="form-control" name="experience"
										placeholder="Enter number of year" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="qualification">Contact</label> <input type="number"
										class="form-control" name="contact"
										placeholder="Enter Contact" required>
								</div>
								<div class="form-group col-md-6">
									<label for="experience">RigesterationDate</label> <input
										type="Date" class="form-control" name="rigesterationDate"
										placeholder="Enter RigesterationDate" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="age">Age</label> <input type="number"
										class="form-control" name="age" placeholder="Enter Age"
										required>
								</div>
								<div class="form-group col-md-6">
									<label for="gender">Gender</label> <select name="gender"
										class="form-control" required>
										<option selected>Choose...</option>
										<option>Male</option>
										<option>Female</option>
										<option>Other</option>
									</select>
								</div>
							</div>

							<div class="form-group  ">
								<label for="subject">Subject</label> <input type="text"
									class="form-control" name="subject" placeholder="Enter Subject"
									required>
							</div>


							<div class="form-group">
								<label for="subject">Adhar Number</label> <input type="number"
									class="form-control" name="adharnumber"
									placeholder="Enter adhar number" required>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	</div>
	</div>
	<%
	String firstName = request.getParameter("firstName");
	String LastName = request.getParameter("lastName");
	String Address = request.getParameter("address");
	String Qualification = request.getParameter("qualification");
	String Experience = request.getParameter("experience");
	String Age = request.getParameter("age");
	String Gender = request.getParameter("gender");
	String Subject = request.getParameter("subject");
	String Contact = request.getParameter("contact");
	String Adhar = request.getParameter("adharnumber");
	String RigesterationDate = request.getParameter("rigesterationDate");

	if (firstName != null && !firstName.isEmpty() && !LastName.isEmpty() && LastName != null && !Address.isEmpty()
			&& Address != null && !Qualification.isEmpty() && Qualification != null && !Experience.isEmpty()
			&& Experience != null && !Age.isEmpty() && Age != null && !Gender.isEmpty() && Gender != null
			&& !Subject.isEmpty() && Subject != null && !Contact.isEmpty() && Contact != null && !Adhar.isEmpty()
			&& Adhar != null && !RigesterationDate.isEmpty() && RigesterationDate != null) {
		Helper.teacherData(firstName, LastName, Address, Qualification, Experience, Age, Gender, Subject, Contact, Adhar,
		RigesterationDate);
		response.sendRedirect("list.jsp");
	}
	%>

	<%@includefile="Footer.jsp" %>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
