<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>product list</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/mainhomecss">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/product_list.css">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/homepage.css">
	</head>
	
	<body>
		<header>
			<div id="right_bar">
				<a href="<%=application.getContextPath()%>/product/list"><i class="fas fa-bars"></i></a>
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
					
					<div id="left" style="margin-top: 15px;">
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
				<h2 style="text-align: center;">소파</h2>
				<div id="pList">
					<a href="#">전체</a>
					<a href="#">일자형</a>
					<a href="#">카우치/코너</a>
					<a href="#">1인/소파베드</a>
					<a href="#">리클라이너</a>
					<a href="#">악세사리</a>
				</div>
				<hr/>
			</nav>
			<button onclick="location.href='writeform.html'" id="add" type="button" class="btn btn-outline-primary btn-sm">글쓰기</button>
			
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3" >
							<img src="/team/resources/img/p1.jpg" width=350px;>	
								<ul style="float: left;">
									<li><b>볼케</b></li>
									<li>1인 리클라이너 소파 (H가죽,전동)</li>
									<li style="color: red;">1,989,000원</li>
								</ul>
								<button type="button" onclick="location.href='revise.html'" class="btn btn-link" style="float: right;">수정</button>
								<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p2.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>케스터네츠</b></li>
								<li>펫 3인 SET(패브릭)(온라인몰 전용)</li>
								<li style="color: red;">1,099,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
								<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p3.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>루오바</b></li>
								<li>코너(가죽)</li>
								<li style="color: red;">2,540,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
								<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p4.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>마리</b></li>
								<li>3인(가죽)</li>
								<li style="color: red;">1,190,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						
					</div>
					<div class="row">
						<div class="col-lg-3">
							<img src="/team/resources/img/p5.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>캐스터네츠</b></li>
								<li>펫 2인 SET(패브릭)(온라인몰 전용)</li>
								<li style="color: red;">999,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p6.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>볼케</b></li>
								<li>1인 리클라이너 소파</li>
								<li style="color: red;">2,499,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p7.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>코펜하겐</b></li>
								<li>코너 소파(가죽)</li>
								<li style="color: red;">4,140,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p8.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>루오바</b></li>
								<li>3인(가죽)</li>
								<li style="color: red;">1,870,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<img src="/team/resources/img/p9.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>코모</b></li>
								<li>2인(패브릭)</li>
								<li style="color: red;">690,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p10.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>코펜하겐</b></li>
								<li>4인 소파(가죽)</li>
								<li style="color: red;">2,690,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/p11.jpg" width=350px;>
							<ul style="float: left;">
								<li><b>카이로</b></li>
								<li>4인 리클라이너 소파(가죽)</li>
								<li style="color: red;">3,290,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
						<div class="col-lg-3">
							<img src="/team/resources/img/ready.jpg" width=350px; height="350px">
							<ul style="float: left;">
								<li><b>???</b></li>
								<li>????</li>
								<li style="color: red;">?,???,000원</li>
							</ul>
							<button type="button" class="btn btn-link" style="float: right;">수정</button>
							<button type="button" class="btn btn-link" style="float: right;">삭제</button>
						</div>
					</div>
				</div>
			
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
					<a href="#"  >
					<img src="/team/resources/img/a.JPG" width= "100px"/>
					</a>
					<a href="#"  >
					<img src="/team/resources/img/b.JPG" width= "100px"/>
					</a>
				<p style="text-align: left;">1577-5670</p>
				<p style="text-align: left;">평일 09:30~17:30, 제품문의, 매장안내, AS, 분해설치</p>
			</div>
		</footer>
	</body>
</html>