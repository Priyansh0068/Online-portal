<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">
 	<h1 align ="center">CHANGE PASSWORD</h1><br></br>
    <form action="changepassworddata.jsp" align="center" method="post">
        RollNo.:	<input type="text" name="txtroll" placeholder="Enter Your Rollno..."/><br></br>
		email	: <input type="text" name="txtmail" placeholder="Enter mail....." required=""><br></br>
		old Password 	: <input type="password" name="txtpassword" placeholder="Enter old password..." required=""><br></br>
		New Password 	: <input type="password" name="txtnewpassword" placeholder="Enter new password..." required=""><br></br>
		Confirm Password 	: <input type="password" name="txtconfirmpassword" placeholder="Enter confirm password..." required=""><br></br>
		<input type="submit"  value="Login"/><br></br>
        <a href="Demo.jsp">Back</a>
     </form>
</body>
</html>