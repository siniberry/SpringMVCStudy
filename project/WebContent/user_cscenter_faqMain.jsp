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
<title>FAQ</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
</head>
<script type="text/javascript">
$("a.question").on('click',function(){
	 $(this).next(".answer").slideToggle(100);
	});

</script>
<body>

	<c:import url="user_header.jsp"></c:import>
<div>
	<c:import url="CSCenter_header.jsp"></c:import>
</div>

<div class="content">
	<div class="cs_cscenter_tit">
		<h2>FAQ</h2>
	</div>


	<div class="FAQ">
		<div class="accordian" id="question1">
			<h5>어쩌구 저쩌구</h5>
		</div>		
				
		<div class="answer">
			<p>
			당신은 심연의 세계
			</p>
		</div>
		
		<div class="accordian" id="question2">
			<h5>어쩌구 저쩌구</h5>
		</div>		
				
		<div class="answer">
			<p>
			당신은 심연의 세계
			</p>
		</div>
		
		<div class="accordian" id="question3">
			<h5>어쩌구 저쩌구</h5>
		</div>		
				
		<div class="answer">
			<p>
			당신은 심연의 세계
			</p>
		</div>	
	</div>
</div>
		<c:import url="user_footer.jsp"></c:import>

</body>
</html>


