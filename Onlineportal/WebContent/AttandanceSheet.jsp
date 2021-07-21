<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">

<center>
<h1><u>Attendance Register of the Students</u></h1>
Teacher ID:<input type="text" name="teachname" value="<%=session.getAttribute("HONEY")%>" disabled>
Subject:<input type="text" name="txtsub" value="<%=session.getAttribute("HUNK")%>" disabled>
Date:<input type="text" name="txtdate" value="<%=session.getAttribute("HUNGRY")%>" disabled>
</center>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
	<%
	    String sub1=session.getAttribute("HUNK").toString();   
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		Statement st = con.createStatement();
		String query ="select * from studentinfo where subject='"+sub1+"'";
		ResultSet rs = st.executeQuery(query);
	 %>
	 <h1><center>View list of Students</center></h1>
	 	
	 <form action="AttJSP.jsp" method="post">  					
	<table border="2px solid; align="center"; width="100%">
		<tr>
			<th>S.No.</th>
			<th>Name</th>
		    <th>Subject</th>
            <th>Attendance</th>
		</tr>
		
		
  		<c:forEach items="${items}" var="item">
			<% 
				int i = 1;
				while(rs.next()){ 
			%>	
		    <tr>
		        <td>
		            <input type="hidden" name="id" value="${item.id}" />
		            <input name="foo_${item.id}" value="<%=rs.getString(3)%>" />
		        </td>  
		        <td >
		        	<%=rs.getString(4)%>
		        </td>
		        <td>
		            <input type="text" name="bar_${item.id}" />
		        </td>
		    </tr>
		    <%i++;} %>
		</c:forEach>
 	</table>
 	
 	
 	<input type="submit" value="Update" />
 	
 </form>  
 	
 	
</body>
</html>