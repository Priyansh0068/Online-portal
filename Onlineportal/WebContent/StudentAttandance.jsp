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
	String Subject = request.getParameter("txtsub");
	String Branch = request.getParameter("txtbranch");
	String Year = request.getParameter("txtYear");
	
   	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
	Statement st = con.createStatement();
	String Query="select NAME,SUBJECT,BRANCH,YEAR from TeacherRegister where ID='"+id+"'";
	ResultSet rs=st.executeQuery(Query);
	if(rs.next())
	{
		HttpSession vl=request.getSession();
		vl.setAttribute("ID",id);
		
	}
%>
<form action="StudentAttandance.jsp" method="post">
ID<input type="text" name="txtname" value="<%=rs.getString("1")%>" disabled>
<h2>Welcome :</h2><input type="text" name="txtname" value="<%=rs.getString("2")%>"><br/>
Teacher_Subject<input type="text" name="subject" value="<%=rs.getString("3") %>" disabled/>&nbsp;<input type="date" name="txtDate" value="yyyy/mm/dd"><br/>
Branch:<input type="text" name="txtBranch" value="<%=rs.getString("4") %>" disabled/>&nbsp;Year:<input type="text" name="txtYEAR" value="<%=rs.getString("5") %>" disabled/>
</form>
</body>
</html>