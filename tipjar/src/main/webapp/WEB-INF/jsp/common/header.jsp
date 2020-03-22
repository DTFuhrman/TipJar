<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>
		Tip Jar - ${param.pageTitle}
	</title>
	<c:url var="stylesheetHref" value="/css/style.css" />
	<link rel="stylesheet" href="${stylesheetHref}">
</head>
<body>
	<header>
		<h1>Tip Jar - ${param.pageTitle}</h1>
	</header>
	<nav><a href="home">Home </a><a href="donate"> Donate </a><a href="makeProfile"> Sign Up </a></nav>
	
	<main>
	<div id="container">