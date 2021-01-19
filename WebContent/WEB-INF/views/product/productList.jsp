<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>product list</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
   href="<%=application.getContextPath()%>/resources/css/mainhome.css">
<link rel="stylesheet"
   href="<%=application.getContextPath()%>/resources/css/productList.css">
</head>
<style>
* {
   box-sizing: border-box;
}

body {
   font-family: Verdana, sans-serif;
}

.mySlides {
   display: none;
}

img {
   vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
   max-width: 1000px;
   position: relative;
   margin: auto;
}

/* The dots/bullets/indicators */
.dot {
   height: 15px;
   width: 15px;
   margin: 0 2px;
   background-color: #bbb;
   border-radius: 50%;
   display: inline-block;
   transition: background-color 0.6s ease;
}

.active {
   background-color: #717171;
}

/* Fading animation */
.fade {
   -webkit-animation-name: fade;
   -webkit-animation-duration: 1.5s;
   animation-name: fade;
   animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
   from {opacity: .4}

to {
   opacity: 1}

}
@
keyframes fade {
   from {opacity: .4
}

to {
   opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
   .text {
      font-size: 11px
   }
}
</style>
</head>
<body>
   <div class="headerwrap">
      <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
   </div>
   <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
     <img src="${root}/resources/img/p1.jpg" style="width:100%">
  <div class="text">편안한 iloomy</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="${root}/resources/img/p2.jpg" style="width:100%">
  <div class="text">가족같은 iloomy</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="${root}/resources/img/p3.jpg" style="width:100%">
  <div class="text">아름다운 iloomy</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
   

   <section>
      <nav>
         <h2 style="text-align: center;">소파</h2>
         <div id="pList">
            <a href="#">전체</a> <a href="#">일자형</a> <a href="#">카우치/코너</a> <a
               href="#">1인/소파베드</a> <a href="#">리클라이너</a> <a href="#">악세사리</a>
         </div>
         <hr />
      </nav>
      <button onclick="location.href='${root}/manager/write'" id="add"
         type="button" class="btn btn-outline-primary btn-sm">글쓰기</button>

      <div class="container-fluid">
         <div class="row">
            <div class="col-lg-3">
               <img src="${root}/resources/img/p1.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>볼케</b></li>
                  <li>1인 리클라이너 소파 (H가죽,전동)</li>
                  <li style="color: red;">1,989,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p2.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>케스터네츠</b></li>
                  <li>펫 3인 SET(패브릭)(온라인몰 전용)</li>
                  <li style="color: red;">1,099,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p3.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>루오바</b></li>
                  <li>코너(가죽)</li>
                  <li style="color: red;">2,540,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p4.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>마리</b></li>
                  <li>3인(가죽)</li>
                  <li style="color: red;">1,190,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>

         </div>
         <div class="row">
            <div class="col-lg-3">
               <img src="${root}/resources/img/p5.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>캐스터네츠</b></li>
                  <li>펫 2인 SET(패브릭)(온라인몰 전용)</li>
                  <li style="color: red;">999,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p6.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>볼케</b></li>
                  <li>1인 리클라이너 소파</li>
                  <li style="color: red;">2,499,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p7.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>코펜하겐</b></li>
                  <li>코너 소파(가죽)</li>
                  <li style="color: red;">4,140,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p8.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>루오바</b></li>
                  <li>3인(가죽)</li>
                  <li style="color: red;">1,870,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-3">
               <img src="${root}/resources/img/p9.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>코모</b></li>
                  <li>2인(패브릭)</li>
                  <li style="color: red;">690,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p10.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>코펜하겐</b></li>
                  <li>4인 소파(가죽)</li>
                  <li style="color: red;">2,690,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/p11.jpg" width=350px;>
               <ul style="float: left;">
                  <li><b>카이로</b></li>
                  <li>4인 리클라이너 소파(가죽)</li>
                  <li style="color: red;">3,290,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
            <div class="col-lg-3">
               <img src="${root}/resources/img/ready.jpg" width=350px;
                  height="350px">
               <ul style="float: left;">
                  <li><b>???</b></li>
                  <li>????</li>
                  <li style="color: red;">?,???,000원</li>
               </ul>
               <a href="${root}/manager/update" class= "btn btn-link" style="float:right">수정</a>
               <button type="button" class="btn btn-link" style="float: right;">삭제</button>
            </div>
         </div>
      </div>

   </section>

   <div class="footerwrap">
      <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
   </div>
</body>
<script>
   var slideIndex = 0;
   showSlides();

   function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";
      }
      slideIndex++;
      if (slideIndex > slides.length) {
         slideIndex = 1
      }
      for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
      setTimeout(showSlides, 2000); // Change image every 2 seconds
   }
</script>
</html>