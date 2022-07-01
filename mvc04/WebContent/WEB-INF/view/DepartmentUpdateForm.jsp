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
<title>DepartmentUpdateForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/jquery-ui.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

<script type="text/javascript">
	
	$(document).ready(function()
	{
	
		$("#submitBtn").click(function()
		{
			
			if ($("#departmentId").val()==""||$("#departmentName").val()=="")
			{
				$("#err").html("부서 입력 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;								//-- submit 액션 처리 중단
			}
			
			$("#departmentForm").submit();
				
		});
		
	});

</script>
</head>
<body>
<div>

	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<!-- 콘텐츠 영역 -->
	<div id="content">
	
		<h1> [ 지역 변경 ] </h1>
		<hr />
		
		<form action="departmentupdate.action" method="post" id="departmentForm">
			<table>
				<tr>
					<th>지역 번호</th>
					<td>
						<input type="text" id="departmentId" name="departmentId" readonly="readonly" 
						value="${department.departmentId }"/>
					</td>
				</tr>
				<tr>
					<th>지역 이름</th>
					<td>
						<input type="text" id="departmentName" name="departmentName"
						value="${department.departmentName }" />
					</td>
				</tr>
				
				<tr>
					 <td colspan="2" align="center">
					 	<br /><br />
					 	
					 	<button type="button" class="btn" id="submitBtn"
					 	style="width: 40%; height: 50px;">부서 변경</button>
					 	<button type="button" class="btn" id="listBtn"
					 	style="width: 40%; height: 50px;"
					 	onclick="location.href='departmentlist.action'">부서 리스트</button>
					 	<br /><br />
					 	
					 	<span id="err" style="color: red; font-weight: bold; display: none;"></span>
					 </td>
				</tr>
				
			</table>
		</form>
	
	</div>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer">
	</div>

</div>

</body>
</html>









