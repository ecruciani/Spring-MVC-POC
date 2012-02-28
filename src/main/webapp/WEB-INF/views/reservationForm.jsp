<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><spring:message code="reservation.form" /></title>
		<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css">
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
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
				<h1><spring:message code="reservation.title" /></h1>
				<p><spring:message code="reservation.lesson" /></p>
				<p>
					<a href="http://static.springsource.org/spring/docs/3.1.x/spring-framework-reference/html/mvc.html#mvc-config" class="btn primary large"><spring:message code="reservation.further.link" /></a>
				</p>
			</div>
	
			<div class="row">
				<div class="span11">
					<div class="page-header">
						<h1><spring:message code="reservation.form" /></h1>
					</div>
					
					<spring:hasBindErrors name="reservation">
				        <div class="alert-message error">
				            <form:errors path="reservation.*">
				            	<c:forEach items="${messages}" var="message">
									<p><spring:message code="reservation.error" /> : ${message}</p>
								</c:forEach>
				            </form:errors>
				        </div>
				    </spring:hasBindErrors>
				    
					<form:form method="post" modelAttribute="reservation">
						
						<fieldset>
							<div id="hotelNameDiv" class="clearfix">
								<label><spring:message code="reservation.hotel.name" /></label>
								<div class="input">
									<form:input path="hotelName" />&nbsp;&nbsp;<form:errors path="hotelName" />
								</div>
							</div>
							<div id="dateDiv" class="clearfix">
								<label><spring:message code="reservation.date" /></label>
								<div class="input">
									<form:input path="date" />&nbsp;&nbsp;<form:errors path="date" />
								</div>
							</div>
							<div class="actions">
								<input type="submit" value="<spring:message code="reservation.button.submit" />" class="btn primary">
								<input type="reset" value="<spring:message code="reservation.button.reset" />" class="btn">
							</div>
						</fieldset>
						
						<form:errors path="hotelName">
							<script>
								$(document).ready(function() {
									$("#hotelNameDiv").addClass("error");
								});
							</script>
						</form:errors>
						
						<form:errors path="date">
							<script>
								$(document).ready(function() {
								  $("#dateDiv").addClass("error");
								});
							</script>
						</form:errors>
						
					</form:form>
				</div>
			</div>
		</div>
	</body>

</html>