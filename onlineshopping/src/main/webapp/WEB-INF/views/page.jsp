<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<!--Custom Javascript  -->

<script>
	window.menu = '${title}';
</script>
<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/shop-homepage.css" rel="stylesheet">
<link href="${css}/bootstrap-pulse-theme.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class = "container">
	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp"%>

	<div class = "content">
	<!-- Page Content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>
	
	<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true }">
		<%@include file="listProducts.jsp"%>
	</c:if>
	</div>	
	<!-- /.container -->
	<%@include file="./shared/footer.jsp"%>

	<!-- /.container -->

	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>
	
	<!-- Custom javascript file -->
	<script src="${js}/myapp.js"></script>
</div>
</body>

</html>