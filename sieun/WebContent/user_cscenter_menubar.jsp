<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSCenter_header.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/lion-style.css" type="text/css">
</head>
<body>

<div class="cs_header">
	<div class="cs_header_top">
		<h2>고객센터</h2>
	</div>
	<div class="csCenter">	
		<ul>
			<li>
				<a href="#">공지사항</a>
			</li>
			<li>
			<a href="#">FAQ</a>
			</li>
			<li>
			<a href="#">1:1문의</a>
			</li>
		</ul>
	</div>
	<br>
</div>

</body>
</html>