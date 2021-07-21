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
	String Name = request.getParameter("txtname");
	String Password = request.getParameter("txtpassword");
	String Mobile =request.getParameter("txtmobile");
    String College= request.getParameter("txtcollege");
   	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
	Statement st = con.createStatement();
	String query ="insert into teachers(NAME,PASSWORD,COLLEGE,MOBILE)values('"+Name+"','"+Password+"','"+College+"','"+Mobile+"')";
	int flag = st.executeUpdate(query);
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('registration Successfully!!!');");
	   	out.println("location='Demo.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('registrationNot Send Successfully, Plz Try Again!!!');");
	   	out.println("location='Demo.jsp';");
	   	out.println("</script>");
	}
	%>

</body>
</html>