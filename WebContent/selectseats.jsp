<%@ page  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); // 한글깨짐 방지 추가 %>
<%
  //전달 인자 받기
   String mcity = request.getParameter("mcity");
   String mname = request.getParameter("mname");
   String mdate = request.getParameter("mdate");
   String mplace = request.getParameter("mplace");
   String a = request.getParameter("a");
%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" >
    <meta http-equiv="X-UA-Compatible" content="IE=Chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
    <link rel="stylesheet" href="resources/css/select_seats.css">
    
    <script defer src="resources/js/reservation.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script defer src="resources/js/seclect_seats.js"></script>
    	
<title>select</title>
</head>

<body>
<!--  폼을 만들어 다음 페이지로 넘어갈 인자들을 저장  -->
<form name="myForm" action="reservation_confrim.jsp" id="myForm" method="Post">
   <input type="hidden" name="mcity" id="mcity" value="<%=mcity %>">
   <input type="hidden" name="mname" id="mname" value="<%=mname %>">
   <input type="hidden" name="mdate" id="mdate" value="<%=mdate %>">
   <input type="hidden" name="mplace" id="mplace" value="<%=mplace %>">
   <input type="hidden" name="a" id="a" value="<%=a %>">
   <input type="hidden" value="submit"/>
   
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
               aria-expanded="false">접속하기<span class="caret"></span></a>
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
               aria-expanded="false">회원관리<span class="caret"></span></a>
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
	 <article class="select_number_people_contain">
          <h2 class="hide">인원수 선택</h2>
          <ul>
            <li>
              <strong>성인</strong>
              <span class="adult_set">
                <button type="button" onclick="adult_click(this)">-</button>
                <strong class="adult_count">0</strong>
                <button type="button" onclick="adult_click(this)">+</button>
              </span>
            </li>
            <li>
              <strong>아동</strong>
              <span class="chile_set">
                <button type="button" onclick="adult_click(this)">-</button>
                <strong class="chile_count">0</strong>
                <button type="button" onclick="adult_click(this)">+</button>
              </span>
            </li>
            <li>
              <strong>장애인</strong>
              <span class="disabled_person_set">
                <button type="button" onclick="adult_click(this)">-</button>
                <strong class="disabled_person_count">0</strong>
                <button type="button" onclick="adult_click(this)">+</button>
              </span>
            </li>
          </ul>
        </article>
         <article class="select_seats_contain">
          <h2 class="hide">자리 선택</h2>
          <div class="screen">screen</div>
          <div class="screen_other">
            <ul>
              <li class="seat_col">
                <span>A열</span>
                <ul>
                  <li><a class="select_seat" id="a" value="A_1"><span class="material-icons">chair</span><span>A1</span></a></li>
                  <li><a class="select_seat" id="a"value="A_2"><span class="material-icons">chair</span><span>A2</span></a></li>
                  <li><a class="select_seat" value="A_3"><span class="material-icons">chair</span><span>A3</span></a></li>
                  <li><a class="select_seat" value="A_4"><span class="material-icons">chair</span><span>A4</span></a></li>
                  <li><a class="select_seat" value="A_5"><span class="material-icons">chair</span><span>A5</span></a></li>
                  <li><a class="select_seat" value="A_6"><span class="material-icons">chair</span><span>A6</span></a></li>
                  <li><a class="select_seat" value="A_7"><span class="material-icons">chair</span><span>A7</span></a></li>
                  <li><a class="select_seat" value="A_8"><span class="material-icons">chair</span><span>A8</span></a></li>
                  <li><a class="select_seat" value="A_9"><span class="material-icons">chair</span><span>A9</span></a></li>
                  <li><a class="select_seat" value="A_10"><span class="material-icons">chair</span><span>A10</span></a></li>
                  <li><a class="select_seat" value="A_11"><span class="material-icons">chair</span><span>A11</span></a></li>
                </ul>
              </li>
              <li class="seat_col">
                <span>B열</span>
                <ul>
                  <li><a class="select_seat" value="B_1"><span class="material-icons">chair</span><span>B1</span></a></li>
                  <li><a class="select_seat" value="B_2"><span class="material-icons">chair</span><span>B2</span></a></li>
                  <li><a class="select_seat" value="B_3"><span class="material-icons">chair</span><span>B3</span></a></li>
                  <li><a class="select_seat" value="B_4"><span class="material-icons">chair</span><span>B4</span></a></li>
                  <li><a class="select_seat" value="B_5"><span class="material-icons">chair</span><span>B5</span></a></li>
                  <li><a class="select_seat" value="B_6"><span class="material-icons">chair</span><span>B6</span></a></li>
                  <li><a class="select_seat" value="B_7"><span class="material-icons">chair</span><span>B7</span></a></li>
                  <li><a class="select_seat" value="B_8"><span class="material-icons">chair</span><span>B8</span></a></li>
                  <li><a class="select_seat" value="B_9"><span class="material-icons">chair</span><span>B9</span></a></li>
                  <li><a class="select_seat" value="B_10"><span class="material-icons">chair</span><span>B10</span></a></li>
                  <li><a class="select_seat" value="B_11"><span class="material-icons">chair</span><span>B11</span></a></li>
                </ul>
              </li>
              <li class="seat_col">
                <span>C열</span>
                <ul>
                  <li><a class="select_seat" value="C_1"><span class="material-icons">chair</span><span>C1</span></a></li>
                  <li><a class="select_seat" value="C_2"><span class="material-icons">chair</span><span>C2</span></a></li>
                  <li><a class="select_seat" value="C_3"><span class="material-icons">chair</span><span>C3</span></a></li>
                  <li><a class="select_seat" value="C_4"><span class="material-icons">chair</span><span>C4</span></a></li>
                  <li><a class="select_seat" value="C_5"><span class="material-icons">chair</span><span>C5</span></a></li>
                  <li><a class="select_seat" value="C_6"><span class="material-icons">chair</span><span>C6</span></a></li>
                  <li><a class="select_seat" value="C_7"><span class="material-icons">chair</span><span>C7</span></a></li>
                  <li><a class="select_seat" value="C_8"><span class="material-icons">chair</span><span>C8</span></a></li>
                  <li><a class="select_seat" value="C_9"><span class="material-icons">chair</span><span>C9</span></a></li>
                  <li><a class="select_seat" value="C_10"><span class="material-icons">chair</span><span>C10</span></a></li>
                  <li><a class="select_seat" value="C_11"><span class="material-icons">chair</span><span>C11</span></a></li>
                </ul>
              </li>
              <li class="seat_col">
                <span>D열</span>
                <ul>
                  <li><a class="select_seat" value="D_1"><span class="material-icons">chair</span><span>D1</span></a></li>
                  <li><a class="select_seat" value="D_2"><span class="material-icons">chair</span><span>D2</span></a></li>
                  <li><a class="select_seat" value="D_3"><span class="material-icons">chair</span><span>D3</span></a></li>
                  <li><a class="select_seat" value="D_4"><span class="material-icons">chair</span><span>D4</span></a></li>
                  <li><a class="select_seat" value="D_5"><span class="material-icons">chair</span><span>D5</span></a></li>
                  <li><a class="select_seat" value="D_6"><span class="material-icons">chair</span><span>D6</span></a></li>
                  <li><a class="select_seat" value="D_7"><span class="material-icons">chair</span><span>D7</span></a></li>
                  <li><a class="select_seat" value="D_8"><span class="material-icons">chair</span><span>D8</span></a></li>
                  <li><a class="select_seat" value="D_9"><span class="material-icons">chair</span><span>D9</span></a></li>
                  <li><a class="select_seat" value="D_10"><span class="material-icons">chair</span><span>D10</span></a></li>
                  <li><a class="select_seat" value="D_11"><span class="material-icons">chair</span><span>D11</span></a></li>
                </ul>
              </li>
            </ul>
          </div>
        </article>
        <article class="select_finish_btn_contain">
          <input type="submit" value="선택완료"/>
        </article>
        </form>
 
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
          <span>호스팅사업자:rnaesterpice</span>
          <span>개인정보보호 책임자:권현진,문형철,조현우,여은비,박상희</span>
          <span>대표이메일:youmn79@naver.com</span>
          <span><br>rnaesterpice 고객센터:031-988-9888</span>
        </p>
      </footer>
    
 
</body>
</html>