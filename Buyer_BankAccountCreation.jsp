<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bank Account Creation Page</title>
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
.style6 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; color: #333333; }
.style7 {color: #333333}
.style9 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; color: #FF0033; }
.style11 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; color: #FF0033; font-weight: bold; }
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
          <h2>Buyer <%=(String)application.getAttribute("bname") %>'s Bank Account Creation..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
						<%
						
						String buyer=(String )application.getAttribute("bname");
						
						
						String s1,s2,s3,s4,s5;
						
						 
						try 
						{
						   	String query="select * from buyer where buyername='"+buyer+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(9);
								
								
								
								
					%>
            <form action="Buyer_BankAccountCreationStatus.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style6">Account Number (required)</span></label>
  <p class="style43">
    <input id="name" name="accno" class="text" />
  </p>
  <span class="style11">
  <label for="bank">Select Bank (required)</label>
  </span>
  <p class="style43">
    						<select id="s1" name="bank">
                            <option>--Select--</option>
                      		<option>SBI Bank  </option>
                       		<option>HDFC Bank  </option>
							<option>Canara Bank  </option>
							<option>Syndicate Bank  </option>
						   </select>
  </p>
  <span class="style3">
  <label for="email"><span class="style7">Email Id</span></label>
  </span>
  <p class="style43">
    <input id="email" name="email"value="<%=s1%>" readonly />
  </p>
  <span class="style3">
  <label for="mobile"><span class="style7">Mobile Number</span></label>
  </span>
  <p class="style43">
    <input id="mobile" name="mobile" value="<%=s2%>" readonly />
  </p>
  <span class="style3">
  <label for="address"><span class="style7">Address</span></label>
  </span>
  <p class="style43">
     <input id="address" name="address" value="<%=s3%>" readonly />
  </p>
  <span class="style3">
  <label for="site"><span class="style7">Site</span></label>
  </span>
  <p class="style43">
     <input id="site" name="site" value="<%=s4%>" readonly />
  </p>
  
    <span class="style3">
    <label for="amount"><span class="style7">Amount (required)</span></label>
    </span> 
 
  <p class="style43">
    <input id="amount" name="amount" class="text" />
  </p>
  <p align="left" class="style9"><br />
      <input name="submit" type="submit" value="Create Account" />
  </p>
  </form>
  <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					<p class="style19">&nbsp;</p>
				  <p><a href="B_ManageAccount.jsp" class="style16">Back</a></p>
			
			
			
			
			
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
            <li><a href="BuyerMain.jsp">Home</a></li>
			<li><a href="BuyerLogin.jsp">Logout</a></li>
            
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
