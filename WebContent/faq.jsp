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
	 <%//????????? ?????? %>
  <header>
        <h1>
          <a href="welcome.jsp" title="????????? ????????????">
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
               aria-expanded="false">????????????</a>
            <ul class="dropdown-menu">
               <li><a href="login2.jsp">?????????</a></li>
                    <li><a href="signup2.jsp">????????????</a></li>
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
               aria-expanded="false">????????????</a>
            <ul class="dropdown-menu">
               <li><a href="logoutAction.jsp">????????????</a></li>
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
         <!--   <h2 class="hide">????????? ??????</h2> -->
      
        </article>
    <div>
    <button name="simple_button" type="button"  id="01" >FAQ</button>
    <button name="simple_button" type="button" onclick="location.href= 'map.jsp' " id="02">??????????????? ???</button>
    </div>
    <div class="accordion">
        <input type="checkbox" id="answer01">
        <label for="answer01">???????????? ????????????????????? ?????? ???????????? ????????? ??? ?????? ?????? ??????????<em></em></label>
        <div><p>??????????????? ??????????????? ???????????? 20?????? ?????? ????????????,<br>
        ?????? ?????? ???????????? ?????? ??????????????? ?????????. </p></div>
        <input type="checkbox" id="answer02">
        <label for="answer02">?????? ????????? ????????? ??????????????? ???????????? ?????????.<em></em></label>
        <div><p>?????? ??? ?????? ??? ????????? ????????? ????????? ??????, ?????? ?????? ??? ?????? ????????? ???????????????. </p></div>
        <input type="checkbox" id="answer03">
        <label for="answer03">?????? ???????????? ????????????. ?????? ????????????????<em></em></label>
        <div><p>??????????????? ???????????? ???????????? ?????? ?????? ??? ?????? ?????? ??? ????????? ????????? ???????????????<br>
                ??????, ?????? ???????????? ?????? ???????????? ????????? ????????? ??? ????????? ????????? ?????? ??? ????????? ???????????????. </p></div>
        <input type="checkbox" id="answer04">
        <label for="answer04">?????? ??????????????? ??? ????????? ????????????????<em></em></label>
        <div><p>10??? ????????? 1?????? ????????? ????????? ???????????? ?????????, ????????? ?????? ??????????????? ????????? ????????? ??? ?????????, <br>
                ????????? ????????? ?????? ????????? ?????????????????? ????????? ?????????. </p></div>
        <input type="checkbox" id="answer05">
        <label for="answer05">????????? ??? ?????? ???????????? ????????? ??????????<em></em></label>
        <div><p>????????? ??? ?????? ????????? ????????? ???????????????.<br>
                ???, ?????? ????????? ?????? ?????? ?????? ??? ?????? ??????????????? ????????? ?????? ????????? ????????? (???:??????, ?????? ???)<br>
                ?????? ??? ????????? ?????? ?????? ???????????? ??????(??????) ????????? ????????????. <br><br>
                ????????? ?????? ????????? ????????? ????????? ?????? ????????? ?????? ?????????????????? ?????? ?????? ?????? ??????????????????. </p></div>
        <input type="checkbox" id="answer06">
        <label for="answer06">????????? ?????? ?????? ????????????.<em></em></label>
        <div><p>?????????????????? ?????? ????????? ??????????????? ????????? ???????????? ????????????.<br><br>
                -?????? ????????? : ?????? ????????? ???????????? ?????? ??? ??? ?????? ??????<br>
                -12??? ????????? : ??? 12??? ????????? ???????????? ?????? ??? ??? ?????? ??????(????????? ?????? ??? 12??? ?????? ?????? ??????)<br>
                -15??? ????????? : ??? 15??? ????????? ???????????? ?????? ??? ??? ?????? ??????(????????? ?????? ??? 15??? ?????? ?????? ??????)<br>
                -????????? ???????????? : ??? 18??? ????????? ???????????? ?????? ??? ??? ?????? ??????</p></div>
    </div>  
</body>
</html>