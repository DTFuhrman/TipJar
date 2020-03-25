<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Tip Jar - ${param.pageTitle}</title>
<c:url var="stylesheetHref" value="/css/style.css" />
<link rel="stylesheet" href="${stylesheetHref}">
</head>
<body>
	<header>
	
		<h1>Tip Jar</h1>
		<nav>
			<ul class="nav">
				<li><a href="home">Home</a></li>
				<li><a href="donate">Donate</a></li>
				<li><a href="makeProfile">Sign Up</a></li>

			</ul>
		</nav>

	</header>
	<%-- 
	 - ${param.pageTitle}
 --%>

	<!-- <main>
	<div id="container"> -->