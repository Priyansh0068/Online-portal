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
	String id=request.getParameter("txtid");
	String branch=request.getParameter("txtbranch");
	String year=request.getParameter("txtyear");
	String subject=request.getParameter("txtsub");
	String date=request.getParameter("txtDate");
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		Statement st = con.createStatement();
		String query ="insert into studentsdb(YEAR,BRANCH,SUBJECT,ID,DATE)values('"+year+"','"+branch+"','"+subject+"','"+id+"','"+date+"')";
	    int vl=st.executeUpdate(query);
	    if(vl==1)
		{
	    	HttpSession logs=request.getSession();
			logs.setAttribute("HUNK",subject);
			HttpSession logsss=request.getSession();
			logsss.setAttribute("HUNGRY",date);
			
			
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Done!!!');");
		   	out.println("location='AttandanceSheet.jsp';");
		   	out.println("</script>");
		   
		}
		else
		{
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Could not match!!!');");
		   	out.println("location='teacherlogin.jsp';");
		   	out.println("</script>");
		}
	%>
</body>
</html>