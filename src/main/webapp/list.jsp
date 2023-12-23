<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SchoolMenu.com</title>
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
	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-3 col-lg-2 d-md-block bg-black sidebar">
				<div class="sidebar-sticky">
					<h2 class="sidebar-heading">School Menu</h2>
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle  " href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Academics </a>
							<div class="dropdown-menu  bg-info"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="TeacherReg.jsp">Teacher Registration Form</a>
								<a class="dropdown-item" href="EmployeeRej.jsp">Employee Registration Form</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>

						<li class="nav-item dropdown  "><a
							class="nav-link dropdown-toggle  " href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Admissions </a>
							<div class="dropdown-menu  bg-info"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="StAdmissions.jsp">Students</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
						<li class="nav-item dropdown  "><a
							class="nav-link dropdown-toggle  " href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> View Details </a>
							<div class="dropdown-menu bg-info"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="process.jsp?source=Teacher">Teacher`s</a>
								 <a
									class="dropdown-item" href="process.jsp?source=Student">Student`s</a>
										<a class="dropdown-item" href="process.jsp?source=employee">Employee</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
					</ul>
				</div>
			</nav>
 
 	<div id="carouselExampleIndicators" class="carousel slide col-md-9 ml-sm-auto col-lg-10 px-md-4" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    Add more indicators for additional slides
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://www.brookings.edu/wp-content/uploads/2020/05/empty-classroom_elementary-school-middle-school-high-school.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 " src="https://www.everypixel.com/i/high_res/school-kids.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 " src="http://www.csus.edu/news/files/empty-elementary-classroom.jpg" alt="Third slide">
    </div>
    Add more carousel items with images
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

 
			   
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
