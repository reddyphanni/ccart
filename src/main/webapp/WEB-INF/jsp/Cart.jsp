<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

				<c:if test="${!empty CartList}">
					<table class="w3-table w3-bordered w3-striped w3-card-4">
						<tr class="w3-cyan">
							<th>Product Name</th>
							<th>Product Quantity</th>
							<th>Product Price</th>
						</tr>
						<c:forEach items="${CartList}" var="cart">
							<tr>
								<td>${cart.productname}</td>
								<td>${cart.quantity}</td>
								<td>${cart.price}</td>
							</tr>
							
						</c:forEach>
					</table>
				</c:if>
				<%-- Cart Price=${CartPrice}
				
				<a href="/Welcome">Return To Home</a> --%>
				
</body>
</html>