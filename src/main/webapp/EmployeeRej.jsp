<%@page import="EM.Helper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Employee Registration</title>
</head>
<style>
.gradient-custom {
	background: #f093fb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1));
	background: linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled])
	{
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}
</style>
<body>
	<%@includefile="Header.jsp" %>
	<section class=" gradient-custom">
		<div class="container py-3 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7">
					<div class="card shadow-1-strong card-registration"
						style="border-radius: 15px;">
						<div class="card-body p-4 p-md-5">
							<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
							<form action="EmployeeRej.jsp" method="Post">

								<div class="row">
									<div class="col-md-6 mb-4">

										<div class="form-outline">
											<input type="text" name="firstName"
												class="form-control form-control-lg" /> <label
												class="form-label" for="firstName">First Name</label>
										</div>

									</div>
									<div class="col-md-6 mb-4">

										<div class="form-outline">
											<input type="text" name="lastName"
												class="form-control form-control-lg" /> <label
												class="form-label" for="lastName">Last Name</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-4 d-flex align-items-center">

										<div class="form-outline datepicker w-100">
											<input type="address" class="form-control form-control-lg"
												name="address" /> <label for="birthdayDate"
												class="form-label">Address</label>
										</div>

									</div>
									<div class="col-md-6 mb-4">

										<h6 class="mb-2 pb-1">Gender:</h6>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="femaleGender" value="Female" /> <label
												class="form-check-label" for="femaleGender">Female</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="maleGender" value="Male" /> <label
												class="form-check-label" for="maleGender">Male</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="otherGender" value="Other" /> <label
												class="form-check-label" for="otherGender">Other</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="email" name="emailAddress"
												class="form-control form-control-lg" /> <label
												class="form-label" for="emailAddress">Email</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="tel" name="phoneNumber"
												class="form-control form-control-lg" /> <label
												class="form-label" for="phoneNumber">Phone Number</label>
										</div>

									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="number" name="age"
												class="form-control form-control-lg" /> <label
												class="form-label" for="">Age</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="text" name="work"
												class="form-control form-control-lg" /> <label
												class="form-label" for="phoneNumber">Work</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="number" name="adhar"
												class="form-control form-control-lg" /> <label
												class="form-label">Adhar</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="date" name="date"
												class="form-control form-control-lg" /> <label
												class="form-label" for="phoneNumber">Date</label>
										</div>

									</div>
								</div>


								<div class="mt-4 pt-2">
									<input class="btn btn-primary btn-lg" type="submit"
										value="Submit" />
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
	String firstName = request.getParameter("firstName");
	String LastName = request.getParameter("lastName");
	String Address = request.getParameter("address");
	String work = request.getParameter("work");
	String email = request.getParameter("emailAddress");
	String Age = request.getParameter("age");
	String Gender = request.getParameter("gender");
	String Contact = request.getParameter("phoneNumber");
	String Adhar = request.getParameter("adhar");
	String date = request.getParameter("date");

	if (firstName != null && !firstName.isEmpty() && !LastName.isEmpty() && LastName != null && !Address.isEmpty()
			&& Address != null && !work.isEmpty() && work != null && !email.isEmpty() && email != null && !Age.isEmpty()
			&& Age != null && !Gender.isEmpty() && Gender != null && !Contact.isEmpty() && Contact != null
			&& !Adhar.isEmpty() && Adhar != null && !date.isEmpty() && date != null) {
		Helper.employeeDate(firstName, LastName, Address, work, email, Age, Gender, Contact, Adhar, date);
		response.sendRedirect("list.jsp");
	}
	%>

	<%@includefile="Footer.jsp" %>
</body>
</html>