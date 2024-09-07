<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Requests Page</title>
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
.style4 {
	font-size: 24px;
	color: #FF0000;
}
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
          <h2>Friend requests To <%=(String)application.getAttribute("bname") %>..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
		  
		  <table width="554" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="132" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style5 style42"><b>Username</b></div></td>
                        <td  width="119" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style5 style42"><b>Mobile</b></div></td>
                        <td  width="117" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42 style5"><b>Address</b></div></td>
                        <td  width="74" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style5 style42"><b>Gender</b></div></td>
						<td  width="78" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style5 style42"><b>Status</b></div></td>
                      </tr>
                      <%
					  	String buyer = (String)application.getAttribute("bname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+buyer+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(6);
									
									String query="select * from buyer where buyername='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
											s10=rs.getString(10);
											
						
					%>
                      <tr>
			
                        <td  width="132" height="54" align="center" valign="middle" class="style7" style="color:#FF0033;">&nbsp;&nbsp;
                              <%out.println(s1);%>                        </td>
                        <td  width="119" height="54" align="center" valign="middle" class="style7" style="color:#333333">&nbsp;&nbsp;
                              <%out.println(s3);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7" style="color:#333333">&nbsp;&nbsp;
                              <%out.println(s4);%>                        </td>
							  <td height="54" align="center"  valign="middle" class="style7" style="color:#333333">&nbsp;&nbsp;
                              <%out.println(s5);%>                        </td>
                        <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="78" valign="middle" height="54" style="color:#000000;"align="center"><a href="B_updateresponse.jsp?rid=<%=j%>" class="style44">waiting</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="16" height="54"align="center" valign="middle" class="style7" style="color:#000000;">
                          <span class="style45">
                          <%out.println(status);%>
                          </span>&nbsp;</td>
                        <%
						}
						%>
                      </tr>
                      <%
						}
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
				  <p align="left" class="style14"><a href="BuyerMain.jsp" class="style13">Back</a></p>
			
			
			
			
			
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
