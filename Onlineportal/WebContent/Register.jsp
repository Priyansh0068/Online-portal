 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="powderblue">
 	<h1 align ="center">Registration form</h1><br></br>
	<form action="Registerstudent.jsp" align="center" method="post">  
		Name 	: <input type="text" name="txtname" placeholder="Enter Name....." required=""><br></br>
		Password 	: <input type="password" name="txtpassword" placeholder="Enter password..." required=""><br></br>
		Rollnumber: <input type="rollnumber" name="txtroll" placeholder="Enter rollno..." required=""><br></br>
		E-mail    : <input type="text" name="txtmail" placeholder="Enter the mail-id..." required=""><br></br>
		Mobile 	: <input type="text" pattern="[0-9]{10,10}"  name="txtmobile" placeholder="Enter Mobile No..." required=""/><br></br>
		AadharNO  : <input type="text" name="txtaadhar" placeholder="Enter the number..." required=""><br></br>  
		FatherName  : <input type="text" name="txtfathername" placeholder="Enter father name..." required=""><br></br>
		Address:<input type="text" name="txtaddress" placeholder="Enter your address..." required=""><br></br>
		CollegeName :<input type="text" name="txtcollegename" placeholder="Enter college name..." required=""><br></br>
		Security Question(favourite language) :<select name="txtsecur">
		<option>---Select---</option>
		<option>HINDI</option>
		<option>URDU</option>
		<option>FRENCH</option>
		</select><br></br>
		Student Class :<select  name="txtclassname">
		<option>---Select---</option>
		<option>FirstYear</option>
		<option>SecondYear</option>
		<option>ThirdYear</option>
		<option>FourthYear</option>
		
		</select><br></br>
		
		<input type="submit"  value="SUBMIT"/><br></br>
        <a href="Demo.jsp">Back</a>
     </form>
</body>
</html>