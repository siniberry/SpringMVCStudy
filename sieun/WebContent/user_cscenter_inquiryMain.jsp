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
<title>inquiry.jsp</title>
<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>

<div>
	<c:import url="user_cscenter_menubar.jsp"></c:import>
</div>


<div class="content">
	<div class="cs_cscenter_tit">
		<h2>1:1문의</h2>
	</div>

	<div class="mooni_list_wrap">
	    <div class="mooni_list">
	        <div class="mooni_list_head">
	            <div class="num">번호</div>
	            <div class="tit">제목</div>
	            <div class="state">처리상태</div>
	            <div class="date">작성일</div>
	        </div>
	        <div class="mooni_list_body">
	            <div class="mooni_item">
	                <div class="num">2</div>
	                <div class="tit"><a href="#">아기사자가 뭔가요?</a></div>
	                <div class="state">대기중</div>
	                <div class="date">2019-11-20</div>
	            </div>
	            <div class="mooni_item">
	                <div class="num">1</div>
	                <div class="tit"><a href="#">여기 뭔가요?</a></div>
	                <div class="state">처리완료</div>
	                <div class="date">2019-11-12</div>
	            </div>
	        </div>
	    </div>
	    
	    <div class="mooni_footer">
	    	<div class="mooni_footer_right">
	    	    <button onclick="#">문의하기</button>
	    	</div>
	    
	    	<div class="mooni_footer_left">
				<select id='selSearchOption' >
	    			<option value='제목'>제목</option>
	    			<option value='내용'>내용</option>
				</select>
				<input  type="text" id='txtKeyWord' value="검색" />
				<button onclick="#">검색</button>
			</div>	
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
</body>
</html>