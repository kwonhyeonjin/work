<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
    <title>찾아오시는 길</title>
    <style>
        button[id*="01"]{
        width: 160px;
        height: 50px;
        background-color: blue;
        color: cornsilk;
        box-shadow: 0 4px 16px rgba(0, 79, 255, 0.3);
        font-size: 16px;
        font-weight: bold;
        border-radius: 20px;
        position: absolute;
        top: 35%;
        left: 40%;
        transform: translate(-50%, -50%);

    }    
    button[id*="02"]{
        width: 160px;
        height: 50px;
        background-color: blue;
        color: cornsilk;
        box-shadow: 0 4px 16px rgba(0, 79, 255, 0.3);
        font-size: 16px;
        font-weight: bold;
        border-radius: 20px;
        position: absolute;
        top: 35%;
        left: 60%;
        transform: translate(-50%, -50%);

    }   
    button:focus{
        outline: 0;
       
    }
    iframe{
        position: absolute;
        top: 45%;
        left: 15%;
    }
    </style>
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
      
      <article class="gnb">
        <div class="logo" align="center">
        <img src="resources/images/relogo2.png"/>
        </div>
         <!--   <h2 class="hide">글로벌 메뉴</h2> -->
      
        </article>
		<%!
		String tagline = "Welcome to Rnasterpiece!";
		%>
	
	<%//제목을 표현 %>

    <div>
        <button name="simple_button" type="button" onclick="location.href='faq.jsp' " id="01" >FAQ</button>
        <button name="simple_button" type="button" id="02">찾아오시는 길</button>
    </div>
    
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3756.974976064584!2d126.66359228667129!3d37.64387189969629!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c86c449511665%3A0x75458356c8f969f3!2z7J207KCg7JWE7Lm0642w66-47Lu07ZOo7YSw7ZWZ7JuQ!5e0!3m2!1sko!2skr!4v1626333492538!5m2!1sko!2skr" width="70%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</body>
</html>