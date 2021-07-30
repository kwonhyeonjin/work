<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/reservation.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
   
    <script defer src="resources/js/reservation.js"></script>
    <script defer src="resources/js/jquery.js"></script>
    <script defer src="resources/js/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
<title>영화목록</title>
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
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
 	%>
 			<div class="container">
				<div class="row" align="center">
		<%
			for (int i=0; i<listOfProducts.size(); i++) {
			Product product=listOfProducts.get(i);
		%>
			<div class="col-md-4">
			<img src="./resources/images/<%=product.getFilename()%>"
			style="width:100%">
			<h3><%=product.getPname()%></h3>
			<p><a href="./product.jsp?id=<%=product.getProductId()%>"
			class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
		</div>
		<%
			}
		%>
		</div>
		<hr>
		</div>
		  <footer>
        <!-- <h3 class="hide">소개/약관/문의 메뉴</h3> -->
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