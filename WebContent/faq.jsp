<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/snack_shop.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
    
    <title>FAQ</title>
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
    
    input[id*="answer"]{
    display: none;
    
    }
    input[id*="answer"] + label {
    width: 1100px;
    display: block;
    padding: 20px;
    border: 1px solid #232188;
    border-bottom: 0;
    color: #fff;
    font-weight: 900;
    background: #3634a5;
    cursor: pointer;
    position: relative;
       top: 400px;
       left: 20%;
       
        
    }
    input[id*="answer"] + label em {
        position: absolute;
        top: 50%;
        right: 10px;
        width: 30px;
        height: 30px;
        margin-top: -15px;
        display: inline-block;
        background: url('./img/arrow.png') 0 0 no-repeat;         
    }
    input[id*="answer"] + label + div {
        width: 1140px;
        max-height: 0;
        transition: all .35s;
        overflow: hidden;
        background: #ebf8ff;
        font-size: 11px;
        position: relative;
        top: 400px;
        left: 20%;
       
    }
    input[id*="answer"] + label + div p {
        display: inline-block;
        padding: 20px;
        
    }
    input[id*="answer"]:checked + label + div {max-height: 100px;}
    input[id*="answer"]:checked + label em {background-position: 0 -30px;}

    </style>
 	
 	
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
    
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
      
        <article class="gnb">
        <div class="logo" align="center">
        <img src="resources/images/relogo2.png"/>
        </div>
         <!--   <h2 class="hide">글로벌 메뉴</h2> -->
      
        </article>
    <div>
    <button name="simple_button" type="button"  id="01" >FAQ</button>
    <button name="simple_button" type="button" onclick="location.href= 'map.jsp' " id="02">찾아오시는 길</button>
    </div>
    <div class="accordion">
        <input type="checkbox" id="answer01">
        <label for="answer01">영화예매 홈페이지상으로 영화 예매가능 시간은 몇 분전 까지 인가요?<em></em></label>
        <div><p>홈페이지상 영화예매는 상영시간 20분전 까지 가능하며,<br>
        시간 안에 결제까지 모두 마쳐주셔야 합니다. </p></div>
        <input type="checkbox" id="answer02">
        <label for="answer02">이미 예매한 내역의 결제수단을 변경하고 싶어요.<em></em></label>
        <div><p>예매 건 취소 후 재결제 진행해 주셔야 하며, 부분 취소 및 부분 변경은 불가합니다. </p></div>
        <input type="checkbox" id="answer03">
        <label for="answer03">영화 시간보다 늦었어요. 입장 가능한가요?<em></em></label>
        <div><p>온라인으로 예매하신 경우에는 티켓 출력 후 영화 시간 내 언제든 입장이 가능합니다<br>
                다만, 지연 입장으로 인해 관람하지 못하신 영화의 앞 부분은 별도로 관람 및 환불이 어렵습니다. </p></div>
        <input type="checkbox" id="answer04">
        <label for="answer04">영화 관람시간대 중 조조는 언제인가요?<em></em></label>
        <div><p>10시 이전의 1회차 영화를 조조로 적용하고 있으나, 지점에 따라 조조시간의 차이가 발생될 수 있으며, <br>
                상세한 내용은 예매 페이지 상영시간표를 참고해 주세요. </p></div>
        <input type="checkbox" id="answer05">
        <label for="answer05">상영관 내 다른 음식물의 반입이 되나요?<em></em></label>
        <div><p>상영관 내 외부 음식물 반입은 가능합니다.<br>
                단, 강한 냄새로 인해 영화 관람 시 다른 고객님에게 방해가 되는 품목에 한해서 (예:족발, 순대 등)<br>
                취식 후 입장해 주실 것을 고객님께 양해(권고) 드리고 있습니다. <br><br>
                쾌적한 영화 관람과 안전을 위하여 다소 불편한 점이 있으시더라도 많은 양해 부탁 드리겠습니다. </p></div>
        <input type="checkbox" id="answer06">
        <label for="answer06">등급에 대해 알고 싶습니다.<em></em></label>
        <div><p>영화진흥법에 의한 영화별 관람등급을 철저히 준수하고 있습니다.<br><br>
                -전체 관람가 : 모든 연령의 관람객이 관람 할 수 있는 영화<br>
                -12세 관람가 : 만 12세 미만의 관람객은 관람 할 수 없는 영화(보호자 동반 시 12세 미만 관람 가능)<br>
                -15세 관람가 : 만 15세 미만의 관람객은 관람 할 수 없는 영화(보호자 동반 시 15세 미만 관람 가능)<br>
                -청소년 관람불가 : 만 18세 미만의 관람객은 관람 할 수 없는 영화</p></div>
    </div>  
</body>
</html>