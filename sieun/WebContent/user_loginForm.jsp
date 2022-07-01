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
<title>LoginForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>css/main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>css/menuStyle.css">
</head>
<body>


<div class="loginbox">
  <h2>로그인</h2>
  <form action="#">
    <fieldset>
      <legend>로그인</legend>
      <div>
     	 <img src="#" >
      	<label for="loginid">아이디</label>
      	<input type="text" id="loginid" placeholder="아이디를 입력해 주세요">
      </div>
      
      <div>
      	<img src="#" >
      	<label for="loginpw">비밀번호</label>
      	<input type="password" id="loginpw" placeholder="비밀번호를 입력해 주세요">
      </div>
      
      <div>
        <div><a href="#">아이디/비밀번호찾기</a></div>
        <div><a href="#">회원가입</a></div>
      </div>
      <!--데이터를 서버로 전송-->
      <button type="submit">로그인</button>
    </fieldset>
  </form>
</div>

</body>
</html>