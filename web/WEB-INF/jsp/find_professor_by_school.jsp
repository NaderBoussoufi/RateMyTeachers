<%-- 
Document   : rateprofessor
Created on : 23 mars 2019, 18:50:09
Author     : Nader
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find</title>
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
<form class="main-search-form" method="GET" action="search_result.htm"><input type="text" id="searchr" name="query" placeholder="Search for a teacher" autocomplete="off" autocorrect="off" spellcheck="false" class="ui-autocomplete-input"></form>
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
<div id="homeGrid" class="search prof-block">
<div id="fullBlock" class="bg">
<div class="center-wrap">
<div class="v-align">
<h1>Find <span class="green">the teacher</span> you're looking for.</h1>
<div class="options">
<a href="" class="option" id="findProfessorOption" data-search="prof-block" data-text="the professor" data-mobile="/mobile/professor_search">
<span class="v-align info">
<span class="subTitle">Find a </span>
<span class="subMaintitle">teacher</span>
</span>
</a>
</div>
</div>
</div>
</div>
<div id="searchBlock" class="bg">
<div class="prof-block-form">
<div class="center-block-form">
<div class="h1">Find a Teacher</div>
<div class="search-by" data-search="profMenu">
<span class="label">SEARCH BY</span>
<a href="find_professor.htm" data-type="professor-names" class="">Name</a>
<a href="" data-type="professor-name" class="active">School</a>
</div>
<form action="search_result.htm" method="get" name="prof-name" class="professor-names" id="prof-name">
<div class="search-info">
<div class="optional-flag">
<span class="line-form-txt">I'm looking for a teacher at</span>
<div class="drop-down-fix">
<input type="text" id="searchProfessorSchool2" data-type="school" name="ecole" placeholder="your school" autocorrect="off" autocomplete="off" class="ui-autocomplete-input">
<div id="profauContainer2" class="autocomplete-container">
<ul></ul>
</div>
<span class="error-message" id="leftNav_error-message-align" style="width: 500px;">This field is required.</span>
</div>
</div>
<div class="cta">
<input type="submit" name="_action_search" value="Search" id="prof-name-btn">
<br>
<a href="index.htm" class="reset-search-form">cancel</a>
</div>
</div>
</form>
<form action="search_result.htm" method="get" name="prof-location" class="professor-locations" id="prof-location">
<div class="search-info">
<div class="left-align-wrap">
<div class="left-align">
<span class="inline-form-txt">I'm looking for teacher at</span>
<div class="drop-down-fix">
<input type="text" id="searchProfessorSchool" data-type="school" name="ecole" placeholder="your school" autocorrect="off" autocomplete="off" required="" class="ui-autocomplete-input">
<div id="profauContainer" class="autocomplete-container searchProfessorSchoolAC">
<ul></ul>
</div>
<span class="error-message" id="leftNav_error-message-align" style="width: 500px;">This field is required.</span>
</div>
</div>
<div class="left-align no-default">
<span class="inline-form-txt">in the</span>
<span class="sod_select  touch" tabindex="0" data-cycle="false" data-links="false" data-links-external="false" data-placeholder-option="false" data-filter=""><span class="sod_label">select</span><span class="sod_list_wrapper"><span class="sod_list" style="max-height: 36px;"><span class="sod_option  selected active " title="select" data-value="select">select</span></span></span><select name="dept" id="searchProfessorDepartment" data-type="department" data-placeholder-option="false">
<option>select</option>
</select></span>
<span class="inline-form-txt"> department.</span>
</div>
</div>
<div class="cta">
<input type="submit" name="_action_search" value="Search" id="prof-location-btn">
<br>
<a href="index.htm" class="reset-search-form">cancel</a>
</div>
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


