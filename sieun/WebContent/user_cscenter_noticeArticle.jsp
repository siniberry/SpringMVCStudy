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
	<c:import url="user_cscenter_menubar.jsp"></c:import>
</div>

<div class="content">
	<div class="cs_cscenter_tit">
		<h2>공지사항</h2>
	</div>

	<div class="gongji_detail">
		<div class="gongji_tit">
			<div class="gongji_tit_left">
				<h2>[공지사항]안녕 클레오 파트라</h2>
			</div>
			
			<div class="gongji_tit_left">
			<p>작성일 : 2022.10.31</p>
			</div>
		</div>
		
		<div class="gongji_main">
			<div class="gongji_profile"> 
				<div class="gongji_profile_left">
					<img class="gongji_profile_left_left" alt="gongji_profile_left" src="#">
				</div>
				<div class="gongji_profile_right">
					<p>
					닉네임
					</p>
				</div>
			</div>
		
			<div class="gongji_contents">
				<p>네가 참 궁금해 그건 너도 마찬가지
				이거면 충분해 쫓고 쫓는 이런 놀이
				<br>
				참을 수 없는 이끌림과 호기심
				묘한 너와 나 두고 보면 알겠지
				<br>
				Woo 눈동자 아래로
				Woo 감추고 있는 거
				Woo yeah It's so bad It's good
				난 그 맘을 좀 봐야겠어
				<br>
				Narcissistic my god I love it
				서로를 비춘 밤
				아름다운 까만 눈빛 더 빠져 깊이
				<br>
				숨 참고 love dive
				Woo lalalalalalala
				Woo 어서 와서 love dive
				Woo oh perfect sacrifice yeah
				숨 참고 love dive
				<br>
				마음은 이렇게 알다가도 모르지
				사랑이라는 건 한순간에 필 테니
				직접 들어와 두 눈으로 확인해
				내 맘 가장 깊은 데로 오면 돼</p>
			</div>
		
			<div class="gongji_contents_list">
				<button class='gongji_back_list'>목록</button>
			</div>
		</div>
	</div>
	
	<div class="list_paging">
		<div class="next_contents"><a href="#">다음글|[공지사항]안녕하세요</a></div>
		<div class="before_contents"><a href="#">이전글|[공지사항]처음입니다</a></div>
	</div>
</div>
</body>
</html>