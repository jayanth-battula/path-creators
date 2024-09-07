<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Details Page</title>
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
          <h2><%=(String)application.getAttribute("bname") %>'s Account Details..</h2>
          <div class="post_content">		  
			<p>&nbsp;</p>
		  <table width="500" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String buyer=(String )application.getAttribute("bname");
						
						String i,s1,s2,s3,s4,s5,s6;
						int s7=0;;
						 
						try 
						{
						   	String query="select * from buyerbankaccount where buyer='"+buyer+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getInt(8);
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank Account Number </b></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style27" style="margin-left:20px;">
                          <b><%out.println(i);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>User Name </b></div></td>
                      <td  width="221" valign="middle" height="50" style="color:#FF0066"><div align="left" class="style18" style="margin-left:20px;">
                          <b><%out.println(s1);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Email</b></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color:#CC6600"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Mobile</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Bank</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #2C83B0;"><div align="left" class="style10 style33 style42 style43 style44"  style="margin-left:20px;">
                          <b><%out.println(s5);%></b>
                      </div></td>
                    </tr>
					<tr>
                      <td align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Site</b></div></td>
                      <td align="left" valign="middle" height="51" style="color: #006666;"><div align="left" class="style10 style33 style42 style43 style44"  style="margin-left:20px;">
                          <b><%out.println(s6);%></b>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #660000;"><div align="left" class="style5" style="margin-left:20px;"><b>Amount</b></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                        <div align="left" class="style3" style="margin-left:20px;">
                          <b><%out.println(s7);%></b>
                        <span class="style3">Rs/-</span>                      </div></td>
                    </tr>
                    <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>

<p>&nbsp;</p>
		<div align="left" class="style22"><a href="B_ManageAccount.jsp" class="style11">Back</a></div>
			
			
			
			
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
