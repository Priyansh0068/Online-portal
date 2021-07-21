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
 
		String ID = request.getParameter("txtid");
		String Password = request.getParameter("txtpassword");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		Statement st = con.createStatement();
		String query ="SELECT * FROM idpassword where ID='"+ID+"' and PASSWORD='"+Password+"'";
		ResultSet rs = st.executeQuery(query);
		if(rs.first())
		{
			HttpSession logss=request.getSession();
			logss.setAttribute("HONEY",ID);
		
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Login Successfully!!!');");
		   	out.println("location='Teacherattendance.jsp';");
		   	out.println("</script>");
		}
		else
		{
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Your User Name or Password is Wrong, Plz Try Again!!!');");
		   	out.println("location='teacherlogin.jsp';");
		   	out.println("</script>");
		}
	%>
</body>
</html>
</body>
</html>