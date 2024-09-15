<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.part1 {
	background-color: #eff3fa;
	height: 740px;
}

.rounded-box {
	background-color: #3e588b;
	color: white;
	padding: 20px;
	font: 20px "Open sans", sans-serif;
	width: fit-content;
	text-align: center;
	margin: 20px 9px 0px;
	position: absolute;
	top: 120px;
	left: 230px;
}

.title-box {
	background-color: #eff3fa;
	color: #3e588b;
	padding: 15px;
	width: fit-content;
	font-family: 'Roboto Condensed', sans-serif;
	font-size: 60px;
	margin: 20px 0px 0px;
	position: absolute;
	top: 210px;
	left: 220px;
}

.about-box {
	background-color: #eff3fa;
	color: black;
	padding: 15px;
	width: fit-content;
	font-family: 'Roboto', sans-serif;
	font-size: 23px;
	position: absolute;
	top: 430px;
	left: 220px;
}

.read-more-btn {
	position: absolute;
	top: 590px;
	left: 45%;
	transform: translateX(-50%);
	background-color: #3e588b;
	color: white;
	border: none;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	border-radius: 5px;
	animation: bounce 1s infinite;
}

@
keyframes bounce { 0%, 100% {
	transform: translateY(0);
}

50
%
{
transform
:
translateY(
10px
);
}
}
.part1::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 200px;
	height: 200px;
	background: linear-gradient(135deg, #3e588b, #5e78ab);
	clip-path: polygon(0 0, 100% 0, 0 100%);
}

.part1::after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	width: 200px;
	height: 200px;
	background: linear-gradient(225deg, #3e588b, #5e78ab);
	clip-path: polygon(100% 0, 100% 100%, 0 0);
}

.part2 {
	align-items: flex-start;
	background-color: #3e588b;
	height: 660px;
	color: white;
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	width: 100%;
	padding: 40px;
}

.feature {
	max-width: 300px;
	padding: 20px;
	background-color: #eff3fa;
	color: #002c5f;
	border-radius: 15px;
	transition: transform 0.3s ease;
	position: relative;
	margin: 20px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.5);
}

.feature:first-child {
	margin-left: 0;
}

.feature:hover {
	transform: scale(1.05);
}

.icon {
	font-size: 2rem;
	margin-bottom: 20px;
}

.part2 h2 {
	font-size: 1.8rem;
	margin-bottom: 15px;
}

p {
	font-size: 1.1rem;
	line-height: 1.6;
}

.feature:nth-child(odd) {
	margin-top: 50px;
}

.feature:nth-child(even) {
	margin-top: 100px;
}

.part3 {
	font-family: Arial, sans-serif;
	color: #002c5f;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 660px;
	padding: 0 30px;
	background-color: #eff3fa;
	height: 640px;
	text-align: center;
	max-width: 100%;
	flex-direction: column;
}

.part3 h2 {
	font-size: 3.75rem;
	line-height: 1.1;
	margin-top: 0px;
	margin-bottom: 40px;
	font-weight: 700;
	font-family: 'Roboto Condensed', sans-serif;
}

p {
	font-size: 1rem;
	line-height: 1.6;
	margin-bottom: 20px;
	padding: 10px 10px 10px;
}

.divider {
	width: 60px;
	height: 4px;
	background-color: #002c5f;
	margin: 10px auto 20px auto;
}

.part4 {
	font-family: Arial, sans-serif;
	background-color: #002c5f;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	position: relative;
	overflow: hidden;
}

.content {
	text-align: center;
}

h1 {
	font-size: 3rem;
	margin-bottom: 20px;
}

p {
	font-size: 1.2rem;
	margin-bottom: 40px;
}

.btn {
	padding: 10px 30px;
	border: 2px solid white;
	color: white;
	text-decoration: none;
	font-size: 1.2rem;
	transition: background-color 0.3s, color 0.3s;
}

.btn:hover {
	background-color: white;
	color: #002c5f;
}

.shape1, .shape2, .shape3, .shape4, .shape5, .shape6 {
	position: absolute;
	background-color: rgba(255, 255, 255, 0.2);
	z-index: 1;
}

.part4 {
	background-color: #3e588b;
	height: 556px;
}

.shape1 {
	width: 250px;
	height: 250px;
	border-radius: 50%;
	top: 15%;
	left: 10%;
}

.shape2 {
	width: 0;
	height: 0;
	border-top: 120px solid transparent;
	border-bottom: 120px solid transparent;
	border-left: 120px solid rgba(255, 255, 255, 0.3);
	right: 15%;
	top: 30%;
}

.shape3 {
	width: 150px;
	height: 150px;
	background-color: rgba(255, 255, 255, 0.3);
	border-radius: 50%;
	top: 50%;
	left: 25%;
}

.shape4 {
	width: 0;
	height: 0;
	border-top: 80px solid transparent;
	border-bottom: 80px solid transparent;
	border-right: 80px solid rgba(255, 255, 255, 0.3);
	left: 40%;
	top: 60%;
	transform: translateX(-50%);
}

.shape5 {
	width: 120px;
	height: 120px;
	background-color: rgba(255, 255, 255, 0.3);
	border-radius: 50%;
	bottom: 20%;
	right: 20%;
}

.shape6 {
	width: 0;
	height: 0;
	border-top: 60px solid transparent;
	border-bottom: 60px solid transparent;
	border-right: 60px solid rgba(255, 255, 255, 0.3);
	left: 5%;
	top: 20%;
}
</style>
</head>
<body>
	<section class="main-section">
		<div class="part1">
			<div class="rounded-box">START ORGANIZING WITH EASE!!!</div>
			<div class="title-box">
				USER MANAGEMENT<br> APPLICATION
			</div>
			<div class="about-box">
				<p>Welcome to the User Management System, where you can
					effortlessly manage user data. Our application allows you to create
					new users, update existing user information, retrieve complete
					details, and delete users when necessary, all through a simple and
					intuitive interface. Streamline your user management process with
					ease and efficiency.</p>
			</div>
		</div>
		<button class="read-more-btn" onclick="scrollToNext()">
			Read More <i class="fas fa-chevron-down"></i>
		</button>
		<div class="bottom-left-stripe"></div>
		<div class="bottom-right-stripe"></div>


		<div class="part2">
			<div class="feature">
				<div class="icon">
					<i class="fas fa-plus"></i>
				</div>
				<h2>CREATE</h2>
				<p>Easily add new users to the system by filling out essential
					details such as name, email, and contact information. The
					streamlined process ensures quick and efficient user registration,
					allowing you to expand your user base without hassle.</p>
			</div>

			<div class="feature">
				<div class="icon">
					<i class="fas fa-search"></i>
				</div>
				<!-- Retrieve Icon -->
				<h2>RETRIEVE</h2>
				<p>Access comprehensive user details with a single click. Our
					system allows you to retrieve and view full profiles, enabling
					quick reference and detailed insights into the stored user data
					whenever needed.</p>
			</div>

			<div class="feature">
				<div class="icon">
					<i class="fas fa-edit"></i>
				</div>
				<!-- Update Icon -->
				<h2>UPDATE</h2>
				<p>Keep your user information accurate and up-to-date by
					modifying existing user data. Whether it's correcting a typo or
					updating contact details, the update functionality allows you to
					manage changes easily and keep everything current.</p>
			</div>

			<div class="feature">
				<div class="icon">
					<i class="fas fa-trash"></i>
				</div>
				<!-- Delete Icon -->
				<h2>DELETE</h2>
				<p>Safely remove users from the system when they are no longer
					active or relevant. This feature ensures that your database remains
					clean and clutter-free, allowing for efficient data management.</p>
			</div>
		</div>


		<div class="part3">
			<h2>WHAT WE DO?</h2>
			<p>We offer comprehensive user management solutions, enabling
				seamless creation, updating, retrieval, and deletion of user data
				for efficient system administration.</p>
			<div class="divider"></div>
			<p>The User Management Application is designed to provide a
				seamless and efficient way to handle user data within an
				organization. It allows administrators to create new user profiles,
				update existing information, retrieve detailed user records, and
				delete users when necessary. The application is built with a
				user-friendly interface, making it easy to navigate and manage user
				data without technical complexity. With its robust functionality,
				the application ensures data accuracy, reduces administrative
				overhead, and supports secure, organized data management for optimal
				efficiency.</p>
		</div>

		<div class="part4">
			<div class="content">
				<h1>LET'S EXPLORE!!!!!!!</h1>
				<p>Ready to manage your users effortlessly? Click the button
					below to get started.</p>
				<a href="user-list" class="btn">START HERE</a>
			</div>

			<!-- Background Shapes -->
			<div class="shape1"></div>
			<div class="shape2"></div>
			<div class="shape3"></div>
			<div class="shape4"></div>
			<div class="shape5"></div>
			<div class="shape6"></div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script>
  function scrollToNext() {
    document.querySelector('.part2').scrollIntoView({ behavior: 'smooth' });
  }
</script>
</body>