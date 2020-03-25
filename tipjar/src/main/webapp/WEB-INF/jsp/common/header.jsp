<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>
		Tip Jar - ${param.pageTitle}
	</title>
	<c:url var="stylesheetHref" value="/css/style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>

<section class="hero is-warning">
  <div class="hero-body">
    <div class="container">
      <h1 class="title is-large">Tip Jar</h1>
    </div>
  </div>
</section>



	
	<nav class="navbar">
		<a class="navbar-item" href="home">Home </a>
		<a class="navbar-item" href="donate"> Donate </a>
		<a class="navbar-item" href="makeProfile"> Sign Up </a>
	</nav>
	
	<main>
	<div class="hero">
