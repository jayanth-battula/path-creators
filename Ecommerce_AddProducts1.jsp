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
<title>Adding Products Status</title>
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
		  <%
			       
   				    String site= (String)application.getAttribute("esite");
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String category=null,pname=null,uses=null,desc=null,pmfg=null,pmade=null,pyear=null,price=null,np=null,image=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("category"))
							{
								category=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pname"))
							{
								pname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pmfg"))
							{
								pmfg=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pmade"))
							{
								pmade=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pyear"))
							{
								pyear=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pno"))
							{
								np=multi.getParameter(paramname);
							}
							
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					if(category.equals("--Select--"))
					{
					%>
                    </p>
					    <p class="style1" style="color:#660000">&nbsp;</p>
					    <p class="style5" style="color:#333333">Please Select  Category..</p>
					    <p class="style41"><a href="Ecommerce_AddProducts.jsp" class="style7 style46"><strong>Back</strong></a></p>
                  <p class="style41">
                      <%
					}	
		
		            else
					{
						FileInputStream fs1 = null;
			 			String query1="select * from products  where p_name='"+pname+"' and category='"+category+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  <p class=" style1" style="color:#660000">&nbsp;</p>
                  <p class="style5" style="color:#333333">Product Name Already Exist..</p>
                  <p class="style41"><a href="Ecommerce_AddProducts.jsp" class="style7 style46"><b>Back</b></a></p>
                    <span class="style41">
                    <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String date = strDate + "   " + strTime;
						
					   
					    int rank =0;
						

						 
					PreparedStatement ps=connection.prepareStatement("insert into products(category,p_name,uses,p_desc,p_mfg,p_made,p_year,p_price,p_np,p_image,date,rank,site) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,category);
						ps.setString(2,pname);
						ps.setString(3,uses);	
						ps.setString(4,desc);
						ps.setString(5,pmfg);	
				        ps.setString(6,pmade);	
						ps.setString(7,pyear);
						ps.setString(8,price);
						ps.setString(9,np);
						ps.setBinaryStream(10,(InputStream)fs, (int)(file1.length()));
						
						ps.setString(11,date);
						ps.setInt(12,rank);
						ps.setString(13,site);
						
						ps.executeUpdate();
					   
						%>

                    </span>
					 <p class="style1" style="color:#660000">&nbsp;</p>
					 <p class="style5" style="color:#333333">Product Uploaded Successfully..</p>
					 <span class="style41">
                    </p>
                    </span>
<p class="style41">&nbsp; </p>
                    <p class="style41"><a href="EcommerceMain.jsp" class="style7 style46"><b>Back</b></a></p>
                    <span class="style41">
                    <%
			
					
					
					
					
						}}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
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
