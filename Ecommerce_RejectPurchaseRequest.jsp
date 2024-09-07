<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Purchase Response Page</title>
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
          <h2> <%=(String)application.getAttribute("esite")%>'s Purchase Request Status..</h2>
          <div class="post_content">
		  
<%

							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();

							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String date = strDate + "   " + strTime;
							
							
							
	
	String p_Name =  request.getParameter("p_Name");

	String p_Category =  request.getParameter("p_Category");
	
	String site =  request.getParameter("site");
	
	int price = Integer.parseInt( request.getParameter("price"));
	
	String buyer =  request.getParameter("buyer");
	
  	try{  
	     
		int ac_no=0,bal=0,avl_pr=0; 
		
		
		
String np="SELECT p_np FROM products where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"'";
Statement npst = connection.createStatement();
ResultSet nprs =npst.executeQuery(np);
if(nprs.next()==true)
{		 

avl_pr= Integer.parseInt(nprs.getString(1));


}
		 
		 String updpr=String.valueOf(avl_pr+1);
		 
		 
		 /* Updating the Available Product into Products Table */
														
					String avpr="UPDATE products SET p_np="+updpr+" where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"'";
					Statement prst=connection.createStatement();
					prst.executeUpdate(avpr);	
							
				/* Updation Query Ends */
				
				
		/* Updating the Transaction Details into Ministatement */	
						
		       Statement stmini = connection.createStatement();
			   String querymini ="insert into ministatement (buyer,t_amount,t_purpose,date) values ('"+buyer+"',"+price+",'"+"Refund"+"','"+date+"')";
			   stmini.executeUpdate (querymini);
						
						
				/* Updation Query Ends */		
				
				
					 
String cardsql="SELECT * FROM buyerbankaccount where buyer='"+buyer+"'";
Statement cardst = connection.createStatement();
ResultSet cardrs =cardst.executeQuery(cardsql);
if(cardrs.next()==true)
{

		 bal=cardrs.getInt(8);
				
				
}				
				String acbal=String.valueOf(bal+price);
				
				
				/* Updating the Balance into Bank Account */
														
							String avbal="UPDATE buyerbankaccount SET amount="+acbal+" where buyer='"+buyer+"'";
							Statement balst=connection.createStatement();
							balst.executeUpdate(avbal);
							
				/* Updation Query Ends */
				
				
		   
		String str = "Rejected";
		String str1 = "Failed";
		
		Statement st1 = connection.createStatement();
		String query1 ="update purchase_request set status='"+str+"' where  p_name='"+p_Name+"' and p_category='"+p_Category+"' and buyer='"+buyer+"'";
		st1.executeUpdate (query1);
	    Statement st11 = connection.createStatement();
		String query11 ="update purchase set status='"+str1+"' where  p_name='"+p_Name+"' and p_category='"+p_Category+"' and buyer='"+buyer+"'";
		st11.executeUpdate (query11);
		connection.close();
		response.sendRedirect("Ecommerce_ViewPurchaseRequest.jsp");
				
				
		
		}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>
			
			
			
			
			
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
