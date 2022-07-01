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
<title>Gongji.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
</head>
<body>

<div>
	<c:import url="CSCenter_header.jsp"></c:import>
</div>

<div class="content">
	<div class="cs_cscenter_tit">
		<h2>공지사항</h2>
	</div>

	<div class="gongji_detail">
		<div class="gongji_tit">
			<h2>[공지사항]안녕 클레오 파트라</h2>
			<div class="gongji_date">작성일 : 2022.10.31</div>
		</div>
		<hr>
		
		<div class="공지사항 내용">
		<div class="프로필">
			<div>프로필 사진</div>
			<div>닉네임</div>
		</div>
		
		<div class="본문">
			<div>내용</div>
		</div>
		<button value="목록" onclick="#"></button>
		</div>
		<hr>
	</div>
	
	<div class="글 페이징">
		<div class="다음글"><a href="#">다음글|[공지사항]안녕하세요</a></div>
		<hr>
		<div class="이전글"><a href="#">이전글|[공지사항]처음입니다</a></div>
	</div>
</div>
</body>
</html>