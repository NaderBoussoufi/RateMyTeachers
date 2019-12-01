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
<title>Rate</title>

<link rel="stylesheet" href="appCss.css">
<link href="https://use.fontawesome.com/fbed9f71e3.css" media="all" rel="stylesheet">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.11054" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.11054" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.11054" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/54be8d1c700cc4d5368b4567.css?themeRevisionID=5c7d4b7a32fcd5712c3f5a91"/>
<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#FEFFDB;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:'Tahoma';
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: #B0B0B0;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
/*PREFERENCES STYLE*/
    .form-all {
      font-family: "Tahoma", sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: "Tahoma", sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: "Tahoma", sans-serif;
    }
    .form-header-group {
      font-family: "Tahoma", sans-serif;
    }
    .form-label {
      font-family: "Tahoma", sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      width: 600px;
    }
  
    .form-label-left,
    .form-label-right,
    .form-label-left.form-label-auto,
    .form-label-right.form-label-auto {
      width: 150px;
    }
  
    .form-all {
      font-size: 13pxpx
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 13pxpx
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 13pxpx
    }
  
    .supernova .form-all, .form-all {
      background-color: #FEFFDB;
      border: 1px solid transparent;
    }
  
    .form-all {
      color: rgb(82, 75, 58);
    }
    .form-header-group .form-header {
      color: rgb(82, 75, 58);
    }
    .form-header-group .form-subHeader {
      color: rgb(82, 75, 58);
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: rgb(82, 75, 58);
    }
    .form-sub-label {
      color: 1a1a1a;
    }
  
    .supernova {
      background-color: undefined;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: undefined;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-cool_grey.css?3.3.11054"/>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.11054" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
$('input_10').rating({stars:'5', inputClassName:'form-textbox validate[required]', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"clickTo","qid":"1","text":"Course Instructor Feedback","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},null,null,null,null,{"name":"instructorFeedback","qid":"7","text":"Instructor Feedback","type":"control_matrix"},null,{"name":"courseType9","qid":"9","text":"Course Type:","type":"control_dropdown"},{"name":"pleaseRate","qid":"10","text":"Rate this course!","type":"control_rating"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"clickTo","qid":"1","text":"Course Instructor Feedback","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},null,null,null,null,{"name":"instructorFeedback","qid":"7","text":"Instructor Feedback","type":"control_matrix"},null,{"name":"courseType9","qid":"9","text":"Course Type:","type":"control_dropdown"},{"name":"pleaseRate","qid":"10","text":"Rate this course!","type":"control_rating"}]);}, 20); 
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.11062" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.11062" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.11062" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/54be8d1c700cc4d5368b4567.css?themeRevisionID=5c7d4b7a32fcd5712c3f5a91"/>
<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#FEFFDB;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:600px;
        color:#555 !important;
        font-family:'Tahoma';
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: #B0B0B0;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
/*PREFERENCES STYLE*/
    .form-all {
      font-family: Tahoma, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Tahoma, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Tahoma, sans-serif;
    }
    .form-header-group {
      font-family: Tahoma, sans-serif;
    }
    .form-label {
      font-family: Tahoma, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      width: 600px;
    }
  
    .form-label-left,
    .form-label-right,
    .form-label-left.form-label-auto,
    .form-label-right.form-label-auto {
      width: 150px;
    }
  
    .form-all {
      font-size: 14px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 14px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 14px
    }
  
    .supernova .form-all, .form-all {
      background-color: #FEFFDB;
      border: 1px solid transparent;
    }
  
    .form-all {
      color: #555;
    }
    .form-header-group .form-header {
      color: #555;
    }
    .form-header-group .form-subHeader {
      color: #555;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #555;
    }
    .form-sub-label {
      color: #6f6f6f;
    }
  
    .supernova {
      background-color: undefined;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: undefined;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-cool_grey.css?3.3.11062"/>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.11062" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
$('input_10').rating({stars:'5', inputClassName:'form-textbox validate[required]', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_11').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_12').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_13').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_14').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_15').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_19').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_18').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_17').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
$('input_16').rating({stars:'5', inputClassName:'form-textbox', imagePath: 'https://cdn.jotfor.ms/images/stars.png', cleanFirst:true, value:''});
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"clickTo","qid":"1","text":"Course Instructor Feedback","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},null,null,null,null,null,null,{"name":"courseType9","qid":"9","text":"Course Type:","type":"control_dropdown"},{"name":"pleaseRate","qid":"10","text":"Rate this course!","type":"control_rating"},{"description":"","name":"typeA","qid":"11","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA12","qid":"12","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA13","qid":"13","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA14","qid":"14","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA15","qid":"15","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA16","qid":"16","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA17","qid":"17","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA18","qid":"18","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA19","qid":"19","subLabel":"","text":"Type a question","type":"control_rating"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"clickTo","qid":"1","text":"Course Instructor Feedback","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},null,null,null,null,null,null,{"name":"courseType9","qid":"9","text":"Course Type:","type":"control_dropdown"},{"name":"pleaseRate","qid":"10","text":"Rate this course!","type":"control_rating"},{"description":"","name":"typeA","qid":"11","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA12","qid":"12","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA13","qid":"13","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA14","qid":"14","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA15","qid":"15","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA16","qid":"16","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA17","qid":"17","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA18","qid":"18","subLabel":"","text":"Type a question","type":"control_rating"},{"description":"","name":"typeA19","qid":"19","subLabel":"","text":"Type a question","type":"control_rating"}]);}, 20); 
</script>
</script>

</head>
<body class="" style="">
<div id="container">
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
<a href="Find_professor" class="menu-item" id="profNav" data-menu="profMenu">
<span class="icon icon-professor"></span>
<span class="label">Profs</span>
</a>
</li>
<li>
<a href="Rate_professor" class="menu-item" data-menu="rateMenu">
<span class="icon icon-rate"></span>
<span class="label">Rate</span>
</a>
</li>
</ul>
</nav>
</aside>
<div id="body" class="">

<form class="jotform-form"  method="POST" name="form_91155039558563" id="91155039558563" accept-charset="utf-8">

  <div >
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group ">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
                <font color="#00adee" style="text-align:left; font-family:league_gothicregular; font-size: 40px"> Instructor Feedback</font>
            </h1>
            <div id="subHeader_1" class="form-subHeader">
                <font color="red" style="text-align:left; font-family:league_gothicregular">Please fill out the form with honesty.</font>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_rating" id="id_10">
        <label class="form-label form-label-left form-label-auto" id="label_10" for="input_10" style="text-align:left; font-family:league_gothicregular; font-size: 20px">
          Rate your Teacher!
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_10" class="form-input jf-required">
          <div id="input_10" name="note" data-component="rating">
            <select name="note">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_dropdown" id="id_9">
        <label class="form-label form-label-left form-label-auto" id="label_9" for="input_9" style="text-align:left; font-family:league_gothicregular; font-size: 20px">
          Teacher name :
          
        </label>
        <div id="cid_9" class="form-input jf-required">
            <div class="form-field">
                <c:forEach var="dato" items="${teachers1}">
             <input type="text" placeholder="Teacher name" name="prenom" class="form-subHeader" value="${dato.prenom}">
                </c:forEach>  
               
                </div>
        </div>
      </li>
      <li class="form-line" data-type="control_matrix" id="id_7">
        <label class="form-label form-label-top" id="label_7" for="input_7" style="text-align:left; font-family:league_gothicregular; font-size: 30px"> Instructor Feedback </label>
        <div id="cid_7" class="form-input-wide">
          <table summary="" cellPadding="4" cellSpacing="0" class="form-matrix-table" data-component="matrix">
            <tbody>

              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  I received syllabus &amp; course description.
                </th>
                <td>
      <li class="form-line" data-type="control_rating" id="id_11">
        <div id="cid_11" class="form-input">
          <div id="input_11" name="note1" data-component="rating">
            <select name="note1">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  Course objectives stated clearly.
                </th>
                <td>
<li class="form-line" data-type="control_rating" id="id_12">
       <div id="cid_12" class="form-input">
          <div id="input_12" name="note2" data-component="rating">
            <select name="note2">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  Material presented in class matches syllabus.
                </th>
                <td>
<li class="form-line" data-type="control_rating" id="id_13">
        <div id="cid_13" class="form-input">
          <div id="input_13" name="note3" data-component="rating">
            <select name="note3">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  Instructor shows adequate knowledge of course.
                </th>
                <td>
      <li class="form-line" data-type="control_rating" id="id_14">
        <div id="cid_14" class="form-input">
          <div id="input_14" name="note4" data-component="rating">
            <select name=note4>
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  Class time is used efficiently.
                </th>
                <td>
<li class="form-line" data-type="control_rating" id="id_15">
       <div id="cid_15" class="form-input">
          <div id="input_15" name="note5" data-component="rating">
            <select name="note5">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  The instructor is well prepared.
                </th>
                <td>
      <li class="form-line" data-type="control_rating" id="id_19">
        <div id="cid_19" class="form-input">
          <div id="input_19" name="note6" data-component="rating">
            <select name="note6">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  This class was very informative.
                </th>
                <td>
 <li class="form-line" data-type="control_rating" id="id_18">
       <div id="cid_18" class="form-input">
          <div id="input_18" name="note7" data-component="rating">
            <select name="note7">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
              <tr>
                <th style="text-align:left; font-family:league_gothicregular; font-size: 20px" class="form-matrix-row-headers">
                  I would recommend the class to friend.
                </th>
                <td>
      <li class="form-line" data-type="control_rating" id="id_17">
     <div id="cid_17" class="form-input">
          <div id="input_17" name="note8" data-component="rating">
            <select name="note8">
              <option value="1"> 1 </option>
              <option value="2"> 2 </option>
              <option value="3"> 3 </option>
              <option value="4"> 4 </option>
              <option value="5"> 5 </option>
            </select>
          </div>
        </div>
      </li></td>
              </tr>
            </tbody>
          </table>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="text-align:centert; font-family:league_gothicregular; font-size: 20px" class="form-buttons-wrapper">
            <button id="input_2" type="submit" class="form-submit-button form-submit-button-cool_grey" data-component="button">
              Submit
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
 
</form>
    
    
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


