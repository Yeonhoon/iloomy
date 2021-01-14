<!DOCTYPE html>

<html>
   <head>
      <meta charset="UTF-8">
      <title>iloom</title>
    	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      	<link rel="stylesheet" href="/team/resources/css/main.css">
      	<link rel="stylesheet" href="/team/resources/css/homepage.css">
      	
   </head>
   <style>
   .dropdown {
  position: relative;
  display: inline-block;
}
   	.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  }
  	.dropdown:hover .dropdown-content {
  display: block;
}
   </style>
   <body rightmargin="0">
      <header>
         <div id="right_bar" >
         <!-- 2021/01/07 product List링크 -->
	         <a href="/team/homepage/product_list.html"><i class="fas fa-bars"></i></a>
	         <div class="dropdown">
	         <a class="dropA" id="bed" href="#">침실</a>
	         	<div class="dropdown-content">
	         		<a href="#">침실1</a>
	         		<a href="#">침실1</a>
	         	</div>
	         </div>	
	         <a href="#">거실</a>
	         <a href="#">주방</a>
	         <a href="#">키즈룸</a>
	         <a href="#">학생방</a>
	         <a href="#">서재</a> .
	         <a href="#">펫</a> .
	         <a href="#">시리즈</a> .
	         <a href="#">아울렛</a>
         </div>
         <div id="center">
        	 <h1><a href="/team/homepage/home2.html">iloom</a></h1>
         </div>
         <div id="left_bar" style="font-size: 0.8rem;">
            <div>
	            <a onclick="document.getElementById('loginModal').style.display='block'">Login</a>
	            <a href="#">회원가입</a>
	            <a href="#">주문</a>
	            <a href="#">배송</a>
	            <a href="#">이벤트</a>
	            <a href="#">뉴스</a>
	            <a href="#">고객센터</a>
	            <a href="#">매장안내</a>
	            <a href="#">회사소개</a>
            </div>
            <div id="left" style="margin-top: 15px;">
	            <p style="display: inline-block; width: 150px; border: 1px solid red;">
	           	 <a href="#">검색</a>
	            </p>
	            <a href="#" ><i class="fas fa-search"></i></a>
	            <a href="/team/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
            </div>
         </div>
      </header>
      <hr style="color: grey"/>
      <section>
         <article>
            <p><b>고객님을 위한 제품 추천</b></p>
            <table>
               <tr>
                  <th><a href="#" >
                  <img src="/team/resources/img/link1.jpg" height= "275px"/></a></th>
                  <th><a href="#" >
                  <img src="/team/resources/img/link2.jpg"  height= "275px"/></a></th>
                  <th><a href="#" >
                  <img src="/team/resources/img/link3.jpg" width= "275px"/></a></th>
                  <th><a href="/team/homepage/list.html">
                  <img src="/team/resources/img/link4.jpg" width= "275px"/></a></th>
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
            <img src="/team/resources/img/nav1.jpg" width= "450px"/>
            </a>
            <a href="#">
            <img src="/team/resources/img/nav2.jpg" width= "450px"/>
            </a>
            <a href="#">
            <img src="/team/resources/img/nav3.jpg" width= "450px"/>
            </a>
         </nav>
         <p id="quick_menu">Quick menu</p>
         <article class="quick">
            <div>
               <a href="#">
               <img src="/team/resources/img/q1.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Consulting</p>
               <br/>
               <p>공강제안 서비스</p>
            </div>
            <div>
               <a href="#" >
               <img src="/team/resources/img/q2.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Store</p>            
               <br/>
               <p>매장안내</p>
            </div>
            <div>
               <a href="#" >
               <img src="/team/resources/img/q3.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Notice</p>
               <br/>
               <p>공지사항</p>
               </div>
            <div>
               <a href="#" >
               <img src="/team/resources/img/q4.jpg" width= "200px"/>
               </a>
               <br/>
               <p>Refurb</p>
               <br/>
               <p>전시품 판매</p>
            </div>
         </article>
      </section>
      <footer style="background-color: #f1f3f5;">
         <div style="color: #adb5bd; font-size: 2.5rem; flex: 4;">
            <b>iloom</b>
         </div>
         <div style="font-size: 0.8rem; flex: 2;">
            <p>ABOUT</p>
            <p>회사소개</p>
            <p>매장안내</p>
            <p>인재채용</p>
         </div>
         <div style="font-size: 0.8rem; flex: 2;">
            <p>SUPPORT</p>
            <p>고객샌터</p>
            <p>대리점 개설안내</p>
         </div>
         <div style="font-size: 0.8rem; flex: 2;">
            <p>INFO</p>
            <p>이용약관</p>
            <p><b>개인정보 처리방침</b></p>
         </div>
         <div style="font-size: 0.8rem; flex: 2;">
            <p style="text-align: left;">고객센터</p>
               <a href="#" target="_blank">
               <img src="/team/resources/img/a.JPG" width= "100px"/>
               </a>
               <a href="#" target="_blank">
               <img src="/team/resources/img/b.JPG" width= "100px"/>
               </a>
            <p style="text-align: left;">1577-5670</p>
            <p style="text-align: left;">평일 09:30~17:30, 제품문의, 매장안내, AS, 분해설치</p>
         </div>
      </footer>
  
    <div id="loginModal" class="modal"> 
  
        <form class="modal-content animate" action="/team/homepage/home2.html"> 
            <div class="imgcontainer"> 
                <span onclick="document.getElementById('loginModal').style.display='none'" class="close" title="Close Modal">×</span>  
            </div> 
  
            <div class="container"> 
                <label><b>아이디</b></label> 
                <input type="text" placeholder="Enter ID" name="uname" required> 
  
                <label><b>비밀번호</b></label> 
                <input type="password" placeholder="Enter Password" name="psw" required> 
  
                <button type="submit">Login</button> 
                <input type="checkbox" checked="checked"> Remember me 
            </div> 
  
            <div class="container" style="background-color:#f1f1f1"> 
                <button type="button" onclick="document.getElementById('loginModal').style.display='none'" class="cancelbtn">Cancel</button> 
                <span class="psw">Forgot <a href="#">password?</a></span> 
            </div> 
        </form> 
    </div> 
  
   
   </body>
    <script> 
        var modal = document.getElementById('loginModal'); 
        window.onclick = function(event) { 
            if (event.target == modal) { 
                modal.style.display = "none"; 
            } 
        } 
    </script> 
</html>