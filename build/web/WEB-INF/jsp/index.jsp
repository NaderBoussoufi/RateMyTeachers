<%-- 
Document   : rateprofessor
Created on : 23 mars 2019, 18:50:09
Author     : Nader
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rate My Teachers</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="appCss.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="appCss.css">
<link href="https://use.fontawesome.com/fbed9f71e3.css" media="all" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="robots" content="noindex,nofollow,noarchive,nosnippet">
</head>
<style>
    .slider{
        width: 600px;
        height: 400px;    
        overflow: hidden;
        margin: 150px auto;
    }
    .slides {
        width: calc(2000px);
        animation: glisse 5s infinite;
    }
    .slide {
        float: left;
    }
    @keyframes glisse{
        0% {
            transform: translateX(0);
        }
        
       
        25% {
            transform: translateX(-500px);
        }
        50% {
            transform: translateX(-750px);
        }
        60% {
            transform: translateX(-750px);
        }
        75% {
            transform: translateX(-1000px);
        }
        85% {
            transform: translateX(-1000px);
        }
        100% {
            transform: translateX(0);
        }
    }
</style>
<body class="home_index" style="">
 <div id="mobileHeader" class="slide">
	<a id="mobileHamburger" href="#"><span></span></a><div id="mSearchBox">
			<form class="main-search-form" action=""><input type="search" id="msearchr" name="query" placeholder="Search ..." class="ui-autocomplete-input" autocomplete="off"></form>
		</div>
	<a href="assets/log.png" id="mLogo"></a>
	<div class="mobileSearch">
		

	</div>
</div>   
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

<div id="body" class="">
<div id="mainContent" class="height-col" style="padding-top: 22px;">

<div id="homeGrid" class="">
<div id="fullBlock" class="bg">
<!-- Begins Vertically Aligned Elements -->
<div class="center-wrap">

<div class="v-align">
<h1>Find <span class="green">what</span> you're looking for.</h1>


<div class="options">

<a href="find_professor.htm" class="option" id="findProfessorOption" data-search="prof-block" data-text="the professor" data-mobile="/mobile/professor_search">
<span class="v-align info">
<span class="subTitle">Find a </span>
<span class="subMaintitle">teacher</span>
</span>
</a>
<a href="#" class="option1" id="rateProfessorOption" data-search="rate-block" data-text="the outlet" data-mobile="/mobile/rate_search">
<span class="v-align info">
<h1>OR</h1>
</span>
</a>

<a href="rate_professor.htm" class="option" id="rateProfessorOption" data-search="rate-block" data-text="the outlet" data-mobile="/mobile/rate_search">
<span class="v-align info">
<span class="subTitle">Rate a</span>
<span class="subMaintitle">teacher</span>
</span>
</a>
</div>
   
</div>
</div>

</div>

</div>
</div>
   
     <div class="slider">
        <div class="slides">
            <div class="slide"><img src="1.jpg" alt="" /></div>
            <div class="slide"><img src="2.JPG" alt="" /></div>
            <div class="slide"><img src="3.jpg" alt="" /></div>
            <div class="slide"><img src="4.jpg" alt="" /></div>
        </div>
    </div>

    
</div>
</div>
 <!--Modal: Login with Avatar Form-->
<div class="modal fade" id="modalLoginAvatar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document">
    <!--Content-->
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <img src="logadmin.png" alt="avatar" class="rounded-circle img-responsive">
      </div>
      <!--Body-->
      <div class="modal-body text-center mb-1">

        <h5 class="mt-1 mb-2">Admin</h5>

        <form action="teachers_table.htm" class="md-form ml-0 mr-0" method="POST" oninput='pwd.setCustomValidity(pwd.value != 147258369 ? "Password do not match." : "")'>
            <input type="password" name="pwd" type="text" id="form29" class="form-control form-control-sm validate ml-0" required>
          <label data-error="wrong" data-success="right" for="form29" class="ml-0">Enter password</label>
           <button type="submit" class="btn btn-cyan mt-1">Login <i class="fas fa-sign-in ml-1"></i></button>
        </form>

        <div class="text-center mt-4">
           
        </div>
      </div>
    </div>
    
  </div>
</div>
<!--Modal: Login with Avatar Form-->

    <a href="" class="adminLogo" data-toggle="modal" data-target="#modalLoginAvatar"><img src="admin.png"/></a>    
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
<a href="https://www.facebook.com/youssef.chaabani.1">Contact Us</a>
</li>
</ul>
<section class="copyright">
© 2019 ENSIT, Inc. - All Rights Reserved.
</section>
</div>
</footer>

</body>

</html>

