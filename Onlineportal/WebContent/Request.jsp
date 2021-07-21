<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body bgcolor="red">
 	<h1 align ="center">Please fill in your Details</h1><br></br>
	<form action="Requestdemo.jsp" align="center" method="post">  
Name 	: <input type="text" name="txtname" placeholder="Enter Name....." required=""><br></br>
Whatsapp number: <input type="text"  pattern="[0-9]{10,10}"  name="txtwhatsapp" placeholder="Enter the whatsapp number" required=""><br></br>
Active Mobile Number: <input type="text" pattern="[0-9]{10,10}" name="txtmobile" placeholder="Enter Mobile No..." required=""/><br></br>
		<input type="submit"  value="SUBMIT"/><br></br>
        <a href="Demo.jsp">Press back button to skip</a>
     </form>
</body>
</html>