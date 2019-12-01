<%-- 
Document   : signIN
Created on : 25 mars 2019, 13:12:45
Author     : Nader
--%>
<%@page import="com.javapapers.java.social.facebook.FBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	FBConnection fbConnection = new FBConnection();
%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sigin In</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="appCss.css">
<link href="https://use.fontawesome.com/fbed9f71e3.css" media="all" rel="stylesheet">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="robots" content="noindex,nofollow,noarchive,nosnippet">
</head>
<body class="account_page" style="">
<div id="container">
<div class="overlay"></div>
<header>
<div class="overlay"></div>
<a href="index.htm" id="logo"><img src="assets/logo.png"/></a>
<div id="searchBox">
<div class="searchBox-wrapper">
<form class="main-search-form" method="GET" action="search_result.htm"><input type="text" id="searchr" name="nom" placeholder="Search for a teacher" autocomplete="off" autocorrect="off" spellcheck="false" class="ui-autocomplete-input"></form>
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
<a href="signin.htm" id="login" class="loggedout">
<span class="welcome-tablet">Log In</span>
<span class="welcome"> Log In </span>
</a>
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

<div class="reveal-modal-bg" style="display: none;"></div>
<div class="page-wrap">

<div class="header">Log In to Rate My Teachers</div>


<div class="explain">
<b>Go ahead, log in, you're still anonymous.</b> 
But logging in will save your school and recent
searches, helping you find teachers faster.
</div>
<br>
<form id="LoginForm" action="" method="POST" >


<div class="logins">

<div class="credentials form-elem">
<div class="form-field">
    <input  class="required" id="email" type="email" name="email" placeholder="EMAIL" value="" required>
    <div class="error-message">
    </div>
</div>
<div class="form-field">
    <input  class="required" id="passfword" type="password" name="password" placeholder="PASSWORD" required>
    <div class="error-message">
    </div>
</div>

</div>
</div>

<div class="form-field submit-button">
<input type="submit" value="Log in" class="btn_success">
<a style="display:block" href="" class="more-actions">FORGOT MY PASSWORD</a>
</div>
    <a style="display:block" href="<%=fbConnection.getFBAuthUrl()%>" class="more-actions"> <img src="facebookloginbutton.png" /></a>
    <a href="signup.htm" class="signup">DON'T HAVE AN ACCOUNT? <font color="red">SIGN UP!</font></a>
</form>
</div>

</div>
</div>

</body>

</html>