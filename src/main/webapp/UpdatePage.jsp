<!DOCTYPE html>
<%@page import="EM.Employee"%>
<%@page import="EM.Teachers"%>
<%@page import="EM.Students"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="EM.Helper"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Add some custom styles if needed */
/* Example: Centering the form */
.custom-form {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-top: 50px;
}
</style>
</head>
<body>
	<%
	String source = request.getParameter("source");
	if (source != null && source.startsWith("s")) {
		int id = Integer.parseInt(source.substring(1));
		Session s = Helper.getSession().openSession();
		Query query = s.createQuery("from Students where id=:n");
		query.setParameter("n", id);
		List<Students> studentList = query.getResultList();
		Students st = null;
		if (!studentList.isEmpty()) {
			st = studentList.get(0);
		}
		s.close();
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form class="custom-form" action="process.jsp?source=Student"
					method="Post">
					<div class="form-group" style="display: none">
						<label for="id">ID</label> <input name="id" type="text"
							class="form-control" placeholder="Enter ID"
							value="<%=st.getId()%>">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="firstName">First Name</label> <input type="text"
								class="form-control" name="fname" placeholder="Enter First Name"
								value="<%=st.getFirstName()%>">
						</div>
						<div class="form-group col-md-6">
							<label for="lastName">Last Name</label> <input type="text"
								class="form-control" name="lname" placeholder="Enter Last Name"
								value="<%=st.getLastName()%>">
						</div>
					</div>
					<div class="form-group">
						<label for="address">Address</label> <input type="text"
							class="form-control" name="address" placeholder="Enter Address"
							value="<%=st.getAddress()%>">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="standard">Standard</label> <input type="text"
								class="form-control" name="standard"
								placeholder="Enter Standard" value="<%=st.getStandard()%>">
						</div>
						<div class="form-group col-md-6">
							<label for="age">Age</label> <input type="number"
								class="form-control" name="age" placeholder="Enter Age"
								value="<%=st.getAge()%>">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="gender">Gender</label> <select class="form-control"
								name="gender" value="<%=st.getGender()%>">
								<option value="male">Male</option>
								<option value="female">Female</option>
								<option value="other">Other</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="adhar">Adhar</label> <input type="text"
								class="form-control" name="adhar"
								placeholder="Enter Adhar Number" value="<%=st.getAdhar()%>">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="contact">Contact</label> <input type="text"
								class="form-control" name="contact"
								placeholder="Enter Contact Number" value="<%=st.getContact()%>">
						</div>
						<div class="form-group col-md-6">
							<label for="enrollmentDate">Enrollment Date</label> <input
								type="date" class="form-control" name="enrollmentDate"
								value="<%=st.getEnrollDate()%>">
						</div>
					</div>
					<div class="d-flex justify-content-around">
						<button type="submit" class="btn btn-primary ">
							<a href="process.jsp?source=Student"
								class="text-white text-decoration-none">Back</a>
						</button>
						<button class="btn btn-success u m-auto" type="submit">Update
						</button>
					</div>

				</form>

			</div>
		</div>
	</div>
	<%
	} else if (source != null && source.startsWith("e")) {
	int id = Integer.parseInt(source.substring(1));
	Session s = Helper.getSession().openSession();
	Query query = s.createQuery("from Employee where id=:n");
	query.setParameter("n", id);
	List<Employee> emList = query.getResultList();
	Employee em = null;
	if (!emList.isEmpty()) {
		em = emList.get(0);
	}
	s.close();
	%>
	<div class="container my-5">
		<form action="process.jsp?source=employee" method="Post">
			<div class="col">
				<div data-mdb-input-init class="form-outline" style="display: none">
					<input type="number" name="id" class="form-control"
						value="<%=em.getId()%>" /> <label class="form-label"
						for="form6Example1">Id</label>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="text" name="firstName" class="form-control"
							value="<%=em.getFirstName()%>" /> <label class="form-label"
							for="form6Example1">First name</label>
					</div>
				</div>
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="text" name="lastName" class="form-control"
							value="<%=em.getLastName()%>" /> <label class="form-label"
							for="form6Example2">Last name</label>
					</div>
				</div>
			</div>


			<div data-mdb-input-init class="form-outline mb-2">
				<input type="text" name="address" class="form-control"
					value="<%=em.getAddress()%>" /> <label class="form-label"
					for="form6Example3">Address</label>
			</div>

			<div class="row mb-2">
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="number" name="age" class="form-control"
							value="<%=em.getAge()%>" /> <label class="form-label"
							for="form6Example1">Age</label>
					</div>
				</div>
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="text" name="work" class="form-control"
							value="<%=em.getWork()%>" /> <label class="form-label"
							for="form6Example2">Work</label>
					</div>
				</div>
			</div>



			<div class="row mb-2">
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="number" name="adhar" class="form-control"
							value="<%=em.getAdhar()%>" /> <label class="form-label"
							for="form6Example1">Adhar Number</label>
					</div>
				</div>
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="date" name="date" class="form-control"
							value="<%=em.getDate()%>" /> <label class="form-label"
							for="form6Example2">Date</label>
					</div>
				</div>
			</div>


			<div data-mdb-input-init class="form-outline mb-2">
				<input type="email" name="emailAddress" class="form-control"
					value="<%=em.getEmail()%>" /> <label class="form-label"
					for="form6Example5">Email</label>
			</div>
			<div class="row mb-2">
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<input type="number" name="phoneNumber" class="form-control"
							value="<%=em.getContact()%>" /> <label class="form-label"
							for="form6Example6">Phone</label>
					</div>
				</div>
				<div class="col">
					<div data-mdb-input-init class="form-outline">
						<div>
							<select name="gender" class="form-control" required
								value="<%=em.getGender()%>">
								<option  hidden>Choose...</option>
								<option>Male</option>
								<option>Female</option>
								<option>Other</option>
							</select> <label for="gender">Gender</label>
						</div>
					</div>
				</div>
			</div>

			<button data-mdb-ripple-init type="submit"
				class="btn btn-primary btn-block mb-4">Update</button>
		</form>
	</div>

	<%
	} else {
	int id = Integer.parseInt(source);

	Session s = Helper.getSession().openSession();
	Query query = s.createQuery("from Teachers where id=:n");
	query.setParameter("n", id);
	List<Teachers> teacherList = query.getResultList();
	Teachers ts = teacherList.get(0);
	%>

	<div class="container">
		<form class="form-container" action="process.jsp?source=Teacher"
			method="post">
			<h2>Teacher Information</h2>
			<div class="form-row">
				<div class="form-group col-md-6" style="display: none">
					<label for="id">ID</label> <input type="text" class="form-control"
						id="id" name="i" value="<%=ts.getId()%>">
				</div>
				<div class="form-group col">
					<label for="firstName">First Name</label> <input type="text"
						class="form-control" id="firstName" name="fn"
						value="<%=ts.getFirstName()%>">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="lastName">Last Name</label> <input type="text"
						class="form-control" id="lastName" name="ln"
						value="<%=ts.getLastName()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="address">Address</label> <input type="text"
						class="form-control" id="address" name="add"
						value="<%=ts.getAddress()%>">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="qualification">Qualification</label> <input type="text"
						class="form-control" id="qualification" name="qua"
						value="<%=ts.getQualification()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="experience">Experience</label> <input type="text"
						class="form-control" id="experience" name="exp"
						value="<%=ts.getExperience()%>">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="age">Age</label> <input type="number"
						class="form-control" id="age" name="ag" value="<%=ts.getAge()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="gender">Gender</label> <select class="form-control"
						value="<%=ts.getGender()%>" id="gender" name="gen">
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="subject">Subject</label> <input type="text"
						class="form-control" id="subject" name="sub"
						value="<%=ts.getSubject()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="contact">Contact</label> <input type="text"
						class="form-control" id="contact" name="con"
						value="<%=ts.getContact()%>">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="adhar">Adhar</label> <input type="text"
						class="form-control" id="adhar" name="adh"
						value="<%=ts.getAdhar()%>">
				</div>
				<div class="form-group col-md-6">
					<label for="registrationDate">Registration Date</label> <input
						type="date" class="form-control" id="registrationDate"
						name="enrollment" value="<%=ts.getRigesterationDate()%>">
				</div>
			</div>
			<button class="btn btn-success u m-auto" type="submit">
				Update</button>
		</form>
	</div>

	<%
	}
	%>











	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
