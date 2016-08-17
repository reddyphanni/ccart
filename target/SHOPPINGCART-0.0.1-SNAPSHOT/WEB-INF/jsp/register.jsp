<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head><body>

<CENTER>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>



<style>
div {
    background-color: WHITE;
    width: 700px;
    padding: 5px;
    border: 5px solid grey;
    margin: 5px;
}
.button {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<DIV><h3> SIGN UP  TO </h3>
<br>
<br>
<br>
<body>


<c:url var="registration" value="registration"></c:url>	

	<form:form action="${registration}" method="post" commandName="userdetails">
		<table>
			<tr> 
				<td>User ID  :</td>
				<td><form:input path="id" type="text" name="id" required="true"/></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><form:input path="name" type="text" name="name" required="true"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input path="password" type="password" name="password" required="true"/></td>
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><form:input path="mobile" type="text" name="mobile" required="true"/></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><form:input path="mail" type="email" name="email" required="true"/></td>
			</tr>
			<tr>
				<td>Addres:</td>
				<td><form:input path="address" type="text" width="20" height="10" name="address" required="true"/></td>
			</tr>
			
		</table>
		<br><center>
		<input type="submit" value="Register" class="button">
		<input type="reset" value="Reset" class="button">

	</form:form>
<br><br><br><br>
<pre><center> Like us at : <a href="https://instagram.com/"><img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\facebook.png"/>"></a>
 Follow us at : <a href="https://instagram.com/"><img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\instagram.png"/>"></a> and <a href="http://twitter.com/"><img src="<c:url value="/resources/images/twitter.png"/>"></a>
                                                                <a href="views\contactus.jsp">
    <span class="glyphicon glyphicon-earphone"></span>Contactus</a>    <a href="jsp\aboutus.jsp">About us</a>
</body>
</html>