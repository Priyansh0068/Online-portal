<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
	String subject=request.getParameter("txtsub1");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		Statement st=con.createStatement();
		String query="select * from teachersub";
		ResultSet rs = st.executeQuery(query);
	%>
	
	<center>					
	<h1>View Data</h1>							
	<table border="2px solid; align="center"; width="100%">
		<tr>
			<th>SUBJECT</th>
			<th>NAME</th>
			
		</tr>
		<% 
			int i = 1;
			while(rs.next()){
				
				
		%>
		
		<tr>
			
			<td><%=i%></td>
			<td><%=rs.getString(2)%></td>
	 	</tr>
	 	
		<%}i++;%>
 	</table>
	</center>
	</body>
	</html>
	
 	
 		