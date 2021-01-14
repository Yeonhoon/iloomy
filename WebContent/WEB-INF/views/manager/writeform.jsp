<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
 *{
            margin: 0px;
            padding: 0px;
            text-decoration: none;
         }
         
         #right_bar a {
         	color: black;
         }
         #left_bar a {
         	color: black;
         }
         a:hover {
				text-decoration: none;
			}
		
         a:visited, a:link {
            color: black;
         }
         h1 > a:visited, a:link {
            color: red;
         }
         h1 {
            color: red;
         }
         header {

            display: flex;
            padding: 30px;
            justify-content: space-between;
            position: relative;
         }
         header >div {
            word-spacing: 10px;
            
         }

         #right_bar {
            flex:4;
         }
         #center {
            flex:1;
            text-align: center;
         }
         #left_bar {
            flex: 4;
            display: flex;
            flex-direction: column;
            align-items:flex-end;
         }
         footer {
            /* margin: 0 auto; */
            display: flex;
            /* justify-content: space-around; */
            justify-content: center;
            width: 100%;
         }
         footer > div {
            padding: 50px;
            text-align: center;
         }
         a:hover {
    	cursor: pointer;
    } 

li {
margin: 50px;
}
#buttonBox{
display:flex;
align-item:center;
}

</style>
</head>


	<body>
	 <header>
         <div id="right_bar">
         <!-- 2021/01/07 product List링크 -->
         <a href="/team/homepage/product_list.html"><i class="fas fa-bars"></i></a>
         
         </div>
         <div id="center">
         <h1><a href="/team/homepage/home2.html">iloom</a></h1>
         </div>
         <div id="left_bar" style="font-size: 0.8rem;">
            
            
         </div>
      </header>
		

<h1 style="text-align: center; color: black;">상품등록 페이지</h1>
<Br>
<Br>
<hr/>
<div style="padding-left: 350px;">
	<h3>상품 주요정보</h3>
	<Br>
	<Br>
			<form action="A">
	  <label for="uproduct">품명:</label><br>
	  <input type="text" id="uproduct" name="uproduct"><br/>
	  <label for="uprice">가격:</label><br>
	  <input type="text" id="uprice" name="uprice"><br/>
	  <label for="umodel"> 모델명:</label><br>
	  <input type="text" id="umodel" name="umodel"><br/>
	  <label for="ubrand"> 브랜드:</label><br>
	  <input type="text" id="ubrand" name="ubrand"><br/>
	  <label for="umnc"> 제조사:</label><br>
	  <input type="text" id="umnc" name="umnc"><br/> 
	  <br/>
	  <label for="uorigin">원산지:</label>
	  <input type="radio" id="udomes" name="uorigin">국산
	  <input type="radio" id="uimp" name="uorigin"/>수입<br/>
	  <br/>
	  이미지 첨부
	  <input type="file" id="main_image" name="main_image" value="이미지 첨부"/><br />
	 	
	  <br/>
	  <br/>
	  <br/>
	  <h3>배송설정</h3>
	  <Br>
	  <Br>
	  
	  <label for="ufrm">형태:</label>
		  <input type="radio" id="ufx" name="ufrm"> 완제품
		  <input type="radio" id="uasb" name="ufrm"/>조립형<br/><br>
	  <label for="ucomment">제품 설명:</label><br>
	  <textarea id="ucomment" name="ucomment" rows="5" cols="50"></textarea>
	  <br/>
	  <label for="ushp">배송여부:</label><br>
		  <input type="radio" id="ushp" name="ushp">배송
		  <input type="radio" id="uvst" name="ushp"/>방문수령<br>
	  <br/>
	   <label for="ushprp">배송속성:</label><br>
		  <input type="radio" id="unorshp" name="ushprp">일반배송
		  <input type="radio" id="uchkshp" name="ushprp"/>주문확인 후 제작<br>
	  <br/>
	   <label for="upckshp">묶음배송:</label><br>
		  <input type="radio" id="uok" name="upckshp"/>가능
		  <input type="radio" id="uno" name="upckshp"/>불가<br>
	  <br/>
	   <label for="upossible">배송가능 지역:</label><br>
		  <input type="checkbox" id="choices" name="uurbans">서울,인천,경기,지방
		  <input type="checkbox" id="choices" name="ujeju"/>제주도
		  <input type="checkbox" id="choices" name="uilnd"/>제주도외 섬지역
		  <input type="checkbox" id="choices" name="uentire">전지역
	  <br>
	  <br/>
	  <label for="ushprice">상품별 배송비:</label><br>
	  <select id="ushprice" name="ushprice">
	  <option value="conditional">조건부 무료</option>
	  <option value="less">1조원 미만 2만원</option>
	  <option value="more">1조원 이상 무료</option>
	  </select>
	  <br>
	  <br/>
	   
	  
	  <label for="uexp">배송 상세안내:</label><br>
	  <textarea id="uexp" name="uexp" rows="5" cols="50"></textarea>
	  <br/>
	  <Br>
	  
	<div style="margin-bottom: 50px;">
		<input type="submit" onclick="validityTest()" class="btn btn-danger btn-sm" value="상품등록 완료">
		<button onclick="location.href='product_list'">취소</button>
	</div>
	
	<script>
		const validityTest = () => {
			console.log(event.target);
			event.preventDefault();
			const product = $("#uproduct");
			const price = $("#uprice");
			const model = $("#umodel");
			const brand = $("#ubrand");
			const mnc = $("#umnc");

			if(product.val()==="" | price.val()==="" | model.val()==="" | 
					brand.val()==="" | mnc.val()===""){
				const uidError = $("#uidError");
				uidError.html("필수입력").css("color","red");
				console.log("입력되지 않았음.");
				return;
				}
			 else{
				//서버로 데이터 전송
				const reviseForm = $("#reviseForm");
				//const reviseForm = document.reviseForm; //form에 name 저장되어 있으면 바로 가져올 수 있음.
				reviseForm.submit();
				document.location.href="product_list.html";
			 
				}
		}
		</script>
	
	  
	
</form>
</div>
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
	</body>
	
	
	</html>