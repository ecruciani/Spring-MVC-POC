<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><@spring.message "hotels.title" /></title>
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
	       		<h1><@spring.message "hotels.title" /></h1>
	       		<p><@spring.message "hotels.message" /></p>
	       		<p><a class="btn primary large" href="${rc.contextPath}/reservationForm"><@spring.message "hotels.next" /></a></p>
	     	</div>
	     	
	     	<div class="row">
				<div class="span12">
					
					<fieldset>
						<div class="page-header">
							<h1>${hotel.name}</h1>
						</div>
					
						<#list hotel.rooms as room>
							<h2><@spring.message "hotels.room" /> ${room_index + 1} : ${room.name}</h2>
						</#list>
						
						<p>&nbsp;</p>
						
						<div class="row">
							<div class="span6">
								<p><a class="btn success large" href="${rc.contextPath}/hotelXml/${hotelId}"><@spring.message "hotels.xml.format" /></a></p>
							</div>
							
							<div class="span6">
								<p><a class="btn danger large" href="${rc.contextPath}/hotelJson/${hotelId}"><@spring.message "hotels.json.format" /></a></p>
							</div>
							
						</div>
					</fieldset>
					
				</div>
			</div>
	     	
		</div>
		
	</body>
</html>