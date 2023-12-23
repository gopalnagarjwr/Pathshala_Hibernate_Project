<!DOCTYPE html>
<%@page import="EM.Helper"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>StudentsRegistration</title>
<!-- Bootstrap CSS CDN -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS for colorful styling -->
<style>
body {
	color: #000;
	overflow-x: hidden;
	height: 100%;
	background-image: url("https://schoolpretests.co.uk/assets/images/school.png");
	background-repeat: no-repeat;
	background-size: 100% 100%
}

.card {
	padding: 30px 40px;
	margin-top: 60px;
	margin-bottom: 60px;
	border: none !important;
	box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2)
}

.blue-text {
	color: #00BCD4
}

.form-control-label {
	margin-bottom: 0
}

input, textarea, button {
	padding: 8px 15px;
	border-radius: 5px !important;
	margin: 5px 0px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	font-size: 18px !important;
	font-weight: 300
}

input:focus, textarea:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	border: 1px solid #00BCD4;
	outline-width: 0;
	font-weight: 400
}

.btn-block {
	text-transform: uppercase;
	font-size: 15px !important;
	font-weight: 400;
	height: 43px;
	cursor: pointer
}

.btn-block:hover {
	color: #fff !important
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0
}
</style>
</head>
<body>
<%@includefile="Header.jsp" %>
	<div class="container-fluid px-1 py-5 mx-auto">
		<div class="row d-flex justify-content-center">
			<div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
				<h3>Welcome To Pathshala</h3>
				<!-- <p class="blue-text">
					Just answer a few questions<br> so that we can personalize the
					right experience for you.
				</p> -->
				<div class="card">
					<h5 class="text-center mb-4">Students Registration</h5>
					<form class="form-card"  action="StAdmissions.jsp" method="Post">
						<div class="row justify-content-between text-left">
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">First name<span
									class="text-danger"> *</span></label> <input type="text" id="fname"
									name="fname" placeholder="Enter your first name"
									onblur="validate(1)" required>
							</div>
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Last name<span
									class="text-danger"> *</span></label> <input type="text" id="lname"
									name="lname" placeholder="Enter your last name"
									onblur="validate(2)" required>
							</div>
						</div>
						<div class="row justify-content-between text-left">
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Gender<span
									class="text-danger"> *</span></label>  
									<select name="gender"
												class="form-control" required>
												<option selected>Choose...</option>
												<option>Male</option>
												<option>Female</option>
												<option>Other</option>
											</select>
							</div>
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Phone number<span
									class="text-danger"> *</span></label> <input type="number" id="mob"
									name="contact" placeholder="Phone number.." onblur="validate(4)" required>
							</div>
						</div>
						<div class="row justify-content-between text-left">
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Class<span
									class="text-danger"> *</span></label> <input type="number" id="email"
									name="standard" placeholder="Standard" onblur="validate(3)" required>
							</div>
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Age<span
									class="text-danger"> *</span></label> <input type="number" id="mob"
									name="age" placeholder="age" onblur="validate(4)" required>
							</div>
						</div>
						<div class="row justify-content-between text-left">
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Adhar<span
									class="text-danger"> *</span></label> <input type="number" id="email"
									name="adhar" placeholder="adhar number" onblur="validate(3)" required>
							</div>
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">EnrollDate<span
									class="text-danger"> *</span></label> <input type="Date" id="mob"
									name="enrollDate" placeholder="Enter enrollDate" onblur="validate(4)" required>
							</div>
						</div>
						<div class="row justify-content-between text-left">
							<div class="form-group col-sm-6 flex-column d-flex">
								<label class="form-control-label px-3">Address<span
									class="text-danger"> *</span></label> <input type="Address" 
									name="address" placeholder="Enter address" onblur="validate(5)" required>
							</div>
						</div>
					 
						<div class="row justify-content-end">
							<div class="form-group col-sm-6">
								<button type="submit" class="btn-block btn-primary">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	 <%
		  
	   String firstName=request.getParameter("fname");
	    String LastName=request.getParameter("lname");
	   String Address=request.getParameter("address");
	    String Standard=request.getParameter("standard");
	   String Age=request.getParameter("age");
	   String Gender=request.getParameter("gender");
	    String Contact=request.getParameter("contact");
	    String Adhar=request.getParameter("adhar");
	    String EnrollDate=request.getParameter("enrollDate");
	 
	      
	    if(firstName!=null&&!firstName.isEmpty()&&!LastName.isEmpty()&&LastName!=null&&!Address.isEmpty()&&Address!=null&&!Standard.isEmpty()&&Standard!=null&&
       		  !Age.isEmpty()&&Age!=null&&!Gender.isEmpty()&&Gender!=null&& !Contact.isEmpty()&&Contact!=null&& ! Adhar.isEmpty()&&Adhar!=null&&!EnrollDate.isEmpty()&&EnrollDate!=null)
	    {
	    	 
	    	Helper.studentData(firstName, LastName, Address, Standard, Age, Gender, Contact, Adhar, EnrollDate); 
	       response.sendRedirect("index.jsp");   
	    } 
	    
	        
	 %>

            <%@includefile="Footer.jsp" %>
	<!-- Bootstrap JS CDN -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
