<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile Page</title>
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
.style5 {color: #660000}
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
          <h2>User <%=request.getParameter("buyer")%>'s Profile..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String buyer=request.getParameter("buyer");
						String type=request.getParameter("type");
						String sname=request.getParameter("sname");
						
						String s1,s2,s3,s4,s5,s44,s7;
						int i=0;
						try 
						{
						   	String query="select * from buyer where buyername='"+buyer+"' and site='"+sname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(10);
								s7=rs.getString(9);
								
								
								
								
								
					%>
                    <tr>
                      <td width="222" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="get_Img.jsp?picture=<%="buyerimage"%>&id=<%=i%>" style="width:170px; height:150px;" />
                      </a></strong></div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="20" style="color: #000000;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong><span class="style12 style5">E-Mail</span></strong></div></td>
                      <td  width="133" valign="middle" height="40" style="color:#006666;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style11 style5" style="margin-left:20px;"><b>Mobile</b></div></td>
                      <td  width="133" valign="middle" height="40" style="color: #333333;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style11 style5" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #333333;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style11 style5" style="margin-left:20px;"><b>Date of Birth</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #333333;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="184" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style11 style5" style="margin-left:20px;"><b>Status</b></div></td>
					  
					  
					  
                      <td  width="133" align="left" valign="middle" height="51" style="color: #333333;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                            <%out.println(s4);%>
                      </div></td>
                    </tr>
					<tr>
                      <td   width="184" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style11 style5" style="margin-left:20px;"><b>Social Network</b></div></td>
					  
					  
					  
                      <td  width="133" align="left" valign="middle" height="51" style="color: #FF3300;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                           <b> <%out.println(s7);%></b>
                      </div></td>
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
				  <p>&nbsp;</p>
				  <h3 align="right">&nbsp;</h3>
			<% 
			if(type.equalsIgnoreCase("Social_Exploit")){%>
            <h2 align="right"><a href="Social_ViewAllExploitVulnerability.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_PurchasedProducts")){%>
            <h2 align="right"><a href="Social_ViewAllPurchasedProducts.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_MoneyLaundering")){%>
            <h2 align="right"><a href="Social_ViewAllMoneyLaundering.jsp" class="style4">Back</a></h2>
			<%}
			

			%> 
			
			
			
			
			
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
            <li><a href="SocialMain.jsp"><strong>Home</strong></a></li>
			<li><a href="SocialLogin.jsp"><strong>Logout</strong></a></li>
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
