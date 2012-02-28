<#assign springJsp=JspTaglibs["http://www.springframework.org/tags"] />

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><@spring.message "reservation.form" /></title>
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
						<li><a href="${rc.contextPath}/hotel/123"><@spring.message "topbar.hotels" /></a></li>
						<li><a href="${rc.contextPath}/reservationForm"><@spring.message "topbar.reservation" /></a></li>
					</ul>
				</div>
			</div>
		</div>
	
		<div class="container">
	
			<div class="hero-unit">
				<h1><@spring.message "reservation.title" /></h1>
				<p><@spring.message "reservation.lesson" /></p>
				<p>
					<a href="http://static.springsource.org/spring/docs/3.1.x/spring-framework-reference/html/mvc.html#mvc-config" class="btn primary large"><@spring.message "reservation.further.link" /></a>
				</p>
			</div>
	
			<div class="row">
				<div class="span11">
					<div class="page-header">
						<h1><@spring.message "reservation.form" /></h1>
					</div>
					
					<@springJsp.hasBindErrors name="reservation">
				        <div class="alert-message error">
				            <@spring.bind "reservation.*" />
			            	<#list spring.status.errorMessages as error>
                				<p><@spring.message "reservation.error" /> : ${error}</p>
            				</#list>
				        </div>
				    </@springJsp.hasBindErrors>
				    
					<form method="post">
						<@spring.bind "reservation" />
						<fieldset>
							<div id="hotelNameDiv" class="clearfix">
								<label><@spring.message "reservation.hotel.name" /></label>
								<div class="input">
									<@spring.formInput "reservation.hotelName" />&nbsp;&nbsp;<@spring.showErrors "" "error" />
								</div>
							</div>
							<div id="dateDiv" class="clearfix">
								<label><@spring.message "reservation.date" /></label>
								<div class="input">
									<@spring.formInput "reservation.date" />&nbsp;&nbsp;<@spring.showErrors "" "error" />
								</div>
							</div>
							<div class="actions">
								<input type="submit" value="<@spring.message 'reservation.button.submit' />" class="btn primary">
								<input type="reset" value="<@spring.message 'reservation.button.reset' />" class="btn">
							</div>
						</fieldset>
						
						<@spring.bind "reservation.hotelName" />
						<#if spring.status.error>
							<script>
								$(document).ready(function() {
									$("#hotelNameDiv").addClass("error");
								});
							</script>
						</#if>
						
						<@spring.bind "reservation.date" />
						<#if spring.status.error>
							<script>
								$(document).ready(function() {
								  $("#dateDiv").addClass("error");
								});
							</script>
						</#if>
						
					</form>
				</div>
			</div>
		</div>
	</body>

</html>