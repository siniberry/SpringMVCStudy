<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>user_header</title>
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/lion-style.css" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>

<body>	
    <!-- Header Section Begin -->   
    <header class="header">
        <div class="header__top lion_header_top"></div>
        
        <!-- 로그인 전 -->

        <div class="header__top">
        	<div class="header__top__right">
        		<div class="header__top__right__social">
        			<a href="#">회원가입</a>
                </div>
                <div class="header__top__right__auth">
                    <a href="#">로그인</a>
                </div>
                <div class="header__top__right__language">
                	<div>고객센터</div>
                    <span class="arrow_carrot-down"></span>
                    <ul class="cscenter_list">
                    	<li><a href="#">공지사항</a></li>
                    	<li><a href="#">FAQ</a></li>
                    	<li><a href="#">1:1 문의</a></li>
                    </ul>
                 </div>
             </div> 
        </div>


        <!-- 로그인 후 -->
<!--         
        <div class="header__top">
        	<div class="header__top__right">
                <div class="header__top__right__language header__nickname">
                	<div><span id="nickname">같이사자</span> 님</div>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                    	<li><a href="#">마이페이지</a></li>
                    	<li><a href="#">로그아웃</a></li>
                    </ul>
                 </div>
                <div class="header__top__right__language">
                	<div>고객센터</div>
                    <span class="arrow_carrot-down"></span>
                    <ul class="cscenter_list">
                    	<li><a href="#">공지사항</a></li>
                    	<li><a href="#">FAQ</a></li>
                    	<li><a href="#">1:1 문의</a></li>
                    </ul>
                 </div>
             </div> 
        </div>
-->        
        
        <!-- LOGO -->
        <div class="header__logo">
        	<a href="#">같이사자</a>
        </div>
    </header>
    <!-- Header Section End -->


    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 카테고리</span>
                        </div>
                        <ul style="display: none;">
                            <li><a href="#">쌀/면/빵/떡</a></li>
                            <li><a href="#">과일/채소</a></li>
                            <li><a href="#">수산/정육/계란</a></li>
                            <li><a href="#">밀키트/간편식/냉동</a></li>
                            <li><a href="#">국/반찬</a></li>
                             <li><a href="#">간식/과자</a></li>
                            <li><a href="#">우유/유제품</a></li>
                            <li><a href="#">물/음료/커피/차</a></li>
                            <li><a href="#">양념/소스</a></li>
                        </ul>
                    </div>
                </div>
				<div class="col-lg-4">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="#">최근공구</a></li>
							<li><a href="#">마감임박</a></li>
							<li><a href="#">커뮤니티</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-5">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<input type="text" placeholder="검색어를 입력해주세요.">
								<button type="submit" class="site-btn">
									<i class="bi bi-search"></i>
								</button>
							</form>
						</div>
						<div class="header__cart">
							<ul>
								<li><a href="#"><i class="bi bi-bell"></i> <span>8</span></a></li>
								
								
								<div class="dropdown-menu dropdown-menu-right navbar-dropdown  show">
             					 <a class="dropdown-item">
                						<div class="item-content">
                  							<h6 class="preview-subject">공구 알림</h6>
                  							<p class="preview-detail">
                   						 	[마포구]수박 같이사요 ~
                  						</p>
              					</a>
              					<a class="dropdown-item">
                						Logout
              					</a>
           						 </div>
								
								<!-- <div class="dropdown-menu dropdown-menu-right navbar-dropdown  show" >
              					<p class="mb-0 font-weight-normal float-left dropdown-header">공구 알림</p>
              					<a class="dropdown-item preview-item">
               						 <div class="preview-item-content">
                  						<h6 class="preview-subject font-weight-normal">공구 알림</h6>
                  						<p class="alarm-light">
                   						 	[마포구]수박 같이사요 ~
                  						</p>
                					</div>
              					</a>
              					<a class="dropdown-item preview-item">
                					<div class="preview-thumbnail">
                 						<div class="preview-icon bg-success">
                   							<i class="ti-info-alt mx-0"></i>
                  						</div>
                					</div>
               						 <div class="preview-item-content">
                  						<h6 class="alarm-subject">일반 알림</h6>
                  						<p class="alarm-light">
                   						 	[1:1질문]여기는 어디죠?
                  						</p>
                					</div>
              					</a>
            				</div> -->
								
								
								<li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="bi bi-pencil-square"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
        </div>
    </section>
    <!-- Hero Section End -->

</body>
</html>