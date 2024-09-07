<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched Product Details</title>
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
.style5 {color:#006633}
.style7 {color: #fff}
.style8 {color: #FF3333}
.style10 {font-size: 24; color: #660000; }
.style15 {color: #660000}
.style16 {color: #f4be04}
.style18 {color:#333333}
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
          <h2>Searched Product Details..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            <%
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Category=request.getParameter("p_Category");
					String site=request.getParameter("site");
					String at_Name=request.getParameter("at_Name");
					String at_Site=request.getParameter("at_Site");
					
					int rank=Integer.parseInt(request.getParameter("rank"));
					
					int rankup=rank+1;
					
					
					
					String rankUp="update products set rank="+rankup+" where p_name='"+p_Name+"' ";
					connection.createStatement().executeUpdate(rankUp);
			
					String str1="select * from products where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String made = rs1.getString(7);
						String description = rs1.getString(5);
						String price = rs1.getString(9);
						String date = rs1.getString(12);
						String np = rs1.getString(10);	
						
							
							
						
			%>
			      <table width="650" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="get_Img.jsp?picture=<%="productimage"%>&id=<%=i%>" style="width:160px; height:250px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style3 style73"><span class="style10"><b>Category</b> </span></div></td>
                      <td width="287"><div align="center" class="style8"><b><%= p_Category%></b></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style10"><b> Price </b></div></td>
                      <td><div align="center" class="style18"><b><%= price%> Rs/-</b></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style10"><b>Made</b></div></td>
                     <td><div align="center" class="style5"><b><%= made%></b></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style10"><b> Description </b></div></td>
                      <td><div align="center" class="style3"></div>
                      
                        
                              <div align="center"><span class="style3">
                              <textarea name="textarea" cols="40" rows="8"><%= description%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style10"><b>Date</b></div></td>
                      <td><div align="center" class="style18"><%= date%></div></td>
                    </tr>
                    <tr >
                      <td width="117" height="56" ></td>
                      <td><br/>
					  <form method="post" action="Attacker_PurchaseRequest.jsp"><label>
                 
                    <div align="center"> 
					    <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
					    <input type="hidden" value="<%=p_Category%>" name="p_Category"/>
						<input type="hidden" value="<%=site%>" name="site"/>
						<input type="hidden" value="<%=price%>" name="price"/>
						<input type="hidden" value="<%=np%>" name="np"/>
						<input type="hidden" value="<%=at_Name%>" name="at_Name"/>
						<input type="hidden" value="<%=at_Site%>" name="at_Site"/>
				       <input type="submit" style="width:70px; height:25px; background-color:#f4be04; color:#000000;" name="Submit3" value="Buy" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 <%
						int a=0;
						String str2="select * from reviews where p_name='"+p_Name+"'  and category='"+p_Category+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							
								if(a==0){
					%>
					 <tr>
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Reviewed By</div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Date</div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7 style8">Review Details</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style3" style="color:#FF0099"><b><%= c_user%></b></div></td>
					     <td height="49"><div align="center" class="style3" style="color:#FF0099"><b><%= c_date%></b></div></td>
					     <td headers="49"><div align="center" class="style3" style="color:#FF0099"><b><%= c_comment%></b></div></td>
			        </tr>
					<%}%>
					 
	            </table>
			   
			      <p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="left">
				     <p><a href="Attacker.jsp" class="style11"></a></p>
				     <p>&nbsp;</p>
				     
				     <p><a href="Attacker.jsp" class="style11 style16"><b>Back</b></a></p>
	        </div>
			
			
			
			
			
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
            <li><a href="Attacker.jsp">Home</a></li>
			
            
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
