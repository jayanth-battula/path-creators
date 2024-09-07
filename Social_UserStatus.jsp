<%@ include file="connect.jsp" %>
<%
	String site=(String)application.getAttribute("site");
	String type=request.getParameter("type");
  	try{  
	     
		 
		 	if(type.equalsIgnoreCase("user"))
			{
				
				
		   		String name=request.getParameter("name");
		   
				String str = "Authorized";
				Statement st1 = connection.createStatement();
				String query1 ="update buyer set status='"+str+"' where buyername='"+name+"' and site='"+site+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("Social_AuthorizeBuyers.jsp");
		
		}
		else if(type.equalsIgnoreCase("euser"))
		 {
			String id=request.getParameter("id");
			
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update esite set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("Social_AuthorizeEUsers.jsp");
		
		}
		
		else{}
		
			
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>