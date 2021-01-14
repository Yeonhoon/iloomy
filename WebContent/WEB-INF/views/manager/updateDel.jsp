<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>iloom: 수정</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<link rel="stylesheet" href="/team/resources/css/main.css">
	<link rel="stylesheet" href="/team/resources/css/revise_main.css">
	<link rel="stylesheet" href="/team/resources/css/revise_detail.css">
	<link rel="stylesheet" href= "/team/resources/js/revise.js">

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
			<a href="#">서재</a>
			<a href="#">펫</a>
			<a href="#">시리즈</a>
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
				<a href="#"><i class="fas fa-search"></i></a>
				<a href="/team/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
			</div>
		</div>
	</header>
	<section>
		<h1 style="text-align: center;">주요 정보</h1><br /><br />
		<article id="main">
			<div id="main_image">
				<label for="image" style="text-align:center;">대표 사진</label><br />
				<img id="main_img" src="/team/resources/img/l10.jpg" height="400px" /><br />
				<div id="new_img"></div>
				<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg(event);"
					style="width:250px;" />

			</div>

			<div id="main_info">
				<form id="revise_form" name="revise_form" action="https://www.google.com">
					<ul id="reviseList">
						<li>
							<label for="brand"><b>브랜드명</b></label><br>
							<input type="text" id="brand" name="brand" style="width: 260px;" value="쿠시노" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_name"><b>제품명</b></label><br />
							<input type="text" id="product_name" name="product_name" style="width: 250px;"
								value="저상형 패밀리침대(인조가죽)" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_price"><b>가격(원)</b></label><br />
							<input type="number" id="product_price" name="product_price" style="width: 250px;"
								value="1009000" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="delivery_date"><b>배송기간</b></label><br />
							<input type="text" id="delivery_date" name="delivery_date" style="width: 250px;"
								value=" 약 10일" />
							<div id="uidError" class="error"></div><br />
						</li>

						<li>
							<label for="delivery_fee"><b>배송비</b></label><br />
							<input type="text" id="delivery_fee" name="delivery_fee" style="width: 250px;"
								value="무료배송" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="delivery_method"><b>배송방법</b></label><br />
							<input type="text" id="delivery_method" name="delivery_method" style="width: 250px;"
								value="설치배송" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_code"><b>제품코드</b></label><br />
							<input type="text" id="product_code" name="product_code" style="width: 250px;"
								value="HB722501" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_color"><b>[필수]제품색상</b></label><br />
							<input type="text" id="typeColor" name="product_color"
								style="width: 250px; display:inline-block; " />
							<input type="button" class="addBtn" onclick="addColor()" value="추가" /><br />
							<div id="addColor" style=" margin-top:30px;">
								<select name="color_select" id="color_select" style="width:350px;">
									<option id="베이지" value="">베이지</option>
									<option id="그레이" value="">그레이</option>
								</select>
								<br />
								<!-- <input type="button" onclick="removeColor()" value="삭제" /> -->
							</div>
							<div id="uidError" class="error"></div> <br />
						</li>
						<li>
							<label for="product_option"><b>[선택]제품사양</b></label><br />
							<input type="text" id="typeOption" name="product_option"
								style="width: 250px; display: inline-block;" />
							<input type="button" class="addBtn" onclick="addOption()" value="추가" /><br />
							<div id="addColor" style=" margin-top:30px;">
								<select name="productOption" id="productOption" style="width: 350px;">
									<option value="">쿠시노 침대가드 1000폭</option>
									<option value="">쿠시노 침대풋보드 1000폭</option>
								</select>
							</div>
						</li>
					</ul>
				</form>
			</div>

		</article>
		<hr />
		<article id="detail">
			<h1 style="text-align: center; margin-bottom: 30px;">세부 정보</h1>
			<div id="list">
				<div id="img01" class="list_img">
					<img src="/team/resources/img/L1.jpg" alt="image01" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg1(event);"
						style="width:250px;" />
				</div>
				<div id="text01" class="list_txt">
					<label for="" style="background-color:"><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="20" cols="75"> 쿠시노 저상형 패밀리 침대(인조가죽) 신혼에서부터 자녀의 성장에 따라 다양하게 사용할 수 있는 쿠시노 시리즈입니다. 싱글과 퀸 침대로 구성되어 있으며, 공간이나 필요에 따라 가드나 액세서리를 추가해 우리 가족만의 패밀리 침대를 완성해보세요.
						</textarea>
				</div>


				<div id="img02" class="list_img">
					<img src="/team/resources/img/iloomimg.png" height="600px" />
					<img src="/team/resources/img/iloomimg2.png" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg2(event);"
						style="width:250px;" />

				</div>

				<div id="text02" class="list_txt">
					<label for=""><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> 안전을 위한 침대 가드	공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다. *추가구매 아이템은 관련상품 참조</textarea>

				</div>

				<div id="img03" class="list_img">
					<img src="/team/resources/img/l4.jpg" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg3(event);"
						style="width:250px;" />

				</div>
				<div id="text03" class="list_txt">
					<label for=""><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> 안전을 위한 침대 가드	공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다. *추가구매 아이템은 관련상품 참조</textarea>

				</div>

				<div id="img04" class="list_img">
					<img src="/team/resources/img/l5.jpg" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg4(event);"
						style="width:250px;" />

				</div>
				<div id="text04" class="list_txt">
					<label for=""><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> 가드 액세서리 가드 액세서리를 거치해 작은 소품을 수납할 수 있습니다.*추가구매 아이템은 관련상품 참조</textarea>
				</div>

				<div id="img05" class="list_img">
					<h1>Color</h1>
					<div id="pre_img05">
						<img src="/team/resources/img/l7.jpg" height="300px" />
						<img src="/team/resources/img/l6.jpg" height="300px" />
					</div>
					<div id="newImg1"></div>
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg5(event);"
						style="width:250px;" />

				</div>
				<div>

				</div>

			</div>
			<hr style="color: grey" />

			<div id="btn">
				<input type="submit" onclick="validityTest()" id="save" value="저장" style="height:50px">
				<button onclick="location.href='product_list.html'" id="cancel" style="height:50px">취소</button>
			</div>
		</article>
	</section>
	<footer id="footer">
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
				<img src="/team/resources/img/a.JPG" width="100px" />
			</a>
			<a href="#">
				<img src="/team/resources/img/b.JPG" width="100px" />
			</a>
			<p style="text-align: left;">1577-5670</p>
			<p style="text-align: left;">평일 09:30~17:30, 제품문의, 매장안내, AS, 분해설치</p>
		</div>
	</footer>
</body>

</html>