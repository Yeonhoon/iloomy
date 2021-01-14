<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>list</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="/team/resources/css/main.css">
		<link rel="stylesheet" href="/team/resources/css/list.css">
	</head>
	
	<body rightmargin="0">
		<header>
			<div id="right_bar">
			<a href="#"><i class="fas fa-bars"></i></a>
			<a href="#">침실</a>
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
			<h1 style="color: red;"><a href="/team/homepage/home2.html">iloom</a></h1>
			</div>
			<div id="left_bar" style="font-size: 0.8rem;">
				<div>
					<a href="#">Login</a>
					<a href="#">회원가입</a>
					<a href="#">주문</a>
					<a href="#">배송</a>
					<a href="#">이벤트</a>
					<a href="#">뉴스</a>
					<a href="#">고객센터</a>
					<a href="#">매장안내</a>
					<a href="#">회사소개</a>
				</div>
				<div id="left">
					<p style="display: inline-block; width: 150px; border: 1px solid red;">
					<a href="#">검색</a>
					</p>
					<a href="#" ><i class="fas fa-search"></i></a>
					<a href="/team/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
				</div>
			</div>
		</header>
		<section>
			<nav>
				<img src="/team/resources/img/l10.jpg" height="650px"/>
				<div style="display: inline-block; margin-left: 50px; margin-bottom: 20px;">
					<p id="list_name">쿠시노</p>
					<p id="list_detail"><b>저상형 패밀리침대(인조가죽)</b></p>
					<p id="list_price">1,009,000원</p>
					<hr/>
					<p style="font-size: 0.8rem"><b>배송기간</b> 약 10일 <b>배송비</b> 무료배송 
					<b>배송방법</b> 설치배송 <b>제품코드</b> HB722501</p>
					<br/>
					<div id="option">
						<select name="colorOption" id="colorOption">
							<option value="">[필수]색상을 선택해주세요</option>
							<option value="">브라운</option>
							<option value="">베이지</option>
							<option value="">그레이</option>
						</select>
						<select name="productOption" id="productOption">
							<option value="">[선택] 제품사양</option>
							<option value="">쿠시노 침대가드 1000폭</option>
							<option value="">쿠시노 침대풋보드 1000폭</option>
						</select>
					</div>
					<hr/>
					<p style="display: inline;"><b>총 구매가</b></p>
					<p style="display: inline; color: red; padding-left: 300px;"><b>0 원</b></p>
					<br/>
					<button id="pay"> 결제하기 </button>
					<button id="bag" onclick="location.href='package.html'"> 장바구니 </button>
					<br/>
					<a href="#" target="_black"><img src="/team/resources/img/l11.jpg" width="400px" style="margin-top: 20px; margin-bottom: 20px;"/></a><br/>
					<a href="#" target="_black"><img src="/team/resources/img/l12.jpg" width="400px" style="margin-bottom: 20px;"/></a><br/>
					<a href="#" target="_black"><img src="/team/resources/img/l13.jpg" width="400px" style="margin-bottom: 20px;"/></a><br/>
				</div>
			</nav>
			<article>
				<table>
					<tr style="color: #adb5bd; text-align: center;">
						<td style="color: red;">상세정보</td>
						<td>옵션</td>
						<td>인테리어 팁</td>
						<td>상품평</td>
						<td>Q&A</td>
					</tr>
				</table>
				<div id="list" >
					
				</div>
				<div style="text-align: center; padding: 30px;">
					<p style="font-size: 2rem;">쿠시노 저상형 패밀리 침대(인조가죽)</p>
					<p>신혼에서부터 자녀의 성장에 따라 다양하게 사용할 수 있는 쿠시노 시리즈입니다.</p>
					<p>싱글과 퀸 침대로 구성되어 있으며, 공간이나 필요에 따라 가드나 액세서리를 추가해 우리 가족만의 패밀리 침대를 완성해보세요.</p>
				</div>
				<div id="list2">
					<img src="/team/resources/img/l3.jpg" height="600px"/>
					<img src="/team/resources/img/l2.jpg"  height="600px"/>
					<img src="/team/resources/img/l4.jpg"  height="600px"/>
					<p><b>안전을 위한 침대 가드</b></p>
					<p>공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다.</p>
					<p style="font-size: 0.6rem; color: red;">*추가구매 아이템은 관련상품 참조</p>
					<img src="/team/resources/img/l5.jpg"  height="600px"/>
					<p><b>가드 액세서리</b></p>
					<p>가드 액세서리를 거치해 작은 소품을 수납할 수 있습니다.</p>
					<p style="font-size: 0.6rem; color: red;">*추가구매 아이템은 관련상품 참조</p>
				</div>
				<hr style="color: grey"/>
				<div id="list2">
					<h1>Color</h1>
					<img src="/team/resources/img/l7.jpg" height="300px"/>
					<img src="/team/resources/img/l6.jpg"  height="300px"/>
					
				</div>
			</article>
		</section>
		<footer>
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
					<a href="#">
					<img src="/team/resources/img/a.JPG" width= "100px"/>
					</a>
					<a href="#">
					<img src="/team/resources/img/b.JPG" width= "100px"/>
					</a>
				<p style="text-align: left;">1577-5670</p>
				<p style="text-align: left;">평일 09:30~17:30, 제품문의, 매장안내, AS, 분해설치</p>
			</div>
		</footer>

	</body>
</html>