<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body bgcolor="yellow">
	<form action="forgetdata.jsp" method="post">
	
		<center>
		<h1 align="center">VERIFICATION</h1>
		RollNo.:	<input type="text" name="txtroll" value="<%=session.getAttribute("roll")%>" disabled><br></br>
		 Name:	<input type="password" name="txtname" placeholder="Enter Your name..." required=""/><br></br>
		Email  :      <input type="text" name="txtmail" placeholder="Enter Your mail..."  required=""/><br></br>
		New Password  : <input type="text" name="txtnewpassword" placeholder="Enter Your new password..."  required=""/><br></br>
		ConfirmPassword:<input type="text" name="txtnconfirm" placeholder="confirmation..."  required=""/><br></br>
		    <input type="submit"class="btn" value="Save">
		 
		</center>
		
	    <button style="background:none; border:none" align="center"><a href="Demo.jsp">Back</a></button>

	</form>
	

</body>
</html>
