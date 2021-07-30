<%@ page contentType="text/html; charset=UTF-8"%>
 <%@ page import="user.UserDAO" %>
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
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/reservation_confirmation.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">

<title>confirm</title>
</head>

<body>
<form name="myForm" action="reservation_confrim.jsp" id="myForm" method="Post">
   <input type="hidden" name="mcity" id="mcity" value="<%=mcity %>">
   <input type="hidden" name="mname" id="mname" value="<%=mname %>">
   <input type="hidden" name="mdate" id="mdate" value="<%=mdate %>">
   <input type="hidden" name="mplace" id="mplace" value="<%=mplace %>">
   <input type="hidden" name="a" id="a" value="<%=a %>">
</form>
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
          } else {
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
      
      <main>
        <article class="gnb">
        <div class="logo" align="center">
        <img src="resources/images/relogo2.png"/>
        </div>
          <h2 class="hide">글로벌 메뉴</h2>
          <nav>
            <ul>
              <li><a href="products.jsp" style="color:black">영화 목록</a></li>
              <li><a href="reservation.jsp" style="color:black">예매</a></li>
                <li><a href="snackshop.jsp" style="color:black">스낵/음료</a></li>
              <li><a href="faq.jsp" style="color:black">고객센터</a></li>
            </ul>
          </nav>
        </article>
        <article class="reservation_confirmation_contain">
          <h2>예매 확인</h2>
          <div class="reservation_confirmation">
            <div class="left">
              <ul>
                <li><span>영화 이름 : </span><span><%=mname %></span></li>
                <li><span>날짜 : </span><span><%=mdate %></span></li>
                <li><span>상영관/시간 : </span><span><%=mplace %></span></li>
              </ul>
            </div>
            <div class="right">
              <p>입력하신 정보로 예매되었습니다.</p>
              <div class="select_button"><a href="welcome.jsp">홈으로</a> 
            </div>
          </div>
          </div>
        </article>
      </main>
</body>
</html>