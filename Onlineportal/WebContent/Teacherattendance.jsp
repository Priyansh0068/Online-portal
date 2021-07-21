<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="grey">
<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
	String subject=request.getParameter("txtsub1");
	String id=request.getParameter("txtid");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infoseek","root","admin");
		Statement st=con.createStatement();
		String query="select * from idpassword where ID='"+session.getAttribute("HONEY")+"'";
		ResultSet rs = st.executeQuery(query);
		
		
	%>
<center>THE ID NUMBER IS:<p name="txtid"><%=session.getAttribute("HONEY") %><br></br>

<form action="studentdb.jsp" method="post">
 DATE:    <input type="date" name="txtDate" value="yyyy/mm/dd" required=""><br><br/>	
 BRANCH:  <select name="txtbranch" required=""><br><br/>	
          <option>.....Select....</option>	
          <option>IT</option>	
          <option>MECHANICAL</option>			
          <option>EC</option>	
          <option>CS</option>	
          </select><br></br>
 YEAR:  <select name="txtyear" required=""><br><br/>	
          <option>.....Select....</option>	
          <option>Firstyear</option>	
          <option>Secondyear</option>			
          <option>Thirdyear</option>	
          <option>Fourthyear</option>	
          </select><br></br>
          SUBJECT:  <select name="txtsub" >
<option>....Select...</option>
   <%    int i=1;
        while(rs.next()){ %>
        <option><%=rs.getString(3)%></option>
        <%}%>
</select><br></br>	
 <input type="submit" value="submit"/><br></br>
 </form>
 </center>
 
</body>
</html>