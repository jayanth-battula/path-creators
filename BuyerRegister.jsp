<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Buyer Register Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {font-size: 24}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style4 {color: #333333}
.style6 {
	color: #FF0000;
	font-weight: bold;
}
.style11 {font-weight: bold}
.style14 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="SocialLogin.jsp"><span>Social Network</span></a></li>
          <li><a href="EcommerceLogin.jsp"><span>Ecommerce</span></a></li>
          <li><a href="BuyerLogin.jsp"><span>Buyers Login</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><span class="style2"><a href="index.html">Analyzing and Detecting Money-Laundering Accounts in Online Social Networks</a></span></h1>
      </div>
      <div class="clr style2"></div>
      <div class="slider style2">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr style2"></div>
    </div>
  </div>
  <div class="content style2">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Welcome To Buyer Registration..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <p><img src="images/Register.jpg" width="158" height="158" /></p>
		  <form action="BuyerRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
              <span class="style4">
	          <label for="sname"><span class="style6">Select Social Network (required)</span></label>
              </span>
			        <p class="style6 style33"><strong>
                    <select id="s1" name="sname" style="width:150px;" class="text">
                      <option>--Select--</option>
						  <option>Facebook</option>
                          <option>Twitter</option>
					      <option>Linkedin</option>
                    </select>
                    </strong></p>					
					
					<span class="style6">
					<label for="name">
					
					Buyer Name (required)</label>
                    </span>
					<p class="style6 style33"><strong>
                    <input id="name" name="buyerid" class="text" />
                    </strong></p>
			        <span class="style6">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style6 style33"><strong>
                    <input type="password" id="password" name="pass" class="text" />
                    </strong></p>
			        <span class="style6">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style6 style33"><strong>
                    <input id="email" name="email" class="text" />
                    </strong></p>
			        <span class="style6">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style6 style33"><strong>
                    <input id="mobile" name="mobile" class="text" />
                    </strong></p>
			        <span class="style6">
			        <label for="address">Address</label>
                    </span>
			        <p class="style6 style33"><strong>
                    <textarea id="address" name="address" rows="3" cols="19"></textarea>
                    </strong></p>
			        <span class="style6">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style6 style33"><strong>
                    <input id="dob" name="dob" class="text" />
                    </strong></p>
			        <span class="style6">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style6 style33"><strong>
                    <select id="s1" name="gender" style="width:150px;" class="text">
                      <option>--Select--</option>
                      <option>MALE</option>
                      <option>FEMALE</option>
                    </select>
                    </strong></p>
							        
			        <p class="style6">
                      <label for="pic">Select Profile Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="BuyerLogin.jsp" class="style11">Back</a></p>
		          </form>
			
			
			
			
			
          </div>
          <div class="style3"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="style3"></div>
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            
          </ul>
        </div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="fbg style2"></div>
  <div class="footer style2">
    <div class="footer_resize">
      
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style2"></div>
</body>
</html>
