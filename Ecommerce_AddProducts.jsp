<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Adding Products Page</title>
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
.style4 {color: #333333;
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
          <h2>Adding Products..</h2>
          <div class="post_content">
		  <form action="Ecommerce_AddProducts1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			        
                    <p>
                      <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select category FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
		
	   }
	   
		
		
%>
                      
                    </p>
                    <p>&nbsp;</p>
                    <table width="500" border="0" align="center">
                      <tr>
                        <td width="146" height="33"><div align="justify"><span class="style4">Select  Category </span></div></td>
                        <td width="394"><label>
                          <select id="s1" name="category">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36"><div align="justify"><span class="style4"> Product Name </span> </div></td>
                        <td><label>
                          <input type="text" id="t1" name="pname" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style4"> Uses </span></div></td>
                        <td><label>
                          <textarea name="uses" cols="19" rows="5" id="t2"></textarea>
                        </label></td>
                      </tr>
					  <tr>
                        <td height="51"><div align="justify"><span class="style4"> Description </span></div></td>
                        <td><label>
                          <textarea name="desc" cols="19" rows="5" id="t3"></textarea>
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style4">Product Manufacture </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="pmfg" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style4">Made </span></div></td>
                        <td><label>
                          <input type="text" id="t4" name="pmade" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style4">Year </span></div></td>
                        <td><label>
                          <input type="text" id="t5" name="pyear" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style4">Price </span></div></td>
                        <td><label>
                          <input type="text" id="t6" name="price" />
                        </label></td>
                      </tr>        
					  <tr>
                        <td height="35"><div align="justify"><span class="style4">No of Products </span></div></td>
                        <td><label>
                          <input type="text" id="t7" name="pno" />
                        </label></td>
                      </tr>             
                      <tr>
                        <td height="38"><div align="justify"><span class="style4"> Select Image </span></div></td>
                        <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Product" />
                          </div></td>
                      </tr>
                    </table>
		            <p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            </p>
</form>
			      <p>&nbsp;</p>
		
					<div align="left	"><a href="EcommerceMain.jsp" class="style11 style5">Back</a></div>
			
			
			
			
			
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
