<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/snack_shop.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>

<title>snack_shop(rnaterpiece)</title>
  </head>


<body>
	<%//제목을 표현 %>
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
	
	<%!
	String tagline = "Welcome to rnesterpiece";
	%>
	
	<%//제목을 표현 %>
        <article class="store_list_contain">
            <h2>* 스낵/음료의 경우 현장구매만 가능합니다.</h2>
            <ul>
              <li>
                <img src="resources/images/스위트콤보.jpg" alt="">
                <div class="price_contain">
                  <h3>스위트콤보</h3>
                  <span>오리지널L + 탄산음료M2</span>
                  <span class="price">9,000원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/더블콤보.jpg" alt="">
                <div class="price_contain">
                  <h3>더블콤보</h3>
                  <span>카라멜팝콘M+오리지널팝콘M+탄산음료M2</span>
                  <span class="price">13,000원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/즉석구이콤보.jpg" alt="">
                <div class="price_contain">
                  <h3>스위트콤보</h3>
                  <span>카라멜팝콘M+즉석구이(몸통or다리)+탄산음료M2</span>
                  <span class="price">13,500원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/콜라M.jpg" alt="">
                <div class="price_contain">
                  <h3>콜라 M</h3>
                  <span>콜라M</span>
                  <span class="price">2,500원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/콜라L.jpg" alt="">
                <div class="price_contain">
                  <h3>콜라 L</h3>
                  <span>콜라L</span>
                  <span class="price">3,000원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/사이다M.jpg" alt="">
                <div class="price_contain">
                  <h3>사이다 M</h3>
                  <span>사이다M</span>
                  <span class="price">2,500원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/사이다L.jpg" alt="">
                <div class="price_contain">
                  <h3>사이다 L</h3>
                  <span>사이다L</span>
                  <span class="price">3,000원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/오리지널팝콘M.jpg" alt="">
                <div class="price_contain">
                  <h3>오리지널팝콘 M</h3>
                  <span>오리지널팝콘M</span>
                  <span class="price">4,500원</span>
                </div>
              </li>
              <li>
                <img src="resources/images/오리지널팝콘L.jpg" alt="">
                <div class="price_contain">
                  <h3>오리지널팝콘 L</h3>
                  <span>오리지널팝콘L</span>
                  <span class="price">5,000원</span>
                </div>
              </li>
            </ul>
          </article>
      <footer>
        <h3 class="hide">소개/약관/문의 메뉴</h3>
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
          <span>사업자등록번호:147-94-00856</span>
        </p>
        <p>
          <span>호스팅사업자:rnasterpice</span>
          <span>개인정보보호 책임자:권현진</span>
          <span>대표이메일:youmn79@naver.com</span>
          <span><br>rnasterpice 고객센터:031-988-9888</span>
        </p>
      </footer>
 
  </body>
</html>
