<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Products Page</title>
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
.style12 {font-size: 18px}
.style13 {color: #0066FF}
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
          <h2> <%=(String)application.getAttribute("esite")%>'s All Products..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            
<table width="830" border="1" align="center">
  <tr>
   <td width="18" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Id</b> </span></div></td>
   <td width="52"><div align="center" style="color:#660000"><b>Product Category</b></div></td>
    <td width="49"><div align="center" style="color:#660000"><b>Product Name</b></div></td>
  <td width="130" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Image</b> </span></div></td>
      <td width="74"><div align="center" style="color:#660000"><span class="style3" style="color:#660000"><b>Manufacture</b> </span></div></td>
	  <td width="32"><div align="center" style="color:#660000"><b>Made</b></div></td>
	  <td width="90"><div align="center" style="color:#660000"><b>Price</b></div></td>	  
    <td width="66"><div align="center" style="color:#660000"><b>Description</b></div></td>
	  <td width="28"><div align="center" style="color:#660000"><span class="style3" style="color:#660000"><b>Date</b></span></div></td>
	  <td width="58"><div align="center" style="color:#660000"><b>Available Qty</b></div></td>
	  <td width="29"><div align="center"><span class="style3" style="color:#660000"><b>Rank</b></span></div></td>
	  	  <td width="54"><div align="center"><span class="style3" style="color:#660000"><b>Reviews</b></span></div></td>
  </tr>

            

<%

	String site= (String)application.getAttribute("esite");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13,n="";
	int i=0,j=0,k=0,r=0;

      	try 
	{
        
          
      		
      		
      	   String query="select * from products where site='"+site+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(6);
		s4=rs.getString(7);
		s5=rs.getString(4);
		s6=rs.getString(8);
		s7=rs.getString(5);
		s8=rs.getString(12);
		s9=rs.getString(9);
		s10=rs.getString(14);
		r=rs.getInt(13);
		n=rs.getString(10);
		
					
		
		%>



  <tr>
      <td><div align="center" style="color:#000000"><%=i%></div></td>
	  <td><div align="center" style="color:#CC6600"><b><%=s1%></b></div></td>
    <td><div align="center" style="color:#FF0033"><b><%=s2%></b></div></td>
    <td><div align="center">
      <input  name="image" type="image" src="get_Img.jsp?picture=<%="productimage"%>&id=<%=i%>" style="width:150px; height:120px;" /></div>
	 </td>
    <td><div align="center" style="color:#009999"><b><%=s3%></b></div></td>
	<td><div align="center" style="color:#000000"><%=s4%></div></td>
	<td><div align="center" style="color:#000000"><b><%=s9%></b> Rs</div></td>     
	 <td><div align="center" style="color:#000000"><%=s7%></div></td>
		  	   <td><div align="center" style="color:#000000"><%=s8%></div></td>
			   <td><div align="center" class="style12" style="color:#003300"><b><%=n%></b></div></td>
			   <td><div align="center" style="color:#000000"><%=r%></div></td>
		  	   <td><div align="center"><a href="Ecommerce_Reviews.jsp?p_Name=<%= s2%>&amp;p_Category=<%=s1%>&amp;site=<%=s10%>" class="style5 style13">Reviews</a></div></td>
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
		          <p><a href="EcommerceMain.jsp" class="style16">Back</a></p>
			
			
			
			
			
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
