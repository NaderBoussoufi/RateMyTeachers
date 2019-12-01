<%-- 
    Document   : rate
    Created on : 25 avr. 2019, 17:26:18
    Author     : Nader
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="appCss.css">
<meta name="google-site-verification" content="F8gUuqzRvOrAlhaGyP7aAuMs_Se8zK-98Ai2sNsIZEo">
<meta name="google-site-verification" content="hk1NnSbYuDC0Sppgbf7YIT-VxUiRbOVRdtqA4AmkGzM">
<meta name="google-site-verification" content="CKMC_IwvKoVbX1U8x1A9yzKABsSlop6qxfuDzwfV7Qs"> <!--  relaunch qa -->
<meta name="google-site-verification" content="1D_3ZfAdMu4Tki8pFRj68YAqYot-paTOoDVzCTIJZZI"> <!--  relaunch rmp -->
<meta name="google-signin-client_id" content="14147781149-i5ph5oqooelp3k0qfrb3jkk6vs4528ha.apps.googleusercontent.com">
<link href="https://use.fontawesome.com/fbed9f71e3.css" media="all" rel="stylesheet">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="robots" content="noindex,nofollow,noarchive,nosnippet">

  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>
<body class="account_page new_account" style="">
<div id="container">
<header>
<div class="overlay"></div>
<a href="index.htm" id="logo"><img src="assets/logo.png"/></a>
<div id="searchBox">
<div class="searchBox-wrapper">
<form class="main-search-form" method="GET" action="search_result.htm"><input type="text" id="searchr" name="prenom" placeholder="Search for a teacher" autocomplete="off" autocorrect="off" spellcheck="false" class="ui-autocomplete-input"></form>
<div id="tablet-social-dropdown">
<div class="tablet-social">
<span class="social-text">Follow us</span>
</div>
<div class="tablet-social-list">
<ul>
<a href="https://www.facebook.com/" target="_blank">
<li>
<i class="fa fa-facebook"></i>
<span class="text-social">facebook</span>
</li>
</a>
<a href="http://instagram.com/" target="_blank">
<li>
<i class="fa fa-instagram"></i>
<span class="text-social">instagram</span>
</li>
</a>
<a href="https://twitter.com/" target="_blank">
<li>
<i class="fa fa-twitter"></i>
<span class="text-social">twitter</span>
</li>
</a>
<a href="https://www.snapchat.com/" target="_blank">
<li>
<i class="fa fa-snapchat-ghost"></i>
<span class="text-social">snapchat</span>
</li>
</a>
</ul>
</div>
</div>
</div>
</div>
<div id="headSocial">
<ul>
<li><a href="https://www.facebook.com/" class="fa fa-facebook" target="_blank"></a></li>
<li><a href="http://instagram.com/" class="fa fa-instagram" target="_blank"></a></li>
<li><a href="https://twitter.com/" class="fa fa-twitter" target="_blank"></a></li>
<li><a href="https://www.snapchat.com" class="fa fa-snapchat-ghost" target="_blank"></a></li>
</ul>
</div>
<div id="desktopLoginSectionContainer" class="processed">
    <c:choose><c:when test="${sessionScope.email == null}">
<a href="signin.htm" id="login" class="loggedout">
<span class="welcome-tablet">Log In</span>
    <span class="welcome"> Log In </span></a></c:when>
    
    <c:otherwise><a href="logout.htm" id="login" class="loggedout">
           <span class="welcome"> ${sessionScope.email} / Logout</span></a></c:otherwise>

    </c:choose>
</div>
</header>
<aside id="leftNav" class="height-col">
<div id="leftOverlay"></div>
<div id="menuWrap">
<div id="profMenu" class="menu">
<div class="header">Find a Teacher</div>
<div class="prof-block-form">
</div>
</div>
<div id="rateMenu" class="menu">
<div class="header">Rate a</div>
<div class="school-block-form">
<div class="h1">Rate a</div>
<div class="search-by" data-search="rateMenu">
<a data-type="rate-professor" class="active">Teacher</a>
<a data-type="rate-schools" class="">School</a>
</div>
</div>
</div>
</div>
<nav id="navToggle">
<ul>
<li>
<a href="find_professor.htm" class="menu-item" id="profNav" data-menu="profMenu">
<span class="icon icon-professor"></span>
<span class="label">Profs</span>
</a>
</li>
<li>
<a href="rate_professor.htm" class="menu-item" data-menu="rateMenu">
<span class="icon icon-rate"></span>
<span class="label">Rate</span>
</a>
</li>
</ul>
</nav>
</aside>
<div id="body" class="">
<div id="mainContent" class="height-col">
<div id="homeGrid" class="search rate-block">
<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title" color: > Teachers Table</h4>
              </div>
              <div class="card-body">
                <div >
                  <table class="table">
                    <thead class=" text-primary">

                      <th>
                        Firstname
                      </th>
                      <th>
                        Lastname
                      </th>
                      <th>
                        Subject
                      </th>
                      <th>
                        Experience
                      </th>
                      <th>
                        Rate
                      </th>
                      <th>
                        School
                      </th>
                    </thead>
                    <tbody>
                    <c:forEach var="dato" items="${teachers}">
                     <tr>
                        
                        <td>${dato.prenom}</td>
                        <td>${dato.nom}</td>
                        <td>${dato.matiere}</td>
                        <td>${dato.experience}</td>
                        <td>${dato.note}</td>
                        <td>${dato.ecole}</td>

                     </tr>
                     </c:forEach>   
                    <c:forEach var="dato" items="${teachers1}">
                     <tr>
                        <td>${dato.id}</td>
                        <td>${dato.prenom}</td>
                        <td>${dato.nom}</td>
                        <td>${dato.matiere}</td>
                        <td>${dato.experience}</td>
                        <td>${dato.note}</td>
                        <td>${dato.ecole}</td>

                     </tr>
                     </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
         
        </div>
    
    </div>
</div>
</div>
</div>
</div>
<footer class="mainFooter hidden-md">
<div class="v-align">
<ul id="leftFooter">
<li>
<a href="">about</a>
</li>
<li>
<a href="">Help</a>
</li>
<li>
<a href="">Contact Us</a>
</li>

</ul>
<section class="copyright">
© 2019 ENSIT, Inc. - All Rights Reserved.
</section>
</div>
</footer>
</body>


</html>


