<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
   <head>
      <meta charset="UTF-8">
      <title>iloomy</title>
    	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      	<link rel="stylesheet" href="${root}/resources/css/mainhome.css"> <!-- footer, header css -->
      	<link rel="stylesheet" href="${root}/resources/css/homepage.css">
      	
   </head>

   <body>
      <div class="headerwrap">
      	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      </div>
      
      <hr style="color: grey"/>
      
      <section>
         <article>
            <p><b>고객님을 위한 제품 추천</b></p>
            <table>
               <tr>
                  <th><a href="#" >
                  <img src="${root}/resources/img/link1.jpg" height= "275px"/></a></th>
                  <th><a href="#" >
                  <img src="${root}/resources/img/link2.jpg"  height= "275px"/></a></th>
                  <th><a href="#" >
                  <img src="${root}/resources/img/link3.jpg" width= "275px"/></a></th>
                  <th><a href="product/detail?no=1" >
                  <img src="${root}/resources/img/link4.jpg" width= "275px"/></a></th>
               </tr>
               <tr style="text-align: center;">
                  <td>[일룸] 에디키즈 PL박스 수납 책장 3단 14</td>
                  <td>[일룸] 이타카네오 독서실 책상(온라인몰)</td>
                  <td>[일룸] 리브레/이타카네오 1800폭 책상 (온라인몰)</td>
                  <td>[일룸] 링키플러스/이타카네오/로이 다리형 침대</td>
               </tr>
               <tr style="color: red; text-align: center;">
                  <td>199,000</td>
                  <td>369,000</td>
                  <td>230,000</td>
                  <td>469,000</td>
               </tr>
            </table>
         </article>
         <nav style="background-color: #f1f3f5; width: 100%">
            <a href="#">
            <img src="${root}/resources/img/nav1.jpg" width= "450px"/>
            </a>
            <a href="#">
            <img src="${root}/resources/img/nav2.jpg" width= "450px"/>
            </a>
            <a href="#">
            <img src="${root}/resources/img/nav3.jpg" width= "450px"/>
            </a>
         </nav>
         <p id="quick_menu">Quick menu</p>
         <article class="quick">
            <div>
               <a href="#">
               <img src="${root}/resources/img/q1.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Consulting</p>
               <br/>
               <p>공강제안 서비스</p>
            </div>
            <div>
               <a href="#" >
               <img src="${root}/resources/img/q2.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Store</p>            
               <br/>
               <p>매장안내</p>
            </div>
            <div>
               <a href="#" >
               <img src="${root}/resources/img/q3.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Notice</p>
               <br/>
               <p>공지사항</p>
               </div>
            <div>
               <a href="#" >
               <img src="${root}/resources/img/q4.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Refurb</p>
               <br/>
               <p>전시품 판매</p>
            </div>
         </article>
      </section>
      
      <div class="footerwrap">
      	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
      </div>
	</body>
</html>