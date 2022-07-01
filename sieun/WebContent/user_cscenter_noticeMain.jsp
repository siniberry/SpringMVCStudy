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
<title>CSCenter.jsp</title>
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="stylesheet" href="css/lion-style.css" type="text/css">
</head>
<body>

<div>
	<c:import url="user_cscenter_menubar.jsp"></c:import>
</div>

<div class="content">
	<div class="cs_cscenter_tit">
		<h2>공지사항</h2>
	</div>
	
	<div class="gongji_list_wrap">
	    <div class="gongji_list">
	        <div class="gongji_list_head">
	            <div class="num">번호</div>
	            <div class="tit">제목</div>
	            <div class="writer">　작성자</div>
	            <div class="date">　작성일</div>
	        </div>
	        <div class="gongji_list_body">
	            <div class="gongji_item">
	                <div class="num">5</div>
	                <div class="tit"><a href="#">누구신가요?</a></div>
	                <div class="writer">관리자</div>
	                <div class="date">2019-11-20</div>
	            </div>
	            <div class="gongji_item">
	                <div class="num">4</div>
	                <div class="tit"><a href="#">저는 당신의 공구를 도와 줄 같이 사자에요</a></div>
	                <div class="writer">관리자</div>
	                <div class="date">2019-11-12</div>
	            </div>
	            <div class="gongji_item">
	                <div class="num">3</div>
	                <div class="tit"><a href="#">귀여운 같이 사자는</a></div>
	                <div class="writer">관리자</div>
	                <div class="date">2019-11-02</div>
	            </div>
	            <div class="gongji_item">
	                <div class="num">2</div>
	                <div class="tit"><a href="#">3팀에서 만들었어요</a></div>
	                <div class="writer">관리자</div>
	                <div class="date">2019-10-28</div>
	            </div>
	            <div class="gongji_item">
	                <div class="num">1</div>
	                <div class="tit"><a href="#">같이사자를 사랑해 주세요</a></div>
	                <div class="writer">관리자</div>
	                <div class="date">2019-10-24</div>
	            </div>
	        </div>
	    </div>
	    <div>
		    <div class="gongji_search">
			<select id='selSearchOption' >
		    	<option value='제목'>제목</option>
		    	<option value='내용'>내용</option>
			</select>
			<input  type="text" id='txtKeyWord' value="검색" />
			<button class='gongji_search_btn'>검색</button>	
			</div>
			
		    <div class="paging">
		        <a href="#" class="bt first">처음 페이지</a>
		        <a href="#" class="bt prev">이전 페이지</a>
		        <a href="#" class="num on">1</a>
		        <a href="#" class="num">2</a>
		        <a href="#" class="num">3</a>
		        <a href="#" class="bt next">다음 페이지</a>
		        <a href="#" class="bt last">마지막 페이지</a>
		    </div>
		</div>
	</div>
</div>

</body>
</html>