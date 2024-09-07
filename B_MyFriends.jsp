<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>                      
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Friends Page</title>
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
.style5 {color: #660000}
.style6 {color:#333333}
.style7 {color:#CC0066}
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
          <h2>Buyer <%=(String)application.getAttribute("bname") %>'s Friends..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <table width="545" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="52"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style37 style38 style5"><b>Si No. </b></div></td>
                        <td  width="176" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style37 style38 style5"><b>Image</b></div></td>
                        <td  width="180" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style38 style37 style5"><b>Name</b></div></td>
                        <td  width="127" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
                      </tr>
                      
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,buyer1="";
						int i=0,j=1;
						try 
						{
					
							String buyer=(String)application.getAttribute("bname");
							String sname=(String)application.getAttribute("bsname");
						   	String query="select *  from buyer"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									i=rs.getInt(1);
									s2=rs.getString(2);

									Statement stmt9=connection.createStatement();
									String strQuery9 = "select requestfrom,requestto from frequest where ((requestfrom ='"+buyer+"' and requestto='"+s2+"') ||(requestfrom ='"+s2+"' and requestto='"+buyer+"'))and site='"+sname+"' and status ='Accepted' ";
									ResultSet rs9 = stmt9.executeQuery(strQuery9);
									if(rs9.next()==true)
									{
								
										
												%>
                      <tr>
                        <td height="172" align="center"  valign="middle"><div align="center" class="style6"><b>
                            <%out.println(j);%>
                        </b></div></td>
                        <td width="176" rowspan="1" align="center" valign="middle" ><div class="style5" style="margin:10px 13px 10px 13px;" ><strong>
                            <input  name="image" type="image" src="get_Img.jsp?picture=<%="buyerimage"%>&id=<%=i%>" style="width:150px; height:150px;" />
                        </strong></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style7">
                           
                              <b><%out.println(s2);%></b>

                        </div></td>
                        <td height="172" align="center"  valign="middle"><label>
						 <form id="form1" name="form1" method="post" action="B_FriendDetails.jsp">
                          <input type="hidden" value="<%=s2%>" name="friendname"/>
                         
                          <input type="submit" name="Submit" value="View Details" />
                          </label>  
						  </form>
					    </td>
                      </tr>
                      <%
												j+=1;	
						
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
					 <p align="center">&nbsp;</p>
              <p align="left"><a href="BuyerMain.jsp" class="style75">Back</a></p>
			
			
			
			
			
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
