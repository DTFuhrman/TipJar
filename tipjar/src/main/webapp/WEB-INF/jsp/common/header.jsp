<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>
		Tip Jar - ${param.pageTitle}
	</title>
	<c:url var="stylesheetHref" value="/css/style.css" />
	<link rel="stylesheet" href="${stylesheetHref}">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>

<section class="hero is-dark is-bold is-small">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">Our Tip Jar</h1>
      <h1 class="subtitle">Pittsburgh</h1>
    </div>
  </div>
</section>


<nav class="navbar is-light" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">

    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbar" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="home">
        Home
      </a>

      <a class="navbar-item" href="donate">
        Donate
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          More
        </a>

        <div class="navbar-dropdown">
          <a class="navbar-item" href="info">
            Info
          </a>
          <a class="navbar-item" href="about">
            About/Contact
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-dark" href="makeProfile">
            <strong>Sign up</strong>
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
	
	
	<main>
	<div class="container">
