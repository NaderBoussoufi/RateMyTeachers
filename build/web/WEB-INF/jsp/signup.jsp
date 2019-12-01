<%-- 
Document   : rateprofessor
Created on : 23 mars 2019, 18:50:09
Author     : Nader
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>
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
<span class="welcome-tablet"> Log In </span>
<span class="welcome"> Log In </span>
</a>
</div>
</header>
<aside id="leftNav" class="height-col">
<div id="leftOverlay"></div>
<div id="menuWrap">
<div id="profMenu" class="menu">
<div class="header">Find a Teachers</div>
<div class="prof-block-form">
</div>
</div>
<div id="rateMenu" class="menu">
<div class="header">Rate a</div>
<div class="school-block-form">
<div class="h1">Rate a</div>
<div class="search-by" data-search="rateMenu">
<a data-type="rate-professor" class="active">Teachers</a>
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
          
    <div class="page-wrap new_account">
      <div class="header">Create an Account</div>
      <div class="form-field">
        
        <div class="field">
          
          <div class="explain">
            <b>Why sign up?</b> Find teachers faster with your saved preferences. Rate a teacher.
          </div>
        </div>
      </div>
      <div id="form-context" class="show-student">
        <div class="tab-box student">
            
          <form method="POST" name="studentForm" id="studentForm">
            
            <div class="form-field">
              <label class="label" for="email">Email           <span class="form-required">
            *
          </span></label>
              <input type="email" name="email" id="email" class="field">
              
              
              <span class="error-field custom-error-field">Email required</span>
            </div>
            <div class="form-field">
              <label class="label" for="confirm_email">Confirm Email           <span class="form-required">
            *
          </span></label>
              <input type="email" name="emailconfirm" id="confirm_email" class="field">
              <span class="error-field" style="width:100%;">Confirm email required</span>
            </div>
            <div class="form-field">
              <label class="label" for="password">Password           <span class="form-required">
            *
          </span></label>
              <input type="password" name="password" id="password" class="field" maxlength="41" pattern=".[a-zA-Z0-9]{6,}">
              <div class="instruct">Password must be at least 8 characters, including at least one uppercase letter and one number.</div>
              <span class="error-field custom-error-field">Password must be at least 8 characters, including at least one uppercase letter and one number.</span>
            </div>
            <div class="form-field">
              <label for="confirm_password" class="label">Confirm Password           <span class="form-required">
            *
          </span></label>
              <input class="field" type="password" name="passwordconfirm" id="confirm_password" maxlength="41">
              <span class="error-field" style="width:100%;">Confirm password required</span>
            </div>

            <div class="form-field">
              <label class="label" for="pFrName">First Name           <span class="form-required">
            *
          </span></label>
              <input type="text" name="firstname" id="pFrName" class="field">
              <span class="error-field" style="width:100%;"></span>
            </div>
            <div class="form-field">
              <label class="label" for="pLsName">Last Name           <span color="red" class="form-required">
            *
          </span></label>
              <input type="text" name="lastname" id="pLsName" class="field">
              <span class="error-field" style="width:100%;"></span>
            </div>

            <!-- Re-added for release -->
            <div class="form-field form-field-container">
              <label for="school" class="label">School (Optional)</label>
              <span class="form_wrap" id="signup_school">
                <input class="field ui-autocomplete-input" type="text" name="school" id="school" value="" autocomplete="off">
                
                <div id="schoolauContainerjoin" class="autocomplete-container schoolAutocompleteContainer">
                  <ul>
                  </ul>
                </div>
              </span>
              <div class="instruct">Prefills certain fields on your searches</div>
              <span class="error-field custom-error-field" id="school-required">School Required</span>
            </div>

      			<div class="form-field">
      				<div class="captcha"><div class="fieldcontain" required="" id="captchaElement">
	
		
		<div class="g-recaptcha" data-sitekey="6LfISCQUAAAAACCyiR-2qBDwjkBamKPQax_TUSnq" data-theme="white" data-callback="iOScaptchaFix"><div style="width: 304px; height: 78px;"><div><iframe src="cid:frame-E76865B8039722F2704DA2C10155F865@mhtml.blink" width="304" height="78" role="presentation" name="a-r31ww837ufv8" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>

	
</div>
              </div>
              <span class="error-field custom-error-field" id="captcha-required" style="width:100%; margin-left:25px;">Captcha required</span>
            </div>
            

            <div class="form-field field">
              
              <input type="submit" name="create" class="btn_signup" value="Sign up" id="create">
              
              <div class="option_or">
                Or, already have an account?
              </div>
              <a href="signin.htm" class="btn btn_login">Log in</a>
              <div class="inline-block-fix">
                <a href="index.htm" class="cancel-form">cancel</a>
              </div>
            </div>
          </form>
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
<a>Help</a>
</li>
<li>
<a href="https://www.facebook.com/youssef.chaabani.1">Contact Us</a>
</li>

</ul>
<section class="copyright">
© 2019 ENSIT- All Rights Reserved.
</section>
</div>
</footer>
</body>
</html>