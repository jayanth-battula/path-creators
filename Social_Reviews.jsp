<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Product Reviews Page</title>
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
.style7 {color:#660000}
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
          <h2>Product <%=request.getParameter("p_Name")%> Review Details....</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="650" border="1" align="left" cellpadding="0" cellspacing="0" >
                    
					 <tr>
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7"><b>Reviewed By</b></div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7"><b>Date</b></div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7"><b>Review Details</b></div>
					     </div></td>
				    </tr>
					
					<%
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Category=request.getParameter("p_Category");
					String site=request.getParameter("site");
					
					
					int a=0;
						String str2="select * from reviews where p_name='"+p_Name+"'  and category='"+p_Category+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							
								
			%>
			     
					   
					   <tr>
                         <td height="49"><div align="center" class="style3" style="color:#006666"><b><%= c_user%></b></div></td>
					     <td><div align="center" class="style3" style="color:#006666"><b><%= c_date%></b></div></td>
					     <td><div align="center" class="style3" style="color:#006666"><b><%= c_comment%></b></div></td>
			        </tr>
					 
	            
			   
			      <p>&nbsp;</p>
			      
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
           <p><a href="Social_ViewAllProducts.jsp" class="style11"><b>Back</b></a></p>
			
			
			
			
			
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
