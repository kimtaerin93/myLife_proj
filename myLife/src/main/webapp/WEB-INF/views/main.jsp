<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="../fonts/icomoon/style.css">
	<link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="../css/tiny-slider.css">
	<link rel="stylesheet" href="../css/aos.css">
	<link rel="stylesheet" href="../css/style.css">

	<title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<nav class="site-nav">
		<div class="container">
			<div class="menu-bg-wrap">
				<div class="site-navigation">
					<a href="main" class="logo m-0 float-start">My Life</a>

					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<!-- 현재 URL -->
						<c:set var="url" value="${pageContext.request.requestURL}" />
						 
						<c:forEach var="menu" items="${menu}">
							<c:choose>
								<c:when test ="${menu.menuUrl eq url}">
									<li class="active"><a href="${menu.menuUrl}">${menu.menuNm}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${menu.menuUrl}">${menu.menuNm}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
						
						<!-- <li class="active"><a href="main">Home</a></li>
						<li class="has-children">
							<a href="properties.html">Study</a>
							<ul class="dropdown">
								<li><a href="/inforprocess">정처기</a></li>
								<li><a href="/linux">Linux</a></li>
								<li class="has-children">
									<a href="#">programing</a>
									<ul class="dropdown">
										<li><a href="/java">Java</a></li>
										<li><a href="/jpa">JPA</a></li>
										<li><a href="/javascript">JavaScript</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="/etc">Etc</a></li> -->
						<!-- <li><a href="services.html">Services</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="contact.html">Contact Us</a></li> -->
					</ul>

					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>
				</div>
			</div>
		</div>
	</nav>
	
	<div class="hero">

		<div class="hero-slide">
			<div class="img overlay" style="background-image: url('../images/ferris wheel.jpg')"></div>
		</div>

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
					<h1 class="heading" data-aos="fade-up">Easiest way to find your dream home</h1>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" placeholder="Your ZIP code or City. e.g. New York">
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>