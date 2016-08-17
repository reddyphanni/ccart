<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>world of watches</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <!--  <spring:url value="resources/images" var="image"/> -->
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 75%;
      margin: auto;
  }
  </style>
  </head>
  <body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
	<ul class="nav navbar-nav">
	<li class="active"><a href="home.jsp">
          <span class="glyphicon glyphicon-home"></span></a></li>
          <ul class="nav navbar-nav navbar-right">
      <li><a href="\jsp\aboutus.jsp"><span class="glyphicon glyphicon-user"></span> ABOUT US</a></li>
      <li><a href="contactus">CONTACT US</a></li>
       <li><a href="${userId}/cart"> View Cart</a></li> 
    </ul>
</ul>
	<ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> new user</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
	</div>
	</nav>
	 
<div class="container-fluid">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">
    
      
      <div class="item active">
        <img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\watch1.jpg"/>" alt="no image" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\watch2.jpg"/>" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\watch3.jpg"/>" width="460" height="345">
      </div>
      
      <div class="item">
       <img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\watch7.jpg"/>" alt="no image" width="460" height="345">
      </div>
      
      <div class="item">
        <img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\watch5.jpg"/>" alt="no image" width="460" height="345">
      </div>
      
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div><br><br>
<br>
<c:if test="${!empty productList}">
		<div>
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href="${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value="/resources/images/product/${product.id}.jpg"/>"></a></li>
					<li><a href="${userId}/addtoCart/${product.id}"
						>Add to Cart</a></li>
				</c:forEach>
			</ul>
		</div>
	</c:if>
	
	<c:choose>
	<c:when test="${IfloginClicked}">
		<c:import url="/WEB-INF/jsp/Login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfregisterClicked}">
		<c:import url="/WEB-INF/jsp/register.jsp">
		</c:import>
	</c:when>
	</c:choose>



<pre><center> Like us at : <a href="https://instagram.com/"><img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\facebook.png"/>"></a>
 Follow us at : <a href="https://instagram.com/"><img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\instagram.png"/>"></a> and <a href="http://twitter.com/"><img src="<c:url value="C:\Users\monika\workspace1\ShopingCartFrontEnd\src\main\webapp\resources\images\twitter.png"/>"></a>
                                                                <a href="jsp\contactus.jsp">
    <span class="glyphicon glyphicon-earphone"></span>Contactus</a>    <a href="jsp\aboutus.jsp">About us</a>
</body>
</html>
 