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
<title>inquiry_detail.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
</head>
<body>

<div>
	<c:import url="user_cscenter_menubar.jsp"></c:import>
</div>

<div class="게시판 유형">
	<h2>내 질문</h2>
	<hr>
</div>

<div class="내질문 상세">
	<div class="내질문 제목">
		<h2>안녕하세요</h2>
		<div class="date">작성일 : 2022.10.31</div>
	</div>
	<hr>
	
	<div class="내질문 내용">
		<div class="프로필">
			<div>프로필 사진</div>
			<div>닉네임</div>
		</div>
	
		<div class="본문">
			<div>내용</div>
		</div>
	
	<div class="관리자 답변">
		여기서도 있으면 <hr>하고 답변 띄우고 아니면 없는 거 처리
	</div>
	
	<button onclick="#">목록</button>
	<button onclick="#" >위에서 처리 상태에 따라 다르게 동작하게 해야할 듯?</button>
	</div>
	<hr>
</div>

<div class="글 페이징">
	<div class="다음글"><a href="#">다음글|[공지사항]안녕하세요</a></div>
	<hr>
	<div class="이전글"><a href="#">이전글|[공지사항]처음입니다</a></div>
</div>

</body>
</html>