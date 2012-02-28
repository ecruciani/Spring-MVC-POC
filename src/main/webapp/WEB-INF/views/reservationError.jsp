<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title><spring:message code="reservation.error.title" /></title>
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
					<li><a href="${rc.contextPath}/hotel/123"><spring:message code="topbar.hotels" /></a></li>
					<li><a href="${rc.contextPath}/reservationForm"><spring:message code="topbar.reservation" /></a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="hero-unit">
       		<h1><spring:message code="reservation.error.title" /></h1>
       		<fmt:formatDate value="${date}" dateStyle="short" var="date"/>
       		<p><spring:message code="reservation.error.message" arguments="${date}" /></p>
       		<p><a class="btn btn-primary btn-large" href="reservationForm"><spring:message code="reservation.error.retry" /></a></p>
     	</div>
	</div>
</body>
</html>