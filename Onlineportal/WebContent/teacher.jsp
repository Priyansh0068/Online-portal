<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
 	<h1 align ="center">Teacher Registration</h1><br></br>
	<form action="Teacherdata.jsp" align="center" method="post">
		Name 	: <input type="text" name="txtname" placeholder="Enter Name....." required=""><br></br>
		Password 	: <input type="password" name="txtpassword" placeholder="Enter password..." required=""><br></br>
		Mobile 	: <input type="text" pattern="[0-9]{10,10}"  name="txtmobile" placeholder="Enter Mobile No..." required=""/><br></br>
		CollegeName :<input type="text" name="txtcollege" placeholder="Enter college name..." required=""><br></br>
<input type="submit"  value="SUBMIT"/><br></br>
 </form>
</body>
</html>