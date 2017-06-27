<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>CLOTHING SHOPPING</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

   

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!-- NAVBAR
================================================== -->
<body>




<div class="navbar-wrapper">

    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div align="left" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="display:block">
		        <img src="${pageContext.servletContext.contextPath}/resources/images/D.jpg" width="70" height="70" align=left>
				<div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" /> ">Home</a></li>
                        <li><a href="<c:url value="/product/productList/all" />">Products</a></li>
                         <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                        <li><a href="<c:url value="/admin/product/addProduct" />">Add Products</a></li>
                        <li> <a href="<c:url value="/admin/productInventory" />" >Product Inventory</a></li>
                        <li> <a href="<c:url value="/admin/customer" />" >Customer Manager</a></li>
                         </c:if>
                        <li><a href="<c:url value="/about" />">About Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                            
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            	<li><a href="<c:url value="/customer/cart" />"><span
                                class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                               </c:if>                      
                            </c:if>
		                   
                        
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login/" />"><span class="glyphicon glyphicon-user"></span>Login</a></li>
                        <li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
                       
                        </c:if>
                    </ul>
                 </div>
            </div>
        </nav>
    </div>
</div>