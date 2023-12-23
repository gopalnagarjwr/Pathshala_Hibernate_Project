<!DOCTYPE html>

<%@page import="EM.Employee"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="EM.Students"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="EM.Teachers"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="EM.Helper"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
	<%@includefile="Header.jsp" %>
	<div class="container-fluid my-5">
		<!-- 	<h2>Teachers Information</h2> -->
		<div class="table-responsive">
			<table class="table table-striped table-bordered">
				<thead class="thead-dark">
					<%
					String source = request.getParameter("source");

					if (source.equals("Teacher")) {

						String d = request.getParameter("i");
						String firstName = request.getParameter("fn");
						String LastName = request.getParameter("ln");
						String Address = request.getParameter("add");
						String Qualification = request.getParameter("qua");
						String Experience = request.getParameter("exp");
						String Age = request.getParameter("ag");
						String Gender = request.getParameter("gen");
						String Subject = request.getParameter("sub");
						String Contact = request.getParameter("con");
						String Adhar = request.getParameter("adh");
						String RigesterationDate = request.getParameter("enrollment");

						if (firstName != null && !firstName.isEmpty() && !LastName.isEmpty() && LastName != null && !Address.isEmpty()
						&& Address != null && !Qualification.isEmpty() && Qualification != null && !Experience.isEmpty()
						&& Experience != null && !Age.isEmpty() && Age != null && !Gender.isEmpty() && Gender != null
						&& !Subject.isEmpty() && Subject != null && !Contact.isEmpty() && Contact != null && !Adhar.isEmpty()
						&& Adhar != null && !RigesterationDate.isEmpty() && RigesterationDate != null) {
							Helper.teacherUpdate(d, firstName, LastName, Address, Qualification, Experience, Age, Gender, Subject, Contact,
							Adhar, RigesterationDate);

						}
					%>
					<div class="col-md-6 offset-md-3 my-md-5">
						<h2>Search Your Data</h2>
						<form class="custom-form" method="post"
							action="process.jsp?source=Teacher">
							<div class="form-group">
								<label for="firstName">First Name</label> <input type="text"
									class="form-control" name="fname"
									placeholder="Enter First Name">
							</div>
							<div class="form-group">
								<label for="lastName">Last Name</label> <input type="text"
									class="form-control" name="lname" placeholder="Enter Last Name">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Search</button>
								<!-- Optional button to reset the form -->
								<button type="reset" class="btn btn-secondary ml-2">Reset</button>
							</div>
						</form>
					</div>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Address</th>
						<th>Qualification</th>
						<th>Experience</th>
						<th>Age</th>
						<th>Gender</th>
						<th>Subject</th>
						<th>Contact</th>
						<th>Adhar</th>
						<th>Registration Date</th>
						<th>Edite</th>
					</tr>
				</thead>
				<tbody>
					<%
					String fn = request.getParameter("fname");
					String ln = request.getParameter("lname");
					List<Teachers> l;

					if (fn != null && !fn.isEmpty() && ln != null && !ln.isEmpty()) {
						Session s = Helper.getSession().openSession();
						Query<Teachers> query = s.createQuery("FROM Teachers WHERE firstName=:fn AND lastName=:ln", Teachers.class);
						query.setParameter("fn", fn);
						query.setParameter("ln", ln);
						l = query.getResultList();
						s.close();
					} else {
						Session s = Helper.getSession().openSession();
						Query q = s.createQuery("from Teachers");
						l = q.getResultList();
						s.close();
					}

					if (l.size() == 0) {
					%>
					<tr>
						<td>recourd ? not found</td>
					</tr>

					<%
					}
					for (Teachers t : l) {
					%>

					<tr>
						<td><%=t.getId()%></td>
						<td><%=t.getFirstName()%></td>
						<td><%=t.getLastName()%></td>
						<td><%=t.getAddress()%></td>
						<td><%=t.getQualification()%></td>
						<td><%=t.getExperience()%></td>
						<td><%=t.getAge()%></td>
						<td><%=t.getGender()%></td>
						<td><%=t.getSubject()%></td>
						<td><%=t.getContact()%></td>
						<td><%=t.getAdhar()%></td>
						<td><%=t.getRigesterationDate()%></td>
						<td>
							<button class="btn btn-success u m-auto">
								<a href="UpdatePage.jsp?source=<%=t.getId()%>"
									class="text-white text-decoration-none">Update</a>
							</button>
							<button class="btn btn-danger r m-auto">
								<a href="process.jsp?source=<%="0" + t.getId()%>"
									class="text-white text-decoration-none">Remove</a>
							</button>
						</td>
					</tr>
					<%
					}
					} else if (source.equals("Student")) {
					%>
					<div class="col-md-6 offset-md-3 my-md-5">
						<h2>Search Your Data</h2>
						<form class="custom-form" method="post"
							action="process.jsp?source=Student">
							<div class="form-group">
								<label for="firstName">First Name</label> <input type="text"
									class="form-control" name="fn" placeholder="Enter First Name">
							</div>
							<div class="form-group">
								<label for="lastName">Last Name</label> <input type="text"
									class="form-control" name="ln" placeholder="Enter Last Name">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Search</button>
								<!-- Optional button to reset the form -->
								<button type="reset" class="btn btn-secondary ml-2">Reset</button>
							</div>
						</form>
					</div>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Address</th>
						<th>Standard</th>
						<th>Age</th>
						<th>Gender</th>
						<th>Adhar</th>
						<th>Contact</th>
						<th>Enrollment Date</th>
						<th>Edite</th>
					</tr>
				</thead>
				<tbody>
					<%
					String d = request.getParameter("id");
					String firstName = request.getParameter("fname");
					String LastName = request.getParameter("lname");
					String Address = request.getParameter("address");
					String Standard = request.getParameter("standard");
					String Age = request.getParameter("age");
					String Gender = request.getParameter("gender");
					String Contact = request.getParameter("contact");
					String Adhar = request.getParameter("adhar");
					String EnrollDate = request.getParameter("enrollmentDate");

					if (firstName != null && !firstName.isEmpty() && !LastName.isEmpty() && LastName != null && !Address.isEmpty()
							&& Address != null && !Standard.isEmpty() && Standard != null && !Age.isEmpty() && Age != null
							&& !Gender.isEmpty() && Gender != null && !Contact.isEmpty() && Contact != null && !Adhar.isEmpty()
							&& Adhar != null && !EnrollDate.isEmpty() && EnrollDate != null) {

						Helper.update(d, firstName, LastName, Address, Standard, Age, Gender, Contact, Adhar, EnrollDate);

					} else {

					}

					String fn = request.getParameter("fn");
					String ln = request.getParameter("ln");
					List<Students> l;

					if (fn != null && !fn.isEmpty() && ln != null && !ln.isEmpty()) {
						Session s = Helper.getSession().openSession();
						Query<Students> query = s.createQuery("FROM Students WHERE firstName=:fn AND lastName=:ln", Students.class);
						query.setParameter("fn", fn);
						query.setParameter("ln", ln);
						l = query.getResultList();
						s.close();
					} else {
						Session s = Helper.getSession().openSession();
						Query q = s.createQuery("from Students");
						l = q.getResultList();
					}
					if (l.size() == 0) {
					%>
					<tr>
						<td>recourd ? not found</td>
					</tr>

					<%
					}

					for (Students st : l) {
					%>
					<tr>
						<td><%=st.getId()%></td>
						<td><p class="a"><%=st.getFirstName()%></p></td>
						<td><p class="a"><%=st.getLastName()%></p></td>
						<td><p class="a"><%=st.getAddress()%></p></td>
						<td><p class="a"><%=st.getStandard()%></p></td>
						<td><p class="a"><%=st.getAge()%></p></td>
						<td><p class="a"><%=st.getGender()%></p></td>
						<td><p class="a"><%=st.getAdhar()%></p></td>
						<td><p class="a"><%=st.getContact()%></p></td>
						<td><p class="a"><%=st.getEnrollDate()%></p></td>
						<td>
							<button class="btn btn-success u m-auto">
								<a href="UpdatePage.jsp?source=<%="s" + st.getId()%>"
									class="text-white text-decoration-none">Update</a>
							</button>
							<button class="btn btn-danger r m-auto">
								<a href="process.jsp?source=<%=st.getId()%>"
									class="text-white text-decoration-none">Remove</a>
							</button>
						</td>
					</tr>
					<%
					}
					} else if (source.equals("employee")) {
					%>

					<div class="col-md-6 offset-md-3 my-md-5">
						<h2>Search Your Data</h2>
						<form class="custom-form" method="post"
							action="process.jsp?source=employee">
							<div class="form-group">
								<label for="firstName">First Name</label> <input type="text"
									class="form-control" name="fn" placeholder="Enter First Name">
							</div>
							<div class="form-group">
								<label for="lastName">Last Name</label> <input type="text"
									class="form-control" name="ln" placeholder="Enter Last Name">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Search</button>
								<!-- Optional button to reset the form -->
								<button type="reset" class="btn btn-secondary ml-2">Reset</button>
							</div>
						</form>
					</div>

					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">FirstName</th>
									<th scope="col">LastName</th>
									<th scope="col">EmailAddress</th>
									<th scope="col">Address</th>
									<th scope="col">Age</th>
									<th scope="col">Gender</th>
									<th scope="col">Work</th>
									<th scope="col">Adhar_Number</th>
									<th scope="col">Contact</th>
									<th scope="col">Date</th>
									<th>Edite</th>
								</tr>
							</thead>
							<tbody>
								<%
								String d = request.getParameter("id");
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
									Helper.employeeUpdate(d,firstName, LastName, Address, work, email, Age, Gender, Contact, Adhar, date);
								 
								} else {

								}
								
								
								String fn = request.getParameter("fn");
								String ln = request.getParameter("ln");
								List<Employee> l;

								if (fn != null && !fn.isEmpty() && ln != null && !ln.isEmpty()) {
									Session s = Helper.getSession().openSession();
									Query<Employee> query = s.createQuery("FROM Employee WHERE firstName=:fn AND lastName=:ln", Employee.class);
									query.setParameter("fn", fn);
									query.setParameter("ln", ln);
									l = query.getResultList();
									s.close();
								} else {
									Session s = Helper.getSession().openSession();
									Query q = s.createQuery("from Employee");
									l = q.getResultList();
								}

								if (l.size() == 0) {
								%>
								<tr>
									<td>recourd ? not found</td>
								</tr>

								<%
								}

								for (Employee em : l) {
								%>
								<tr scope="row">
									<td><%=em.getId()%></td>
									<td><%=em.getFirstName()%></td>
									<td><%=em.getLastName()%></td>
									<td><%=em.getEmail()%></td>
									<td><%=em.getAddress()%></td>
									<td><%=em.getAge()%></td>
									<td><%=em.getGender()%></td>
									<td><%=em.getWork()%></td>
									<td><%=em.getAdhar()%></td>
									<td><%=em.getContact()%></td>
									<td><%=em.getDate()%></td>
									<td>
										<button class="btn btn-success u m-auto">
											<a href="UpdatePage.jsp?source=<%="e" + em.getId()%>"
												class="text-white text-decoration-none">Update</a>
										</button>
										<button class="btn btn-danger r m-auto">
											<a href="process.jsp?source=<%="o" + em.getId()%>"
												class="text-white text-decoration-none">Remove</a>
										</button>
									</td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>

					<%
					} else if (source != null) {
					if (source.charAt(0) == 'o') {
						int id = Integer.parseInt(source.substring(1));
						Session s = Helper.getSession().openSession();
						Transaction transaction = null;

						try {
							transaction = s.beginTransaction();

							Query query = s.createQuery("delete from Employee where id=:n");
							query.setParameter("n", id);
							query.executeUpdate();

							transaction.commit();
							response.sendRedirect("process.jsp?source=employee");
						} catch (Exception e) {
							if (transaction != null) {
						transaction.rollback();
							}

						} finally {
							s.close();
						}
					}

					else if (Integer.parseInt(String.valueOf(source.charAt(0))) == 0) {
						int id = Integer.parseInt(source.substring(1));
						Session s = Helper.getSession().openSession();
						Transaction transaction = null;

						try {
							transaction = s.beginTransaction();

							Query query = s.createQuery("delete from Teachers where id=:n");
							query.setParameter("n", id);
							query.executeUpdate();

							transaction.commit();
							response.sendRedirect("process.jsp?source=Teacher");
						} catch (Exception e) {
							if (transaction != null) {
						transaction.rollback();
							}

						} finally {
							s.close();
						}
					}

					else {
						int id = Integer.parseInt(source);
						Session s = Helper.getSession().openSession();
						Transaction transaction = null;

						try {
							transaction = s.beginTransaction();

							Query query = s.createQuery("delete from Students where id=:n");
							query.setParameter("n", id);
							query.executeUpdate();

							transaction.commit();
							response.sendRedirect("process.jsp?source=Student");
						} catch (Exception e) {
							if (transaction != null) {
						transaction.rollback();
							}
							// Handle exception
						} finally {
							s.close();
						}
					}

					}
					%>




				</tbody>
			</table>
		</div>
	</div>
	<%@includefile="Footer.jsp" %>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
