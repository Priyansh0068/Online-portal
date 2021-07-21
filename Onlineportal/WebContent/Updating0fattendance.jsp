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
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%

		String sendername = request.getParameter("sendername");
		String email = request.getParameter("email");
		String sub = request.getParameter("subject");
		String message = request.getParameter("message");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fun","root","admin");
		con.setAutoCommit(false);
		String sql = "insert into attendance(Name,Subject,TeacherID,Date,Status)values(?,?,?,?,?)";
		PreparedStatement Pst = con.prepareStatement(sql);
		String[] StudentName = {"Adil","Amrit","Faiz","Imran","Rohit"};
		String[] AttStatu = {"P","P","A","P","A"};
		for(int i = 0; i<5; i++){
			Pst.setString(1, StudentName[i].toString());
			Pst.setString(2, "JSP");
			Pst.setString(3, "CS003");
			Pst.setString(4, "13/12/2017");
			Pst.setString(5, AttStatu[i].toString());
			Pst.addBatch();
		}

int[] flag = Pst.executeBatch();
con.commit();
if(flag.length >=1 )
{
	out.println("Students Attendance Added!!!");
}

else
{
	out.println("Students Attendance Not Added.");
}
%>
</body>
</html>
</body>
</html>