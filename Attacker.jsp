<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker Search Products Page</title>
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
.style6 {
	font-size: 18px;
	color: #FF0000;
}
.style7 {color: #fff}
.style8 {color: #FF3333}
.style9 {color: #333333}
.style10 {font-size: 24; color: #660000; }
.style12 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; color: #FF3333; }
.style13 {font-weight: bold}
.style14 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; color: #FF3333; font-weight: bold; }
.style15 {color: #660000}
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
          <h2>Search Products..</h2>
          <div class="post_content">
		  <p>&nbsp;</p>
            <form action="Attacker.jsp" method="post" id="leavereply">
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
					  	<td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="justify" class="style82 style8"><b>Enter  Name</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="atname" />
                        </div></td>
						</tr>
						<tr>
					  	<td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="justify" class="style82 style8"><b>Social Site</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="atsite" />
                        </div></td>
						</tr>
						<tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="justify" class="style82 style8"><b>Enter  Keyword</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style13 style78 style9"> ( searching content Based on Product Description)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
              

              <p align="left"><a href="BuyerMain.jsp" class="style11">Back</a></p>
            </form>
            </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2><span class="style7">Products Found.. </span></h2>
          <div class="post_content">
            <p>
              <%
  String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="",p_Price="",p_Category="",site="",atname="",atsite=""; 
			int i=0,j=0,k=0,a1=0,rank=0;

try
{	
						String attacker = (String)application.getAttribute("atname");
								atname= request.getParameter("atname");
								atsite= request.getParameter("atsite");
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
								 
								
								String str = "select * from products where p_np!="+0+"";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    p_Name = rs.getString(3);
									p_Price = rs.getString(9);
									p_Category = rs.getString(2);
									p_Desc = rs.getString(5);  
								    rank   = rs.getInt(13);
									site   = rs.getString(14); 
								
									
								
									p_Desc1 = p_Desc.toLowerCase(); 
									 
									if (p_Desc1.indexOf(l_Input)>=0)
									{
 			
 		  
			String str4 = "insert into productsearch (buyer,p_name,category,keyword,dt) values('"+attacker+"','"+p_Name+"','"+p_Category+"','"+input+"','"+dt+"')";
							connection.createStatement().executeUpdate(str4);
					
		
			
												
									
						if(a1==0)
						{
									%>
            </p>
				  <p>&nbsp;</p>
				  <table width="506" border="1" align="center">
              <tr>
                <td colspan="4" align="center" class="style10">Results Found in Products</td>
              </tr>
              <tr>
                <td width="130" height="28" align="center" valign="middle"><span class="style14">Product Name  </span></td>
                <td width="192" align="center" valign="middle"><span class="style14">Product Price</span></td>
                
              </tr>
              <%}a1=1;%>
              <tr>
                <td height="55" align="center" valign="middle"><div align="center" class="style5"><b><%=p_Name%></b></div></td>
				<td height="55" align="center" valign="middle"><div align="center" class="style5"><b><%=p_Price%></b></div></td>
                
                
                <td width="97" height="55"><div align="center">
                    <p class="style50"><a href="Attacker_SearchProductsDetails.jsp?at_Name=<%=atname%>&at_Site=<%=atsite%>&p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>&amp;p_Category=<%=p_Category%>&amp;rank=<%=rank%>&amp;site=<%=site%>" class="style56 style30 style15"><b>View Details</b></a></p>
                </div></td>
              </tr>
              <%	}
						  
						}%>
            </table>
				 
					
            
           
             <blockquote>
						      <p class="style72">
              <%

				
			
		
		}	
	
		else
		{
			%>
            </p>
            <h3 align="center" class="style66 style72 style48">&nbsp;</h3>
            <h3 align="center" class="style66 style72 style48 style5 style6">Please Enter Correct Keyword!!</h3>
            <%
		}
	}
	

catch(Exception e)
{
	e.printStackTrace();
}
%>
            </p>
			</blockquote>
			
			
			
			
			
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
            
			<li><a href="index.html">Logout</a></li>
            
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
