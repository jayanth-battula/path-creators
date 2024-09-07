<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Request Response Page</title>
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
.style9 {color:#000000}
.style44 {color:#FF0033}
.style45 {color: #006633}
.style8 {
	color: #660000;
	font-weight: bold;
}
.style10 {color: #660000}
.style12 {color:#006666}
.style14 {color:#996600;
		font-size:14px}
.style15 {color:#FF0000;
		font-size:14px}
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
          <h2> <%=(String)application.getAttribute("esite")%>'s <span class="style1">All Product Purchase Requests(Deliver Status)..</span></h2>
          <div class="post_content">
		  <p>&nbsp;</p>
          <table width="700" border="2" bgcolor="#FFFFFF" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="106"  valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style56 style57 style8">ID</div></td>
              
			  <td  width="250" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Buyer Name</b></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Product Name</b></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Product Category</b></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Product Price</b></div></td>
              <td  width="217" valign="middle" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Requested Date</b></div></td>
			  <td  width="400" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Request Mode</b></div></td>
              <td  width="400" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56 style10"><b>Deliver Status</b></div></td>
            </tr>
            <%
					  String site=(String)application.getAttribute("esite");
					  String s1,s2,s3,s4,s5,s6,s7,s8,s9;
						int i=0,j=1;
						try 
						{
																					
						   	String query="select * from purchase_request where site='"+site+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(8);
								s7=rs.getString(10);
								s9=rs.getString(9);
								
								
								
								
								
								
					%>
            <tr>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(j);%>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style44"><b>
			    <a href="Ecommerce_BuyerProfile.jsp?buyer=<%=s1%>&type=<%="Ecommerce_PurchaseRequest"%>&sname=<%=s9%>" style="color:#FF0033"><%out.println(s1);%></a>
			  </b></div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style45">
                <b><a href="Ecommerce_ProductDetails.jsp?p_Name=<%=s2%>&type=<%="Ecommerce_PurchaseRequest"%>" style="color:#006633"><%out.println(s2);%></a></b>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <b><%out.println(s3);%></b>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s4);%>
              </div></td>
			   <td align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s5);%>
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
             
              <%
						if(s6.equalsIgnoreCase("pending"))
						{
						
						%>
              <td valign="middle" height="60" title="Click to Perform the Action" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46">
				  
				  <form method="post" action="Ecommerce_AcceptPurchaseRequest.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=s2%>" name="p_Name"/>
					    <input type="hidden" value="<%=s3%>" name="p_Category"/>
						<input type="hidden" value="<%=i%>" name="id"/>
						<input type="hidden" value="<%=s1%>" name="buyer"/>
						<input type="hidden" value="<%=s9%>" name="sname"/>
						<input type="hidden" value="<%=s4%>" name="price"/>
						<input type="hidden" value="<%=s7%>" name="mode"/>
						<input type="hidden" value="<%=site%>" name="site"/>
				       <input type="submit" style="width:70px; height:25px; background-color:#006666; color:#FFFFFF;" name="Submit3" value="Accept" />
                    </div>
                 </label></form>   
				 <br/>
				 <form method="post" action="Ecommerce_RejectPurchaseRequest.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=s2%>" name="p_Name"/>
					    <input type="hidden" value="<%=s3%>" name="p_Category"/>
						<input type="hidden" value="<%=i%>" name="id"/>
						<input type="hidden" value="<%=s1%>" name="buyer"/>
						<input type="hidden" value="<%=site%>" name="site"/>
						<input type="hidden" value="<%=s4%>" name="price"/>
				       <input type="submit" style="width:70px; height:25px; background-color:#000000; color:#FFFFFF;" name="Submit3" value="Reject" />
                    </div>
                 </label></form>                                 
				 </div>
             
			  
			  
                  <div align="center" class="style20 style37 style46"></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<b><%out.println(s6);%></b>
						  </div></td>
            			 <%}%>      
           
						
						 
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="left"><a href="EcommerceMain.jsp" class="style11"></a></p>
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
