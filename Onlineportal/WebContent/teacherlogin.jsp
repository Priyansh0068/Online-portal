<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="brown">
<h1 align ="center">Teacher Login</h1><br></br>
<center>
	<form action="Teacherlogindata.jsp" method="post">
	    ID      :<input type="text" name="txtid" placeholder="Enter your id.." required=""><br></br>
		Password 	: <input type="password" name="txtpassword" placeholder="Enter Password..." required=""><br></br>
		<input type="submit" value="Login"/><br></br>
        <a href="Demo.jsp">Back</a>
     </form>
     </center>
</body>
</html>