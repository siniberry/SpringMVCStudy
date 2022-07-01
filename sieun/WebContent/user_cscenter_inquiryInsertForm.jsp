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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/lison-style.css">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>


<div>
	<c:import url="user_cscenter_menubar.jsp"></c:import>
</div>

<div class="1:1 질문 작성">
	<form action="#">
		<div class="제목">
			<div class="tit"><input type="text" value="제목을 입력하세요"></div>
		</div>
		<hr>
		
			<div class="질문 내용">
			<div id="summernote"><p>내용을 입력하세요</p></div>
			<script>
			  $(document).ready(function() {
			      $('#summernote').summernote();
			      $('.note-view').remove();
			      $('.note-style').remove();
			      $('.note-para').remove();
			      $('.note-table').remove();

			  });
			</script>   
			</div>
			
			<div class="사진 첨부">
				사진  : 
				<input type="file" class="image_input" accept="img/*" required multiple>
			</div>
		
		
		<button onclick="#">등록</button>
		<button onclick="#" >취소</button>
	</form>
</div>
	<hr>

</body>
</html>