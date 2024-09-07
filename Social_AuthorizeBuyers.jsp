<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authorize Users</title>
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
          <h2>Authorize Buyers..</h2>
          <div class="post_content">
		  
			<p>&nbsp;</p>
          <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>ID</b></div></td>
              <td  width="159" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>User Image</b></div></td>
              <td  width="145" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>User Name</b></div></td>
              <td  width="154" valign="middle" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Mobile</b></div></td>
              <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Email</b></div></td>
              <td  width="133" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b>Address</b></div></td>
              <td  width="112"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><b> Status </b></div></td>
			   
            </tr>
            <%
					  String site=(String)application.getAttribute("site");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from buyer where site='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);								
								s5=rs.getString(10);
								
								
					%>
            <tr>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(i);%>
              </div></td>
              <td width="140" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="get_Img.jsp?picture=<%="buyerimage"%>&id=<%=i%>" style="width:100px; height:100px;" />
              </a></div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style10">
                <b><%out.println(s1);%></b>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s3);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s2);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s4);%>
              </div></td>
              <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="Social_UserStatus.jsp?type=<%="user"%>&name=<%=s1%>" class="style5"><b>waiting</b></a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style7">
                  <b><%out.println(s5);%></b>
              </div></td>
			 		    <%
						}
						
						%>
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
          <p align="right"><a href="SocialMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="SocialMain.jsp" class="style95">Back</a></div></td>
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
            <li><a href="SocialMain.jsp">Home</a></li>
			<li><a href="SocialLogin.jsp">Logout</a></li>
            
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
