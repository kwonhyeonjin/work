<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="resources/css2/bootstrap.css">

<title>JSP 게시판 웹 사이트</title>

</head>
<body>
<ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">접속하기<span class="caret"></span></a>
            <ul class="dropdown-menu">
               <li class="active"><a href="login.jsp">로그인</a></li>
                    <li><a href="join.jsp">회원가입</a></li>
        </ul>
       </li>
       </ul>
           <h1>
          <a href="welcome.jsp" title="홈으로 돌아가기">
            <img src="resources/images/relogo.png"/>
           
          </a>
        </h1>
   
        
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
         <div class="jumbotron" style="padding-top: 20px;">
         <form method="post" action="loginAction.jsp">
           <h3 style="text-align: center;">로그인화면</h3>
           <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
           </div>
            <div class="form-group">
              <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
         </div>
         <input type="submit" class="btn btn-primary form-control" value="로그인">
         </form>
        </div>
    </div>
    <div class="col-lg-4"></div>
    </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="resources/js/bootstrap.js"></script>
</body>
</html>