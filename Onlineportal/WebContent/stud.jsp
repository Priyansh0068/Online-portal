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
	<%@page import="java.util.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%@page import="java.sql.Connection" %>
	
	
	<%
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		
		Statement st = con.createStatement();
		
		String query="select * from attendance";
		
		ResultSet rs= st.executeQuery(query);
	%>
	<%while(rs.next()){ %>
	
		
<form action="Registerstudent.jsp" method="post">
<center>
        ID  :<input type="text" name="id" value=<%=rs.getString(1)%>> <br>	
		Name 	: <input type="text" name="txtname" Value="<%=rs.getString(2)%>" /><br>
		Subject : <input type="text" name="txtsubs" Value="<%=rs.getString(12)%>" /><br>
		Collegename : <input type="text" name="txtcollegename" Value="<%=rs.getString(8)%>" /><br>
		<br></br>
 <input type="submit"  value="OK"/><br></br>
 </center>


</form>
	<% } %>
</body>
</html>