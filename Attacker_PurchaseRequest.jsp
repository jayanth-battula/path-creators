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
<title>Purchase Request Page</title>
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
.style5 {
	font-size: 14px;
	color: #006666;
}
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
          <h2>Purchase Status..</h2>
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

String price = request.getParameter("price");

String np = request.getParameter("np");

String at_Name=request.getParameter("at_Name");

String at_Site=request.getParameter("at_Site");
			



  try{      
  
  				
				
				
				
	int ac_no=0,bal=0;	
	int creditlimit=0,crlimit=0,credit_taken=0,not=0; 
	String a_no="",crn="";
	
String cardsql="SELECT * FROM buyerbankaccount where buyer='"+at_Name+"' and site='"+at_Site+"'";
Statement cardst = connection.createStatement();
ResultSet cardrs =cardst.executeQuery(cardsql);
if(cardrs.next()==true)
{

		 bal=cardrs.getInt(8);
		 
		 
						
						int product_price=Integer.parseInt(price);
						int available_product=Integer.parseInt(np);
						if(product_price<=bal)
						{
	
			
							String avl_bal=String.valueOf(bal-product_price);
							String avl_pr=String.valueOf(available_product-1);
												
						/* Updating the Balance into Bank Account */
														
							String avbal="UPDATE buyerbankaccount SET amount="+avl_bal+" where buyer='"+at_Name+"' and site='"+at_Site+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(avbal);
							
							/* Updation Query Ends */
							
							
							
							
							
						/* Updating the Available Product into Products Table */
														
						String avpr="UPDATE products SET p_np="+avl_pr+" where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"'";
							Statement prst=connection.createStatement();
							prst.executeUpdate(avpr);	
							
							/* Updation Query Ends */
							
							
							
							
							
							
						/* Updating the Transaction Details into Ministatement */	
						
		       Statement stmini = connection.createStatement();
			   String querymini ="insert into ministatement (buyer,t_amount,t_purpose,date) values ('"+at_Name+"','"+price+"','"+"External Attack"+"','"+date+"')";
			   stmini.executeUpdate (querymini);
						
						
						/* Updation Query Ends */




								String status="pending";
								String attack="Attacker";
					   
					   
								Statement st11 = connection.createStatement();
								String query11 ="insert into purchase (buyer,p_name,p_category,price,date,site,status,social_site,request_mode) values ('"+at_Name+"','"+p_Name+"','"+p_Category+"','"+price+"','"+date+"','"+site+"','"+status+"','"+at_Site+"','"+attack+"')";	   
				st11.executeUpdate (query11);
					   
					   
								Statement st1 = connection.createStatement();
								String query1 ="insert into purchase_request (buyer,p_name,p_category,price,date,site,status,social_site,request_mode) values ('"+at_Name+"','"+p_Name+"','"+p_Category+"','"+price+"','"+date+"','"+site+"','"+status+"','"+at_Site+"','"+attack+"')";	   
							
						
									int k=st1.executeUpdate (query1);
				 					if(k>0)
				 					{
				  				 							
														
									%>
		  </div>
									<br/><br/> <p align="center" class="style7 style5">Purchase Request Sent Successfully..</p>
									<div align="center"><br/>
									<br/>
									<a href="Attacker.jsp">Back</a>
									<%
									}
									else
									{
									%>
									</div>
									<br/><br/><p align="center" class="style7 style5">Transaction Failed !!..Please Try Again..</p>
									<div align="center"><br/>
									<br/>
									<a href="index.html">Back</a>
									<%
									}
			
	
						}
						else
						{
										
						
						%>
						</div>
						<br/><br/> <p align="center" class="style7 style5">Insufficient Fund..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="Attacker.jsp">Back</a>
						<%
						}
		
				
}		
else
{					


					PreparedStatement pattackers = connection.prepareStatement("insert into phishing_attackers(phishing_by,phishing_site,p_name,p_category,price,date,site) values(?,?,?,?,?,?,?)");				
					
					pattackers.setString(1, at_Name);
					pattackers.setString(2, at_Site);
					pattackers.setString(3, p_Name);
					pattackers.setString(4, p_Category);
					pattackers.setString(5, price);
					pattackers.setString(6, date);
					pattackers.setString(7, site);
										
										
					pattackers.executeUpdate();
					
					
					
					
					
				
					not+=1;
					String phsattk="select * from phishing_attacks where p_name='"+p_Name+"' and p_category='"+p_Category+"' and phishing_site='"+at_Site+"' and site='"+site+"'"; 
					Statement phsattkst=connection.createStatement();
					ResultSet phsattkrs=phsattkst.executeQuery(phsattk);
									
					if( phsattkrs.next()==true )
					{
					int ntimes=phsattkrs.getInt(9);
					int newntimes=ntimes+1;
					
					String pa="Update phishing_attacks set no_of_attacks='"+newntimes+"' where p_name='"+p_Name+"' and p_category='"+p_Category+"' and phishing_site='"+at_Site+"' and site='"+site+"'"; 
					Statement pastmt=connection.createStatement();
					pastmt.executeUpdate(pa);
					}	
					else
					{
					PreparedStatement pattks = connection.prepareStatement("insert into phishing_attacks(phishing_by,phishing_site,p_name,p_category,price,date,site,no_of_attacks) values(?,?,?,?,?,?,?,?)");				
					
					pattks.setString(1, "Attacker");
					pattks.setString(2, at_Site);
					pattks.setString(3, p_Name);
					pattks.setString(4, p_Category);
					pattks.setString(5, price);
					pattks.setString(6, date);
					pattks.setString(7, site);
					pattks.setInt(8, not);
					
										
					pattks.executeUpdate();
												
										
					}
					
	
			   
			   	
					
%>
</div>
<br/><br/> <p align="center" class="style7 style5">Purchase Denied Due To Illegal Activity.Please Try Again..</p>
<div align="center"><br/>
<br/>
<a href="index.html">Back</a>
<%
}	
	
	




connection.close();
}
catch(Exception e)
{
out.print(e);
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
