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
    <%@page import="java.util.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<% 
    String Rollno = request.getParameter("txtroll");
    String UserName = request.getParameter("txtname");
    String Password = request.getParameter("txtpassword");
    String Email = request.getParameter("txtmail");
    String Mobile = request.getParameter("txtmobile");
    String Aadhar= request.getParameter("txtaadhar");
    String Fathername= request.getParameter("txtfathername");
    String Address= request.getParameter("txtaddress");
    String College= request.getParameter("txtcollegename");
    String Batch = request.getParameter("txtclassname");
    String Securi = request.getParameter("txtsecur");
    
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
    Statement st = con.createStatement();
    String query ="insert into attendance( ROLLNUMBER,USERNAME,PASSWORD,EMAIL,AADHAR,MOBILE,FATHERNAME,COLLEGENAME,BATCH,ADDRESS,SECURITY)values('"+ Rollno+"','"+UserName+"','"+Password+"','"+Email+"','"+Aadhar+"','"+Mobile+"','"+Fathername+"','"+College+"','"+Batch+"','"+Address+"','"+Securi+"')";
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
