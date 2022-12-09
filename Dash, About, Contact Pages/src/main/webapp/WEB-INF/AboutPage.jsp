<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Harmony ~ About Us</title>
<style>
</style>
</head>
<!--  Bootstrap V5.1.3 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Bootstrap Icons-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css%22%3E">
<!-- CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/AboutPage.css"/>">
<!-- Browser Icon -->
<link rel="icon" type="image/x-icon" href="resources/assets/img/harmony_simplified_logo.ico" />
<body>
	<!-- NAV BAR -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light fixed-top py-3"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand"><img src="resources/assets/img/harmony_logo.png" alt= "Harmony Logo"/></a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link" href=''>Home</a></li>
					<li class="nav-item"><a class="nav-link" href='Dashboard?embedLink=https://open.spotify.com/embed/playlist/37i9dQZEVXbNG2KDcFcKOF?utm_source=generator'>Dash</a></li>
					<li class="nav-item"><a class="nav-link" href='AboutPage'>About</a></li>
					<li class="nav-item"><a class="nav-link" href='ContactUsPage'>Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- About-->
	<section class="page-section py-5" id="about"
		style="background-image: linear-gradient(#fe4722, #feba55);">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="text-white mt-5 pt-5">Live in Harmony</h2>
					<hr class="divider divider-light" />
					<p class="text-white mb-4">Harmony has everything you need to
						get your music organized and running in no time! Free to use, easy
						survey, and the best music experience! Login to your Spotify
						account to keep your playlists!</p>
					<!-- LINK BACK TO HOME PAGE -->
					<a class="btn btn-rounded text-white" id="aboutButton"
						href="Dashboard">Get Started!</a>
				</div>
			</div>
		</div>
	</section>
	<!-- SERVICES -->
	<section class="page-section py-5" id="services"
		style="background-image: linear-gradient(#c02101, #fb9b04);">
		<div class="container px-4 px-lg-5">
			<h2 class="text-center mt-0 text-white">At Your Service</h2>
			<hr class="divider" />
			<div class="row gx-4 gx-lg-5">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
								fill="white" class="bi bi-coin" viewBox="0 0 16 16">
  								<path
									d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z" />
  								<path
									d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  								<path
									d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z" /></svg>
						</div>
						<h3 class="h4 mb-2 text-white">Free Music</h3>
						<p class="text-white mb-0">Harmony is free of charge!</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
								fill="white" class="bi bi-vinyl" viewBox="0 0 16 16">
  								<path
									d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  								<path
									d="M8 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zM4 8a4 4 0 1 1 8 0 4 4 0 0 1-8 0z" />
  								<path d="M9 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" /></svg>
						</div>
						<h3 class="h4 mb-2 text-white">On Theme</h3>
						<p class="text-white mb-0">Always have the right music for the
							right place.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
								fill="white" class="bi bi-spotify" viewBox="0 0 16 16">
  <path
									d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.669 11.538a.498.498 0 0 1-.686.165c-1.879-1.147-4.243-1.407-7.028-.77a.499.499 0 0 1-.222-.973c3.048-.696 5.662-.397 7.77.892a.5.5 0 0 1 .166.686zm.979-2.178a.624.624 0 0 1-.858.205c-2.15-1.321-5.428-1.704-7.972-.932a.625.625 0 0 1-.362-1.194c2.905-.881 6.517-.454 8.986 1.063a.624.624 0 0 1 .206.858zm.084-2.268C10.154 5.56 5.9 5.419 3.438 6.166a.748.748 0 1 1-.434-1.432c2.825-.857 7.523-.692 10.492 1.07a.747.747 0 1 1-.764 1.288z" />
</svg>
						</div>
						<h3 class="h4 mb-2 text-white">Up To Date</h3>
						<p class="text-white mb-0">With using Spotify's API, new music
							you love will be available.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="mt-5">
						<div class="mb-2">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
								fill="white" class="bi bi-people" viewBox="0 0 16 16">
  <path
									d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z" />
</svg>
						</div>
						<h3 class="h4 mb-2 text-white">In Harmony</h3>
						<p class="text-white mb-0">Listen along with your friends.</p>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5" id="footer" style="background-color: #441404;">
		<div class="container px-4 px-lg-5">
			<div class="small text-center text-light">Copyright &copy; 2022
				- Harmony</div>
			<div class="small text-center text-light">Created By:</div>
			<div class="small text-center text-light">Anthony Suchil, Tammy
				Xaypraseuth, Nisapat Poolkwan, Yingjuan Chen, Michael Salazar</div>
		</div>
	</footer>
</body>
</html>