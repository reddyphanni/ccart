<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Page</title>
</head>
<body>
<c:url var="addAction" value="addproduct"></c:url>

	<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" >
		<table>
		<tr>
	<form:input path="id" hidden="true"  />
				<td><form:label path="id">
						<spring:message text="id" />
					</form:label></td>
				<td><form:input path="id" required="true" /></td>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="supplier">
						<spring:message text="supplier" />
					</form:label></td>
				<td><form:input path="supplier" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="image">
						<spring:message text="image" />
					</form:label></td>
				<td><form:input type="file" path="image" required="true" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="Edit product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	
	<c:if test="${!empty productList}">
	<h3>product List</h3>
		<table class="tg">
			<tr>
				<th >Product ID</th>
				<th >Product Name</th>
				<th >Product Description</th>
				<th >Product Price</th>
				<th >Product Supplier</th>
				<th> image </th>
			
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.supplier}</td>
					<td> <img alt="image" width=50px;height=50px src="<c:url value="/resources/images/product/${product.id}.jpg"/>"> </td>
					
					<td><form action="editproduct/${product.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removeproduct/${product.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>