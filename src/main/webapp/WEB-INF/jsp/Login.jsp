<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>WORLDofWATCHES</title>

</head>
<body><br>

 <br>
 <br> <br><nav class="navbar navbar-inverse">
  <div class="container">
	<ul class="nav navbar-nav">
	<li class="active"><a href="index.jsp">
          <span class="glyphicon glyphicon-home"></span></a></li>
		
	<ul class="nav navbar-nav navbar-right">
      <li><a href="views\aboutus.jsp"><span class="glyphicon glyphicon-user"></span> ABOUT US</a></li>
      <li><a href="views\contactus.jsp">CONTACT US</a></li>
    </ul>
	</div>
	</nav>

<CENTER>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>



<style>

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
<h3> LOGIN TO  <img src="<c:url value="/resources/images/wow.png"/>">
<br>
<br>
<br>
 
     <c:url var="validate" value="loginvalidate"></c:url>
	<form:form action="${validate}" method="post" commandName="userdetails">
		<table>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="name" required></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" required /></td>
			</tr>
			<tr>
				<td>
			</tr>

		</table>

<input class="button" type="submit" value="Login"></td>

	</form:form>
	<br><br><br><br><br>
<pre><center> Like us at : <a href="https://instagram.com/"><img src="<c:url value="/resources/images/facebook.png"/>"></a>
 Follow us at : <a href="https://instagram.com/"><img src="<c:url value="/resources/images/instagram.png"/>"></a> and <a href="http://twitter.com/"><img src="<c:url value="/resources/images/twitter.png"/>"></a>
                                                                <a href="views\contactus.jsp">
    <span class="glyphicon glyphicon-earphone"></span>Contactus</a>    <a href="views\aboutus.jsp">About us</a>

</body>
</html>