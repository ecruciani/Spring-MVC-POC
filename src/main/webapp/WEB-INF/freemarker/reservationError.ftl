<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title><@spring.message code="reservation.error.title" /></title>
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
					<li><a href="${rc.contextPath}/hotel/123"><@spring.message code="topbar.hotels" /></a></li>
					<li><a href="${rc.contextPath}/reservationForm"><@spring.message code="topbar.reservation" /></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="hero-unit">
       		<h1><@spring.message "reservation.error.title" /></h1>
       		<#setting date_format = "medium" >
			<#assign arguments = ["${date?date}"] >
			<p><@spring.messageArgs "reservation.error.message" arguments /></p>
			<p><a class="btn btn-primary btn-large" href="${rc.contextPath}/reservationForm"><@spring.message "reservation.error.retry" /></a></p>
     	</div>
	</div>
</body>
</html>