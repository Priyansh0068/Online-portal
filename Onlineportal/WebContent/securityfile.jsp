<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<% 
	String Rollno = request.getParameter("txtroll");
	String Answer = request.getParameter("txtans");
   	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
	Statement st = con.createStatement();
	String Query ="select * from attendance a1 LEFT JOIN security s1 where a1.SECURITY=s1.SECURITY";
	ResultSet rs=st.executeQuery(Query);
	if(rs.next())
	{
		HttpSession sel=request.getSession();
		sel.setAttribute("roll",Rollno);
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('right answer!!!');");
	   	out.println("location='forget.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Wrong answer, Plz Try Again!!!');");
	   	out.println("location='Security.jsp';");
	   	out.println("</script>");
	}
	%>

</body>
</html>