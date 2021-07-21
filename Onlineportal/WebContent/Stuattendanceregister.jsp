<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<% 
	String sub=request.getParameter("txtsub1");
   	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
	Statement st = con.createStatement();
	String query ="select * from attendance where SUBJECT='"+sub+"' ";
	ResultSet rs = st.executeQuery(query);
	if(rs.first())
	{
	
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('registration Successfully!!!');");
	   	out.println("location='.jsp';");
	   	out.println("</script>");
	}	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('registrationNot Send Successfully, Plz Try Again!!!');");
	   	out.println("location='AttandanceSheet.jsp';");
	   	out.println("</script>");
	}
	%>

</body>
</html>