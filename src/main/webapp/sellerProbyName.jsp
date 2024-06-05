<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@page import="com.klef.jfsd.springboot.model.*"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- /// seller table -->

<!DOCTYPE html>
<html>
<head>
<title>XperienceAuto</title>
<meta charset="utf-8">
<link rel="icon" type="image/peg" href="images/logo.jpeg">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	font-family: 'Poppins', sans-serif;
	background-color: aliceblue;
}

.navbar {
	background-color: #2B2E4A;
	border-color: #2B2E4A;
}

.navbar-nav {
	padding-top: 13.5px;
	padding-bottom: 13.5px;
	font-size: 18px;
}

.container {
	margin-top: 0px;
	background-color: aliceblue;
	width: 100%;
	padding: 0;
}

nav .navbar-nav li a {
	color: rgb(239, 118, 6) !important;
}

.navbar-inverse .navbar-brand {
	color: white;
}

.navbar-inverse .navbar-nav>li>a {
	color: white;
}

/* Navbar Styles for Mobile View */
@media ( max-width : 768px) {
	.navbar {
		background-color: #2B2E4A;
		border-color: #2B2E4A;
		padding: 5px 0;
	}
	.navbar-nav {
		font-size: 14px;
	}
	.navbar-brand .logo-mobile {
		display: none;
	}
	.navbar-collapse {
		max-height: calc(100vh - 55px);
		overflow-y: auto;
	}
	.navbar-brand {
		display: flex;
		align-items: center;
		text-align: center;
		padding: 10px;
	}
	.navbar-toggle {
		float: left;
		margin-left: 15px;
		margin-right: 0;
	}
	.navbar-nav {
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar-nav li a {
		padding: 10px 20px;
		color: #fff;
	}
	.hide-in-mobile {
		display: none;
	}
}

.card {
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #ebecee;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 20px auto;
	max-width: 900px; /* Adjust the maximum width as needed */
	padding: 20px;
	margin-top: 50px;
}

#employee {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#employee tr:nth-child(even) {
	background-color: white;
}

#employee tr:hover {
	background-color: #ddd;
}

#employee th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: #000000;
	color: white;
}

.btn {
	background-color: skyblue;
	padding: 5px 16px;
	font-size: 12px;
	cursor: pointer;
}

.btn-delete {
	background-color: #e74c3c;
	color: #fff;
	padding: 5px 10px;
	border: none;
	cursor: pointer;
}
</style>
<script>
$(document).ready(function() {
    var maxRows = 3; // Number of rows to show per page
    $('#employee tbody tr:gt(1)').hide(); // Hide rows beyond the first 2

    // Calculate the number of pages needed
    var totalRows = $('#employee tbody tr').length;
    var totalPages = Math.ceil(totalRows / maxRows);

    // Add pagination links
    var $pagination = $('<ul class="pagination">');
    for (var i = 1; i <= totalPages; i++) {
        $pagination.append('<li><a href="javascript:void(0);">' + i + '</a></li>');
    }
    $pagination.appendTo('.pagination');

    // Set the active page
    $pagination.find('li:first').addClass('active');

    $pagination.find('li').on('click', function() {
        var page = $(this).text();
        var start = (page - 1) * maxRows;
        var end = start + maxRows;

        $('#employee tbody tr').hide().slice(start, end).show();
        $pagination.find('li').removeClass('active');
        $(this).addClass('active');
    });
});
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container1-fluid">
			<ul class="nav navbar-nav">
				<li><span class="logo-mobile hide-in-mobile"><img
						src="images/logo.jpeg" height="55px" width="65px"></span></li>
				<li><a href="SellerIndex.html">XperienceAuto</a></li>
			</ul>
			<button type="button" class="navbar-toggle right"
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="sellerHome"><i class="fas fa-home"></i> HOME</a></li>
					<li><a href="sellerAddProduct"><i
							class="fas fa-shopping-cart"></i>&nbspADD PRODUCT</a></li>
					<li><a href="sellerProbyName"><i class="fas fa-cogs"></i>&nbspVIEW
							PRODUCT</a></li>
					<li class="user-dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fas fa-user-circle"></i>&nbsp&nbsp${sname}
					</a>
						<ul class="dropdown-menu">
							<li><a href="sellogout">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<h3 align="center">
		<br>
		<br>
		<br>
		<br>View Products
	</h3>
	<div class="card">
        <h3 align="center">
            <u>View Products</u>
        </h3><br>

       <table id="employee">
      <tr bgcolor="black" style="color: white">
        <th>ID</th>
        <th>NAME</th>
        <th>MANUFACTURER</th>
        <th>PRICE</th>
        <th>IMAGE</th>
        
      </tr>

      <c:forEach items="${pdata}" var="emp">
        <tr>
          <td><c:out value="${emp.id}" /></td>
          <td><c:out value="${emp.name}" /></td>
          <td><c:out value="${emp.manufacturer}" />
          <td><img src="p/${emp.id}" height="70px" alt="No image" class="product-image">
          </td>
          <td><c:out value="${emp.price}" /></td>
          
        </tr>
      </c:forEach>
    </table>

      <div class="pagination">
    <c:choose>
        <c:when test="${page > 1}">
            <a href="?page=${page - 1}"></a>
        </c:when>
        <c:otherwise>
            <span class="inactive"></span>
        </c:otherwise>
    </c:choose>

    <c:choose>
        <c:when test="${fn:length(pdata) > 0}">
            <c:forEach var="i" begin="1000" end="${fn:length(pdata) / 2}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <span class="active">${i}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="?page=${i}">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${(page * 2) < fn:length(pdata)}">
            <a href="?page=${page + 1}"></a>
        </c:when>
        <c:otherwise>
            <span class="inactive"></span>
        </c:otherwise>
    </c:choose>
</div>


</body>
</html>