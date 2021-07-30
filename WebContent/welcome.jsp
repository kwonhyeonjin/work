<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset= "UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/main.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
      integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
      crossorigin="anonymous"
    />
<script defer src="resources/js/jquery.js"></script>
<script defer src="resources/js/swiper-bundle.min.js"></script>
<script defer src="resources/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.js"></script>

<title>rnasterpiece_movie</title>
</head>

<body>
  <header>
        <h1>
          <a href="welcome.jsp" title="홈으로 돌아가기">
            <img src="resources/images/relogo.png"/>
          </a>
        </h1>
   <%
    String userID = null;
    if (session.getAttribute("userID") != null) {
    	userID = (String) session.getAttribute("userID");
    }
  %>
        <%
          if(userID == null){
        %>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">접속하기</a>
            <ul class="dropdown-menu">
               <li><a href="login2.jsp">로그인</a></li>
                    <li><a href="signup2.jsp">회원가입</a></li>
        </ul>
       </li>
       </ul>
       <%
          } else{
       %>
              <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">회원관리</a>
            <ul class="dropdown-menu">
               <li><a href="logoutAction.jsp">로그아웃</a></li>
        </ul>
       </li>
       </ul>
       <%
          }
       %>
      </header>
		<%!
		String tagline = "Welcome to Rnasterpiece";
		%>
     
	<%//본문을 표현 %>
	<h2 class="title"></h2>
        <article class="gnb">
        <div class="logo" align="center">
        <img src="resources/images/relogo2.png"/>
        </div>
         <!--   <h2 class="hide">글로벌 메뉴</h2> -->
          <nav>
            <ul>
              <li><a href="products.jsp" style="color:black">영화 목록</a></li>
              <li><a href="reservation.jsp" style="color:black">예매</a></li>
              <li><a href="snackshop.jsp" style="color:black">스낵/음료</a></li>
              <li><a href="faq.jsp" style="color:black">고객센터</a></li>
            </ul>
          </nav>
        </article>
	<div class = "container"> 
	<div class = "text-center">
		<h3>
			<%=tagline %>
			  <article class="recommended_movie">
			  <br>
			  <br>
          <h1>추천 영화</h1>
         <div class="swiper-container movie_list_slide">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <img src="resources/images/블랙위도우.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/크루엘라.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/괴기맨숀.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/루카.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/발신제한.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/킬러의보디가드2.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/그래비티.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/인터스텔라.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/다크나이트.jpg" alt="" />
              </div>
              <div class="swiper-slide">
                <img src="resources/images/어바웃타임.jpg" alt=""/>
              </div>
            </div>
            <div class="controls">
              <button class="prev" type="button">
                <i class="fas fa-chevron-left"></i>
              </button>
              <div class="paging"></div>
              <button class="next" type="button">
                <i class="fas fa-chevron-right"></i>
              </button>
            </div>
          </div>
        </article>
        </h3>
		 <article class="event_contain">
          <h2>Event</h2>
          <ul>
            <li>
                <img src="resources/images/이벤트1.png" style="width: 240px; height:200px;"/> 
              <a href="#;"><span class="hide">이벤트1</span></a>
            </li>
            <li>
            
                <img src="resources/images/이벤트2.png" style="width: 240px; height:200px;"/> 
              <a href="#;"><span class="hide">이벤트2</span></a>
            </li>
            <li>
            
                <img src="resources/images/이벤트3.jpg" style="width: 240px; height:200px;"/>
              <a href="#;"><span class="hide">이벤트3</span></a>
            </li>
            <li>
                <img src="resources/images/이벤트4.jpg" style="width: 240px; height:200px;"/> 
              <a href="#;"><span class="hide">이벤트4</span></a>
            </li>
          </ul>
        </article>
        </div>
        </div>

      <footer>
        <!--  <h3 class="hide">소개/약관/문의 메뉴</h3>-->
        <ul class="fnb">
          <li><a href="" style="color:black">회사소개</a></li>
          <li><a href="" style="color:black">채용정보</a></li>
          <li><a href="" style="color:black">제휴문의</a></li>
          <li><a href="" style="color:black">이용약관</a></li>
          <li><a href="" style="color:black">편성기준</a></li>
          <li><a href="" style="color:black">광고/프로모션문의</a></li>
          <li><a href="" style="color:black">출점문의</a></li>
          <li><a href="" style="color:black">개인정보처리방침</a></li>
          <li><a href="" style="color:black">법적고지</a></li>
          <li><a href="" style="color:black">사이버감사실</a></li>
          <li><a href="" style="color:black">사이트맵</a></li>
        </ul>
        <h3>
          <a href="#"></a>
        </h3>
        <address>
          경기도 김포시 김포한강4로 125 10층 르네스터피스
        </address>
        <p>
          <span>대표이사:권현진,문형철,조현우,여은비,박상희</span>
          <span>통신판매업신고번호:제 2019-경기김포-2190호 </span>
          <span>사업자등록번호:147-94</span>
        </p>
    	<p>
        <span>호스팅사업자:rnasterpice</span>
        <span>개인정보보호 책임자:권현진,문형철,조현우,여은비,박상희</span>
        <span>대표이메일:youmn79@naver.com</span>
        <span><br>rnasterpice 고객센터:031-988-9888</span>
    	</p>
   </footer>
</body>
</html>