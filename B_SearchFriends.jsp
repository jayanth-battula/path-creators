<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends Page</title>
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
.style6 {color: #FF6600}
.style7 {
	color: #660000;
	font-weight: bold;
}
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
          <h2>Search Friends..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <form id="form1" method="post" action="B_SearchFriends.jsp">
              <table width="392" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="145"><span class="style6 style49"><b>Enter Friend Name:</b></span></td>
                  <td width="214"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                </tr>
              </table>
              <p align="center">&nbsp;</p>
              <p align="center"><a href="BuyerMain.jsp" class="style75">Back</a></p>
            </form>
			
		  </div>
	  	</div>
          
          <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <div class="article">
          
		 <h2>  Results Found..	 </h2>
		 <div class="post_content">		   
          <p>&nbsp;</p>
            <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String buyer = (String)application.getAttribute("bname");
						String sname=(String)application.getAttribute("bsname");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into fsearch(buyername,keyword,dt) values('"+buyer+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3);
											 	   
								
							
											String query="select * from buyer where (buyername!='"+buyer+"' and site='"+sname+"') and status='"+"Authorized"+"' and buyername  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(11);
												s8=rs.getString(10);
												s9=rs.getString(9);
										
										
			  %>
            
              <table border="3" width="518" style="margin:5px 10px 10px 5px;">
                <tr>
                  <td rowspan="7" width="148" ><input  name="image2" type="image" src="get_Img.jsp?picture=<%="buyerimage"%>&id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />                  </td>
                  <td width="118" height="27" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">Buyer Name :</span></div></td>
                  <td width="249" style="margin-left:20px; color:#CC0033;"><div align="left" class="style75"><b><%=s1%></b></div></td>
                </tr>
                <tr>
                  <td height="25" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">E-Mail :</span></div></td>
                  <td style="margin-left:20px; color:#2C83B0;"><div align="left" class="style75"><%=s2%></div></td>
                </tr>
                <tr>
                  <td height="30" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">Mobile :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s3%></div></td>
                </tr>
                <tr>
                  <td height="22" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">Address :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s4%></div></td>
                </tr>
                <tr>
                  <td height="26" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">DOB :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s5%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">Gender :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s6%></div></td>
                </tr>
				
                <tr>
                  <td height="46" align="left"><div align="left" class="style30"><span class="style7" style="margin-left:20px;">Status :</span></div></td>
                  <td style="margin-left:20px; color:#000000;"><p align="left" class="style76"><%=s8%><span style="float:right"><a href="B_updaterequest.jsp?rname=<%=s1%>&amp;site=<%=s9%>">
                      <input class="art-button" name="button2" type="button" value="Request" />
                  </a></span></p></td>
                </tr>
              </table>
            <p><span class="style72">
                <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
              </span></p>
			
			
			
			
			
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
