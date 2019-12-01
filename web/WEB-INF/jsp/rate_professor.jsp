<%-- 
Document   : rateprofessor
Created on : 23 mars 2019, 18:50:09
Author     : Nader
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rate</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="appCss.css">
<link href="https://use.fontawesome.com/fbed9f71e3.css" media="all" rel="stylesheet">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="robots" content="noindex,nofollow,noarchive,nosnippet">
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
<div id="searchBlock" class="bg">
<div class="rate-block-form">
<div class="center-block-form">
    <c:choose>
<c:when test="${sessionScope.email == null}">    
<form action="signin.htm" method="GET" name="rateSearch" id="rateSearch">
</c:when>
    <c:otherwise>
        <form action="rate.htm" method="GET" name="rateSearch" id="rateSearch">
    </c:otherwise>
</c:choose>
<div class="h1">Rate your Teacher</div>
<div class="search-info spacer-10">
<div class="drop-down-fix">
<input type="text" name="prenom" id="rateprof" placeholder="teacher's name" autocorrect="off" autocomplete="off" required="" class="ui-autocomplete-input">
<div id="rateAuContainer" class="autocomplete-container">
<ul></ul>
</div>
<span class="error-message">This field is required.</span>
</div>
</div>
<div class="cta">
<input type="submit" name="_action_search" value="search to rate" id="rateSearch-btn">
<br>
<a href="index.htm" class="reset-search-form">cancel</a>
</div>
</form>
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

