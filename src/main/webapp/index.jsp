
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
.about-section {
	padding: 100px 0;
	background-color: #f8f9fa;
	text-align: center;
}

.about-heading {
	font-size: 40px;
	margin-bottom: 20px;
}

.about-content {
	font-size: 18px;
}

/* Image style */
.about-img {
	max-width: 100%;
	border-radius: 50%;
	margin-bottom: 30px;
}
</style>

<body>
	<%@includefile="Header.jsp" %>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<!-- Add more indicators for additional slides -->
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100 h-75"
					src="https://www.brookings.edu/wp-content/uploads/2020/05/empty-classroom_elementary-school-middle-school-high-school.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100 h-75"
					src="https://www.everypixel.com/i/high_res/school-kids.jpg"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100 h-75"
					src="http://www.csus.edu/news/files/empty-elementary-classroom.jpg"
					alt="Third slide">
			</div>
			<!-- Add more carousel items with images -->
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<section class="about-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<h2 class="about-heading">About Our School</h2>
					<img
						src="https://cdn5.vectorstock.com/i/1000x1000/12/89/schoolchildren-going-to-school-vector-2351289.jpg"
						alt="School Image" class="about-img">
					<p class="about-content">
						Welcome to Pathshala, a place dedicated to nurturing young minds
						and fostering academic excellence. Our school provides a
						supportive and inclusive learning environment for students of all
						backgrounds. With a passionate team of educators and
						state-of-the-art facilities, we aim to inspire creativity,
						critical thinking, and a lifelong love for learning in every
						student. <br>
						<br> At Pathshala, we believe in holistic education that goes
						beyond textbooks. Our curriculum is designed to encourage students
						to explore, innovate, and discover their unique talents and
						interests. We are committed to cultivating not just academic
						achievement but also moral values, leadership skills, and a sense
						of community responsibility. <br>
						<br> Join us on this educational journey, where every student
						is valued, empowered, and prepared for a successful future.
					</p>
				</div>
			</div>
		</div>
	</section>



	<%@includefile="Footer.jsp" %>

	

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</body>
</html>
