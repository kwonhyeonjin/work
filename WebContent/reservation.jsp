<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.MovieDto"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
    <link rel="stylesheet" href="resources/css2/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/default.css" />
    <link rel="stylesheet" href="resources/css/header.css" />
    <link rel="stylesheet" href="resources/css/main_default.css" />
    <link rel="stylesheet" href="resources/css/reservation.css" />
    <link rel="stylesheet" href="resources/css/footer.css" />
    <link rel="stylesheet" href="resources/css/swiper-bundle.min.css" />
    
   
    <script defer src="resources/js/reservation.js"></script>
    <script defer src="resources/js/jquery.js"></script>
    <script defer src="resources/js/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
    
   <title>reservation(rnasterpiece)</title>
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
        
    <div class="wrap">
     <script>
    $(function(){
        let mdate, mname, mplace;
        $('button[name=mdate]').click(function(){
        	mdate = $(this).val();
        	$("#mdate").val(mdate);
        });
        $('div.movie_kind>ul>li>button').click(function(){
        	//먼저 날짜를 선택해야 한다.
        	if(!mdate){
        		alert("날짜를 선택하세요.");
        		$(this).removeClass("on");
        		return false;
        	}
        	mname = $.trim($(this).text());
        	$("#mname").val(mname);
        });
        $('button.seat_btn').click(function(){
        	mplace = $(this).val();
        	$("#mplace").val(mplace);
        });
        
        /* 이 부분은 버튼 수정하기 귀찮아서 a태그 기능을 강제로 submit 시킨 부분입니다. 나중에 소스를 
        수정하세요 */
        $("a.ticket_finish_contain").click(function(e){
        	e.preventDefault(); //a 의 링크 기능을 중지시킴
        $("#myForm")[0].submit();
        });
    	});
    </script>
    
     <!--  <form action="reservation_process.jsp" method="post">-->
    <form action="selectseats.jsp" id="myForm" method="post">
     <!--   input type에 정보를 담아야 폼값을 넘길 수 있습니다. 
            현재 소스를 살려서 수정하기 위해서  바로 위 jquery(편의상 바로 위에 작성, 나중에 수정하세요.)
            코드를 이용하여 click 하면 정보를 아래 input hidden에 담기도록 했어요. 크롬에서 개발자모드로 
            html코드 보시면 실시간으로 아래 input hidden 값이 담기는 걸 확인할 수 있을 거예요.
            정보를 담으면 위 jquery 의 form submit를 이용해 selectseats.jsp로 넘어갑니다. 
            selectseats.jsp에서 jsp로 인자를 받아 hidden에 저장해놓았다가 좌석 선택 값을 input type hidden으로 
            함께 받아 reservation_process.jsp로 넘기시면 됩니다. 
            추신) button.seat_btn의 value 값이 괴기맨숀에만 달려 있네요. 다른 버튼에도 값을 달아 주시면 되요.    
      -->
        <input type="hidden" name="mcity" id="mcity" value="경기-김포">
        <input type="hidden" name="mdate" id="mdate" value="2021-08-01">
        <input type="hidden" name="mname" id="mname" value="괴기맨숀">
        <input type="hidden" name="mplace" id="mplace" value="상영관/시간">
        
        <article class="reservation_contain">
          <h2 class="hide">예매하기</h2>
          <div class="theater_location">
            <h3>지역/날짜</h3>
            <ul>
              <li class="list active">
                <button type="button" onclick="sub(this)">경기-김포</button>
                <ul class="theater_location_sub on">
                  <li><button type="button" name = "mdate" value = "2021-08-01" id="a">8월&nbsp;1일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-02">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-03">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-04">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-05">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-06">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-07">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-08">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-09">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9일</button></li>
                  <li><button type="button" name = "mdate" value = "2021-08-10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10일</button></li>
                </ul>
              </li>
              
            </ul>
          </div>
          <div class="movie_kind">
            <h3>영화</h3>
            <ul>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name = "mname" value = "괴기맨숀">
                  	괴기맨숀
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_19">19</span>괴기맨숀</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "1관 17:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "2관 18:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "3관 19:30">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 19:50">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 20:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 21:10">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 23:40">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li> 
                  </ul>
                 <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>          
                </div>
              </li>
              
                   <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name = "mname" value = "기생충">
                  	기생충
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_19">19</span>기생충</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "1관 08:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>08:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "2관 10:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>10:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "3관 12:30">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>12:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 13:50">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>13:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 15:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>15:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 19:10">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 21:40">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li> 
                  </ul>
                 <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>          
                </div>
              </li>
              
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name = "mname" value = "미비포유">
                  	미비포유
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>미비포유</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "1관 08:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>09:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "2관 10:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>12:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "3관 12:30">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>13:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 13:50">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>14:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 15:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 19:10">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 21:40">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>22:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li> 
                  </ul>
                 <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>          
                </div>
              </li>
              
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name = "mname" value = "너의 이름은">
                  	너의 이름은
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_12">12</span>너의 이름은</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "1관 08:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>09:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "2관 10:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>12:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "3관 12:30">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>13:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 13:50">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>14:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 15:20">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 19:10">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 21:40">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>22:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li> 
                  </ul>
                 <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>          
                </div>
              </li>
              
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name = "mname" value = "그래비티">
                  그래비티
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_19">19</span>그래비티</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "3관 19시30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 19시50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 20시20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 21시10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 23시40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name ="mname" value = "다크나이트">
                다크나이트
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>다크나이트</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "4관 19시50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "5관 20시20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "7관 23시40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name ="mname" value ="루카">
                  루카
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_12">12</span>루카</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value ="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value ="4관 19시50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value ="5관 20시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value = "6관 21시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name = "mtime" value ="7관 23시 40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name ="mname" value ="발신제한">
                  발신제한
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>발신제한</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="2관 18시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="3관 19시 30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          	<span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="4관 19시 50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="5관 20시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                         	<span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="6관 21시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="7관 23시 40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name="mname" value="블랙위도우">
                 	블랙위도우
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_12">12</span>블랙위도우</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="2관 18시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="3관 19시 30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="4관 19시 50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="5관 20시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                         	<span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="6관 21시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="7관 23시 40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name="mname" value="인터스텔라">
                  인터스텔라
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>인터스텔라</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="2관 18시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="3관 19시 30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="4관 19시 50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="5관 20시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>20:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="6관 21시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="7관 23시 40분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>23:40</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           <span>7관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name="mname" value="크루엘라">
                  크루엘라
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>크루엘라</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="2관 18시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                          	<span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="3관 19시 30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="4관 19시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="5관 21시">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:00</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
              <li onclick="movie_kind(this)">
                <button class="movie_title" type="button" name="mname" value="킬러의보디가드2">
                 킬러의보디가드2
                </button>
                <div class="movie_kind_sub">
                  <h4><span class="age old_15">15</span>킬러의보디가드2</h4>
                  <h5>2D</h5>
                  <ul>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="1관 17시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>17:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>1관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="2관 18시 20분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>18:20</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>2관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="3관 19시 30분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:30</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>3관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="4관 19시 50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>19:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>4관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="5관 13시 50분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>13:50</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                            <span>5관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                    <li>
                      <button class="seat_btn" type="button" name="mtime" value="6관 21시 10분">
                        <dl>
                          <dt class="hide">상영시간</dt>
                          <dd><strong>21:10</strong></dd>
                          <dt class="hide">좌석</dt>
                          <dd>
                           	<span>6관</span>
                          </dd>
                        </dl>
                      </button>
                    </li>
                  </ul>
                  <a class="ticket_finish_contain" href="selectseats.jsp">좌석선택</a>
                </div>
              </li>
            </ul>
          </div>
          <div class="watch_day">
            <h3>시간</h3>
          </div>
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
          <span>호스팅사업자:rnasterpice</span>
          <span>개인정보보호 책임자:권현진,문형철,조현우,여은비,박상희</span>
          <span>대표이메일:youmn79@naver.com</span>
          <span><br>rnasterpice 고객센터:031-988-9888</span>
        </p>
      </footer>
    </div>
  </body>
</html>
