<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
	<meta charset= "UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css/detail_view.css" />
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
    <script defer src="resources/js/detail_view.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	</head>

<title>영화 상세 정보</title>
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
               <li><a href="login.jsp">로그인</a></li>
                    <li><a href="join.jsp">회원가입</a></li>
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
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="row">
		<div class="col-md-5">
			<img src="./resources/images/<%=product.getFilename()%>"
			style="width:100%">
		</div>
			<div class="col-md-6">
				<h2><%out.println(product.getPname());%></h2>
				<p><%out.println(product.getDescription());%>
				<p><b>일련번호 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p><b>개봉</b> : <%out.println(product.getOpEn());%>
				<p><b>배급</b> : <%out.println(product.getManufacturer());%>
				<p><b>국가</b> : <%out.println(product.getCounTry());%>
				<p><b>등급</b> : <%out.println(product.getRaTe());%>
				<p><b>장르</b> : <%out.println(product.getCategory());%>
				<p><b>감독</b> : <%out.println(product.getSuperVisor());%>
				<p><b>배우</b> : <%out.println(product.getAcTor());%>
				<p><b>인기순위</b> : <%out.println(product.getUnitsInStock());%>
				<!-- <h4><%out.println(product.getUnitPrice()); %>원</h4>-->
				<p> <a href="reservation.jsp" class="btn btb-info">영화 예매 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">영화 목록 &raquo;</a>	
			</div>
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
		