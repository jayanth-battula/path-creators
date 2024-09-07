<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Phishing Attackers Page</title>
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
.style4 {color: #000000}
.style5 {color: #660000}
.style6 {color: #FF9900;
		font-size: 18px}
.style7 {
	color:#003333;
	font-size: 16px;
	font-weight: bold;
}
.style9 {font-size: 16px}

.style11 {
	font-size: 22px;
	color: #FF0000;
}
.style13 {
	font-size: 16px;
	color: #CC0033;
	font-weight: bold;
}
.style16 {color:#006600;
		font-size: 14px;
}
.style17 {color:#FF3300;
		font-size: 14px;
}
.style18 {color:#006666;
		font-size: 14px;}		
.style19 {color:#996600;
		font-size: 14px;}		
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
          <h2> All Phishing Attackers..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
		  <%
	 
	String site=(String)application.getAttribute("site");
	String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
	int i=0,j=0,count=0;
	try
	{
			  
			 
			%>
            
			
	  	    <table width="700" border="1">
				  
				 
                      <td  width="38"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>ID</b></div></td>
					  <td  width="86" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>Phishing By</b></div></td>
					  <td  width="103" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>Phishing site</b></div></td>
					  <td  width="94" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>Product Name</b></div></td>
					  <td  width="102" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>WebSite</b></div></td>
                      <td  width="96" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>Product Price</b></div></td>
                      <td  width="135"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style10"><b>Date</b></div></td>
                    </tr>
				 
				 
				 <%
				 
				 String query="select * from phishing_attackers where phishing_site='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(8);
								s5=rs.getString(6);
								s6=rs.getString(7);
								
								
												
						
							
						
						count++;
						
						
					%>	
				 
							   <tr>
                      <td height="25" align="center"  valign="middle"><div align="center" class="style3"><span class="style4">
                        <%out.println(i);%>
                      </span></div></td>
					  <td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style17">
                            <b><%out.println(s1);%></b>
                            </span></div></td>
							<td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style18">
                            <b><%out.println(s2);%></b>
                            </span></div></td>
                      <td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style16">
                            <b><%out.println(s3);%></b>
                            </span></div></td>
					  <td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style19">
                            <b><%out.println(s4);%></b>
                            </span></div></td>		
                      <td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s5);%>
                            </span></div></td>
					  <td height="25" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s6);%>
                            </span></div></td>		
              </tr>
					
	     <%
					 }
			
			       %></table> 			
				   <p>&nbsp;</p>
				   <form action="Social_PhishingAttacksInChart.jsp" method="post">
				  
				   <input name="Submit" type="Submit" value="View In Chart" />
				   </form>	   
	 				   
	<p>&nbsp;</p>   
				   
				   
				<%
			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%>
					
			  
			   
					
        	
		<p align="left">&nbsp;</p>
		<p align="left">&nbsp;</p>
		<p align="left"><a href="SocialMain.jsp" class="style95">Back</a></p>
            
			
			
			
			
			
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
