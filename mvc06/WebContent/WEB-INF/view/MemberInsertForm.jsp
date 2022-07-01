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
<title>MemberInsertForm.jsp</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<script type="text/javascript">
	$(document).ready(function()
	{
	
		$("#submitBtn").click(function()
		{
			if ($("#id").val()=="" || $("#pw").val()=="" || $("#name").val()==""
							|| $("#tel").val()=="" || $("#email").val()=="")
			{
				$("#err").html("필수 입력 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;
			}
			
			$("#memberForm").submit();
		});
	});
</script>
</head>
<body>
<div>
	<h1>회원 등록</h1>
	<hr>
	<form action="memberinsert.action" method="post" id="memberForm">
	<table>
		<tr>
			<th>아이디 :</th>
			<td>
				<input type="text" id="id" name="id" placeholder="아이디">
			</td>
		</tr>
		<tr>
			<th>비밀번호 :</th>
			<td>
				<input type="password" id="pw" name="pw" placeholder="비밀번호">
			</td>
		</tr>
		<tr>
			<th>이름 :</th>
			<td>
				<input type="text" id="name" name="name" placeholder="이름">
			</td>
		</tr>
		<tr>
			<th>전화 :</th>
			<td>
				<input type="tel" id="tel" name="tel" placeholder="전화번호">
			</td>
		</tr>
		<tr>
			<th>이메일 :</th>
			<td>
				<input type="email" id="email" name="email" placeholder="이메일">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
			<br>					 	
			<button type="button" class="btn" id="submitBtn"
					style="width: 40%; height: 50px;">회원 추가</button>
			<button type="button" class="btn" id="listBtn"
					style="width: 40%; height: 50px;"
					onclick="location.href='memberlist.action'">회원 리스트</button>
			<br><br>
					 	
			<span id="err" style="color: red; font-weight: bold; display: none;"></span>
			</td>
		</tr>
	</table>
	</form>
</div>


</body>
</html>