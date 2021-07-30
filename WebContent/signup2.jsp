<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="resources/css3/style.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.js"></script>

<title>회원가입</title>
</head>

<body>

<ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">접속하기<span class="caret"></span></a>
            <ul class="dropdown-menu">
               <li class="active"><a href="login2.jsp">로그인</a></li>
                    <li><a href="signup2.jsp">회원가입</a></li>
        </ul>
       </li>
       </ul>

	<!--헤더 -->
  <div class="container-header">
    <div class="row">
      <div class="col-lg-1">
      </div>
      <div class="col-lg-10">
        <div class="jumbotron text-center mb-0">
          <h1>rnaster Theater</h1>
          <!--밑 div는 공백 때문에-->
          <div><br><br><br></div>
        </div>
      </div>
      <div class="col-lg-1">
      </div>
    </div>
  </div>

  <!--폼 왼쪽 구역-->
  <div class="container">
    <div class="form-container log-in-container">
      <form action="joinAction.jsp" method="post">
        <div>
          <img src="resources/images/로그인 로고.png" alt=" paddding-top:55px"   >
        </div>
        <div>
        </div>
       <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
           </div>
            <div class="form-group">
              <input type="password" class="form-control" placeholder="패스워드" name="userPassword" maxlength="20">
         </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
         </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
         </div>
            <div class="form-group" style="text-align: center;">
             <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-primary active">
                  <input type="radio"  name="userGender" autocomplete="off" value="남,여" checked>남,여
                </label>
             </div>
         </div>
        <div>
        </div>
       	<input type="submit" class="btn btn-primary form-control" value="회원가입">
      </form>
    </div>
	<div class="col-lg-4"></div>
   
    <!--폼 오른쪽 구역 이미지 캐러셀 -->
		<!--이미지385x489 -->
		<div class="overlay-container" id="slider">
			<div class="slideshow-container">
			
				<div class="mySlides fade">
					<img src="resources/images/ruca.jpg">
				</div>

				<div class="mySlides fade">
					<img src="resources/images/크루엘라1.jpg">
				</div>

				<div class="mySlides fade">
					<img src="resources/images/블랙위도우1.jpg">
				</div>

				<div class="mySlides fade">
					<img src="resources/images/발신제한1.jpg">
				</div>
			</div>
		</div>
  </div>
  
  <!-- 자바스크립트 JQuery 이클립스 수정작업 -->
  <script type="text/javascript">
	var slideIndex = 0; //slide index

	// HTML 로드가 끝난 후 동작
	window.onload=function(){
	  showSlides(slideIndex);

	  // Auto Move Slide
	  var sec = 3000;
	  setInterval(function(){
	    slideIndex++;
	    showSlides(slideIndex);

	  }, sec);
	}


	// Next/previous controls
	function moveSlides(n) {
	  slideIndex = slideIndex + n
	  showSlides(slideIndex);
	}

	// Thumbnail image controls
	function currentSlide(n) {
	  slideIndex = n;
	  showSlides(slideIndex);
	}

	function showSlides(n) {

	  var slides = document.getElementsByClassName("mySlides");
	  var size = slides.length;

	  if ((n+1) > size) {
	    slideIndex = 0; n = 0;
	  }else if (n < 0) {
	    slideIndex = (size-1);
	    n = (size-1);
	  }

	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none";
	  }
	  slides[n].style.display = "block";
	}
  
  	</script>
  
	
</body>
</html>