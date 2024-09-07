<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	
	String buyer =  request.getParameter("buyer");
	
	String sname =  request.getParameter("sname");
	
	String price =  request.getParameter("price");
	
	String mode =  request.getParameter("mode");
	
	String site =  request.getParameter("site");
	
	
  	try{  
	     
		 
		if(mode.equalsIgnoreCase("Normal"))
		{
		   
		   
		   
				String str = "Accepted";
				String str1 = "Successful";
		
				Statement st1 = connection.createStatement();
				String query1 ="update purchase_request set status='"+str+"' where  (p_name='"+p_Name+"' and p_category='"+p_Category+"') and (buyer='"+buyer+"' and status='"+"pending"+"')";
				st1.executeUpdate (query1);
	    		Statement st11 = connection.createStatement();
				String query11 ="update purchase set status='"+str1+"' where  (p_name='"+p_Name+"' and p_category='"+p_Category+"') and (buyer='"+buyer+"' and status='"+"pending"+"')";
				st11.executeUpdate (query11);
				connection.close();
				response.sendRedirect("Ecommerce_ViewPurchaseRequest.jsp");
				
				
		}		
		
		else if(mode.equalsIgnoreCase("Attacker"))
		{
		
		
				String str = "Accepted";
				String str1 = "Successful";
				
				
				
				
					PreparedStatement explv = connection.prepareStatement("insert into exploit_vulnerabilities(exploit_by,exploit_site,p_name,p_category,price,date,site) values(?,?,?,?,?,?,?)");				
					
					explv.setString(1, buyer);
					explv.setString(2, sname);
					explv.setString(3, p_Name);
					explv.setString(4, p_Category);
					explv.setString(5, price);
					explv.setString(6, date);
					explv.setString(7, site);
					
					
										
					explv.executeUpdate();
				
				
				
				
				
				
					int nt=1;
					String ev="select * from exploit_vulnerability where p_name='"+p_Name+"' and p_category='"+p_Category+"' and exploit_site='"+sname+"' and site='"+site+"'"; 
					Statement evst=connection.createStatement();
					ResultSet evrs=evst.executeQuery(ev);
									
					if( evrs.next()==true )
					{
					int ntimes=evrs.getInt(9);
					int newntimes=ntimes+1;
					
					String ev_query="Update exploit_vulnerability set no_of_exploits='"+newntimes+"' where p_name='"+p_Name+"' and p_category='"+p_Category+"' and exploit_site='"+sname+"' and site='"+site+"'"; 
					Statement evstmt=connection.createStatement();
					evstmt.executeUpdate(ev_query);
					}	
					else
					{
					PreparedStatement evps = connection.prepareStatement("insert into exploit_vulnerability(exploit_by,exploit_site,p_name,p_category,price,date,site,no_of_exploits) values(?,?,?,?,?,?,?,?)");				
					
					evps.setString(1, "Attacker");
					evps.setString(2, sname);
					evps.setString(3, p_Name);
					evps.setString(4, p_Category);
					evps.setString(5, price);
					evps.setString(6, date);
					evps.setString(7, site);
					evps.setInt(8, nt);
					
										
					evps.executeUpdate();
												
										
					}
				
		
				Statement st1 = connection.createStatement();
				String query1 ="update purchase_request set status='"+str+"' where  (p_name='"+p_Name+"' and p_category='"+p_Category+"') and (buyer='"+buyer+"' and status='"+"pending"+"')";
				st1.executeUpdate (query1);
	    		Statement st11 = connection.createStatement();
				String query11 ="update purchase set status='"+str1+"' where  (p_name='"+p_Name+"' and p_category='"+p_Category+"') and (buyer='"+buyer+"' and status='"+"pending"+"')";
				st11.executeUpdate (query11);
				connection.close();
				response.sendRedirect("Ecommerce_ViewPurchaseRequest.jsp");
		
		
		}
		else
		{
		
		}
				
		
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
