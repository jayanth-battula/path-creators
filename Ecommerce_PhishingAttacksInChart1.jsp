<%@ include file="connect.jsp"%>


<%
String site=(String)application.getAttribute("esite");	

try
{


ResultSet rs=connection.createStatement().executeQuery("select * from phishing_attacks where site='"+site+"'");
%><html>
<head>
<title>All Phishing Attackers on Each Product In Chart..</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null,s2=null;
	
	while(rs.next())
	{
	 s1=rs.getString(4);
	 s2=rs.getString(3);
	 
	int s3=rs.getInt(9);
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>"+" "+"<%= s2%>",<%= s3%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3333');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#000000');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

