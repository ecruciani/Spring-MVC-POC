<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title><@spring.message "reservation.success.title" /></title>
	<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css">
</head>

<body>
	
	<div class="topbar">
		<div class="fill">
			<div class="container">
				<h3>
					<a href="#">Spring MVC 3 POC</a>
				</h3>
				<ul>
					<li><a href="${rc.contextPath}/hello">Hello World</a></li>
					<li><a href="${rc.contextPath}/hotel/123"><@spring.message "topbar.hotels" /></a></li>
					<li><a href="${rc.contextPath}/reservationForm"><@spring.message "topbar.reservation" /></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="hero-unit">
       		<h1><@spring.message "reservation.success.title" /></h1>
       		<p><@spring.message "reservation.success.message" /></p>
       		<p><a class="btn btn-primary btn-large" href="${rc.contextPath}/reservationForm"><@spring.message "reservation.success.retry" /></a></p>
     	</div>
	</div>
	
</body>
</html>