<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Purchased Products Page</title>
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
.style5 {color: #fff}
.style8 {color: #000000;}
.style9 {
	color: #CC0033;
	font-weight: bold;
}
.style10 {color:#FF6600;
	font-weight: bold;}
.style13 {
	color: #660000;
	font-weight: bold;
}
.style14 {color:#006600;
		font-size:14px}
.style15 {color:#FF0000;
		font-size:14px}
.style17 {color: #990033}
.style18 {color:#336600;
		font-weight:bold}	
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
          <h2>All Purchased Products Based On Ecommerce WebSite..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            <p>
	  	      <%
	String site= (String)application.getAttribute("site"); 
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",p="",pr="",prc="";
	int i=0,count=0,total1=0,totals1=0,totalpr1=0,totalprc1=0;
	try
	{
			
			   
			 
			 
			%>
            </p>
			
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style5" style="color:#336600" ><span class="style17">Ecommerce WebSite :</span> 
				      <%out.println("Flipkart");%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13"><b>Si No. </b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased User</b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased Site</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Product Name</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Category</b></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Price</b></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Date</b></div></td>
					  <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Request Mode</b></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	 
						   	
						   	String query="select *  from purchase where site='"+"Flipkart"+"' and social_site='"+site+"' and status='"+"Successful"+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
						
									i=rs.getInt(1);
									s1=rs.getString(2);
									s2=rs.getString(7);
									s3=rs.getString(3);
									s4=rs.getString(4);
									s5=rs.getString(5);
									s6=rs.getString(6);		
									s7=rs.getString(10);
									
									
											
						
							
						count++;	
						 int total=Integer.parseInt(s5);
						   total1=total1+total;
				
			   
					 %>
							   <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><b>
                          <%out.println(i);%>
                      </b></div></td>
					  
                      <td align="center"  valign="middle"><div align="center" class="style9">
                       <b><a href="Social_BuyerProfile.jsp?buyer=<%=s1%>&type=<%="Social_PurchasedProducts"%>&sname=<%=site%>" style="color:#CC0033"><%out.println(s1);%></a>
                      </b></div></td>
					  <td align="center"  valign="middle"><div align="center" class="style10">
                       <b><%out.println(s2);%>
                      </b></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><a href="Social_ProductDetails.jsp?p_Name=<%=s3%>&type=<%="Social_PurchasedProducts"%>" style="color:#006666"><%out.println(s3);%></a></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s4);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s5);%>
                        <b>Rs</div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s6);%>
                      </div></td>
					  <%
						if(s7.equalsIgnoreCase("Normal"))
						{
						
						%>
					  <td align="center"  valign="middle"><div align="center" class="style14">
             		   <b><%out.println(s7);%></b>
             		 </div></td>
			 		   <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style15">
							
							<b><%out.println(s7);%></b>
						  </div></td>
            			 <%}%>
              </tr>
							
	     <%
					 }
					 
			
			       %></table> 				   
					<div align="left" class="style18">
			        <p>&nbsp;</p>
	 				<p>
			          <%out.println("Total Bill : "+total1+" "+"Rs");%>
		            </p>  
					</div> 
	<p>&nbsp;</p>
	
	
	
	<table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style5" style="color:#336600" ><span class="style17">Ecommerce WebSite :</span> 
				      <%out.println("Amazon");%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13"><b>Si No. </b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased User</b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased Site</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Product Name</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Category</b></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Price</b></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Date</b></div></td>
					  <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Request Mode</b></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	 
						   	
						   	String query1="select *  from purchase where site='"+"Amazon"+"' and social_site='"+site+"' and status='"+"Successful"+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
						
									i=rs1.getInt(1);
									s1=rs1.getString(2);
									s2=rs1.getString(7);
									s3=rs1.getString(3);
									s4=rs1.getString(4);
									p=rs1.getString(5);
									s6=rs1.getString(6);		
									s7=rs1.getString(10);
									
									
											
						
							
						count++;	
						 int totals=Integer.parseInt(p);
						   totals1=totals1+totals;
				
			   
					 %>
							   <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><b>
                          <%out.println(i);%>
                      </b></div></td>
					  
                      <td align="center"  valign="middle"><div align="center" class="style9">
                       <b><a href="Social_BuyerProfile.jsp?buyer=<%=s1%>&type=<%="Social_PurchasedProducts"%>&sname=<%=site%>" style="color:#CC0033"><%out.println(s1);%></a>
                      </b></div></td>
					  <td align="center"  valign="middle"><div align="center" class="style10">
                       <b><%out.println(s2);%>
                      </b></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><a href="Social_ProductDetails.jsp?p_Name=<%=s3%>&type=<%="Social_PurchasedProducts"%>" style="color:#006666"><%out.println(s3);%></a></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s4);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(p);%>
                        <b>Rs</div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s6);%>
                      </div></td>
					  <%
						if(s7.equalsIgnoreCase("Normal"))
						{
						
						%>
					  <td align="center"  valign="middle"><div align="center" class="style14">
             		   <b><%out.println(s7);%></b>
             		 </div></td>
			 		   <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style15">
							
							<b><%out.println(s7);%></b>
						  </div></td>
            			 <%}%>
              </tr>
							
	     <%
					 }
					 
			
			       %></table> 				   
					<div align="left" class="style18">
			        <p>&nbsp;</p>
	 				<p>
			          <%out.println("Total Bill : "+totals1+" "+"Rs");%>
		            </p>  
					</div> 
	<p>&nbsp;</p>
	
	<table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style5" style="color:#336600" ><span class="style17">Ecommerce WebSite :</span> 
				      <%out.println("Snapdeal");%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13"><b>Si No. </b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased User</b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased Site</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Product Name</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Category</b></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Price</b></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Date</b></div></td>
					  <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Request Mode</b></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	 
						   	
						   	String query2="select *  from purchase where site='"+"Snapdeal"+"' and social_site='"+site+"' and status='"+"Successful"+"'"; 
						   	Statement st2=connection.createStatement();
						   	ResultSet rs2=st2.executeQuery(query2);
					   		while ( rs2.next() )
					   		{
						
									i=rs2.getInt(1);
									s1=rs2.getString(2);
									s2=rs2.getString(7);
									s3=rs2.getString(3);
									s4=rs2.getString(4);
									pr=rs2.getString(5);
									s6=rs2.getString(6);		
									s7=rs2.getString(10);
									
									
											
						
							
						count++;	
						 int totalpr=Integer.parseInt(pr);
						   totalpr1=totalpr1+totalpr;
				
			   
					 %>
							   <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><b>
                          <%out.println(i);%>
                      </b></div></td>
					  
                      <td align="center"  valign="middle"><div align="center" class="style9">
                       <b><a href="Social_BuyerProfile.jsp?buyer=<%=s1%>&type=<%="Social_PurchasedProducts"%>&sname=<%=site%>" style="color:#CC0033"><%out.println(s1);%></a>
                      </b></div></td>
					  <td align="center"  valign="middle"><div align="center" class="style10">
                       <b><%out.println(s2);%>
                      </b></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><a href="Social_ProductDetails.jsp?p_Name=<%=s3%>&type=<%="Social_PurchasedProducts"%>" style="color:#006666"><%out.println(s3);%></a></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s4);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(pr);%>
                        <b>Rs</div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s6);%>
                      </div></td>
					  <%
						if(s7.equalsIgnoreCase("Normal"))
						{
						
						%>
					  <td align="center"  valign="middle"><div align="center" class="style14">
             		   <b><%out.println(s7);%></b>
             		 </div></td>
			 		   <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style15">
							
							<b><%out.println(s7);%></b>
						  </div></td>
            			 <%}%>
              </tr>
							
	     <%
					 }
					 
			
			       %></table> 				   
					<div align="left" class="style18">
			        <p>&nbsp;</p>
	 				<p>
			          <%out.println("Total Bill : "+totalpr1+" "+"Rs");%>
		            </p>  
					</div> 
	<p>&nbsp;</p>
	
	<table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style5" style="color:#336600" ><span class="style17">Ecommerce WebSite :</span> 
				      <%out.println("ebay");%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13"><b>Si No. </b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased User</b></div></td>
					  <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Purchased Site</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Product Name</b></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Category</b></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Price</b></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Date</b></div></td>
					  <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13"><b>Request Mode</b></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	 
						   	
						   	String query3="select *  from purchase where site='"+"ebay"+"' and social_site='"+site+"' and status='"+"Successful"+"'"; 
						   	Statement st3=connection.createStatement();
						   	ResultSet rs3=st3.executeQuery(query3);
					   		while ( rs3.next() )
					   		{
						
									i=rs3.getInt(1);
									s1=rs3.getString(2);
									s2=rs3.getString(7);
									s3=rs3.getString(3);
									s4=rs3.getString(4);
									prc=rs3.getString(5);
									s6=rs3.getString(6);		
									s7=rs3.getString(10);
									
									
											
						
							
						count++;	
						 int totalprc=Integer.parseInt(prc);
						   totalprc1=totalprc1+totalprc;
				
			   
					 %>
							   <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><b>
                          <%out.println(i);%>
                      </b></div></td>
					  
                      <td align="center"  valign="middle"><div align="center" class="style9">
                       <b><a href="Social_BuyerProfile.jsp?buyer=<%=s1%>&type=<%="Social_PurchasedProducts"%>&sname=<%=site%>" style="color:#CC0033"><%out.println(s1);%></a>
                      </b></div></td>
					  <td align="center"  valign="middle"><div align="center" class="style10">
                       <b><%out.println(s2);%>
                      </b></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><a href="Social_ProductDetails.jsp?p_Name=<%=s3%>&type=<%="Social_PurchasedProducts"%>" style="color:#006666"><%out.println(s3);%></a></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(s4);%></b>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <b><%out.println(prc);%>
                        <b>Rs</div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s6);%>
                      </div></td>
					  <%
						if(s7.equalsIgnoreCase("Normal"))
						{
						
						%>
					  <td align="center"  valign="middle"><div align="center" class="style14">
             		   <b><%out.println(s7);%></b>
             		 </div></td>
			 		   <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style15">
							
							<b><%out.println(s7);%></b>
						  </div></td>
            			 <%}%>
              </tr>
							
	     <%
					 }
					 
			
			       %></table> 				   
					<div align="left" class="style18">
			        <p>&nbsp;</p>
	 				<p>
			          <%out.println("Total Bill : "+totalprc1+" "+"Rs");%>
		            </p>  
					</div> 
	<p>&nbsp;</p>
				<%
				
				
			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
	%><p>&nbsp;</p>
					
					
        	
		<p align="left"><a href="SocialMain.jsp" class="style2">Back</a></p>
			
			
			
			
			
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
