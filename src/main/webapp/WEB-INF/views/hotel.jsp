<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><spring:message code="hotels.title" /></title>
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
	       		<h1><spring:message code="hotels.title" /></h1>
	       		<p><spring:message code="hotels.message" /></p>
	       		<p><a class="btn primary large" href="${rc.contextPath}/reservationForm"><spring:message code="hotels.next" /></a></p>
	     	</div>
	     	
	     	<div class="row">
				<div class="span12">
					
					<fieldset>
						<div class="page-header">
							<h1>${hotel.name}</h1>
						</div>
					
						<c:forEach var="room" items="${hotel.rooms}" varStatus="roomIndex">
							<h2><spring:message code="hotels.room" /> ${roomIndex.index + 1} : ${room.name}</h2>
						</c:forEach>
						
						<p>&nbsp;</p>
						
						<div class="row">
							<div class="span6">
								<p><a class="btn success large" href="${rc.contextPath}/hotelXml/${hotelId}"><spring:message code="hotels.xml.format" /></a></p>
							</div>
							
							<div class="span6">
								<p><a class="btn danger large" href="${rc.contextPath}/hotelJson/${hotelId}"><spring:message code="hotels.json.format" /></a></p>
							</div>
							
						</div>
					</fieldset>
					
				</div>
			</div>
	     	
		</div>
		
	</body>
</html>