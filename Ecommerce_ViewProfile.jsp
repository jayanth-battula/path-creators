<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Profile Page</title>
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
.style4 {color: #CC6600}
.style5 {color: #660000}
.style7 {color: #000000;
		 font-size: 14px}
.style8 {font-weight: bold}
.style9 {color:#996600;
		font-size: 14px}
.style10 {color:#FF3333;
		font-size: 14px}
.style11 {font-size: 12px}
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
          <h2> <%=(String)application.getAttribute("esite")%> User <%=(String)application.getAttribute("euser")%>'s Profile..</h2>
          <div class="post_content">
		  
			<p>&nbsp;</p>
		  <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="35"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>User Name</b></div></td>
					  <td  width="84"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Mobile</b></div></td>
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Email</b></div></td>
					  <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>DOB</b></div></td>
					  <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Gender</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Address</b></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Status</b></div></td>
                    </tr>
                    <%
					  	
						String euser=(String)application.getAttribute("euser");
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from esite where username='"+euser+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(6);
								s3=rs.getString(5);
								s4=rs.getString(7);
								s5=rs.getString(10);
								s6=rs.getString(9);
								s7=rs.getString(8);
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style9">
                            <span class="style9">
                            <b><%out.println(s1);%></b>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            <span class="style7">
                            <%out.println(s2);%>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s3);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s7);%>
                            </span></div></td>		
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s6);%>
                            </span></div></td>	
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s4);%>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                            
                            <%out.println(s5);%>
                            </span></div></td>	 
                      
                     
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
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
				  <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="EcommerceMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
			
			
			
			
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
            <li><a href="EcommerceMain.jsp">Home</a></li>
			<li><a href="EcommerceLogin.jsp">Logout</a></li>            
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
