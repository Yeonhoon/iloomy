<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
* {
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

h1>a:visited, a:link {
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

header>div {
	word-spacing: 10px;
}

#right_bar {
	flex: 4;
}

#center {
	flex: 1;
	text-align: center;
}

#left_bar {
	flex: 4;
	display: flex;
	flex-direction: column;
	align-items: flex-end;
}

footer {
	/* margin: 0 auto; */
	display: flex;
	/* justify-content: space-around; */
	justify-content: center;
	width: 100%;
}

footer>div {
	padding: 50px;
	text-align: center;
}

a:hover {
	cursor: pointer;
}

li {
	margin: 50px;
}

#buttonBox {
	display: flex;
	align-item: center;
	{
	<
	background-img
	src="${root
}
//
resources
/
img
/
pwtp8
.jpg
;"/
>
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
			<h1>
				<a href="/team/homepage/home2.html">iloom</a>
			</h1>
		</div>
		<div id="left_bar" style="font-size: 0.8rem;"></div>
	</header>


	<h1 style="text-align: center; color: black;">상품등록 페이지</h1>
	<Br>
	<Br>
	<hr />
	<div class="blend"></div>
	<div style="padding-left: 350px;">
		<h3>상품 주요정보</h3>
		<Br> <Br>
		<form action="" method="post" id="productWrite">
			<label for="uproduct">품명:</label><br> <input type="text"
				id="uproduct" name="uproduct"><br /> <label for="uprice">가격:</label><br>
			<input type="text" id="uprice" name="uprice"><br /> <label
				for="umodel"> 모델명:</label><br> <input type="text" id="umodel"
				name="umodel"><br /> <label for="ubrand"> 브랜드:</label><br>
			<input type="text" id="ubrand" name="ubrand"><br /> <label
				for="umnc"> 제조사:</label><br> <input type="text" id="umnc"
				name="umnc"><br /> <br /> <label for="uorigin">원산지:</label>
			<input type="radio" id="udomes" name="uorigin">국산 <input
				type="radio" id="uimp" name="uorigin" />수입<br /> <br /> 이미지 첨부 <input
				type="file" id="main_image" name="main_image" value="이미지 첨부" /><br />
			<br /> <br /> <br />
			<div style="margin-bottom: 50px;">
				<a href="javascript:saveConfirm()" id="savebtn" type="submit" class="btn btn-danger">저장</a>
				<button onclick="location.href='${root}/man'">취소</button>
			</div>
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
			<p>
				<b>개인정보 처리방침</b>
			</p>
		</div>
		<div style="font-size: 0.8rem; flex: 2;">
			<p style="text-align: left;">고객센터</p>
			<a href="#" target="_blank"> <img src="/team/resources/img/a.JPG"
				width="100px" />
			</a> <a href="#" target="_blank"> <img
				src="/team/resources/img/b.JPG" width="100px" />
			</a>
			<p style="text-align: left;">1577-5670</p>
			<p style="text-align: left;">평일 09:30~17:30, 제품문의, 매장안내, AS, 분해설치</p>
		</div>
	</footer>
</body>
<script>
		const saveConfirm = function() {
		console.log(event);
		/* event.preventDefault(); */

		const brand = $("#brand");
		const productName = $("#product_name");
		const productPrice = $("#product_price");
		const deliveryDate = $("#delivery_date");
		const deliveryFee = $("#delivery_fee");
		const deliveryMethod = $("#delivery_method");
		const productCode = $("#product_code");

		if (brand.val() === "" | productName.val() === "" | productPrice.val() === "" |
			deliveryDate.val() === "" | deliveryFee.val() === "" | deliveryMethod.val() === "" | productCode.val() === "") {
			const uidError = $("#uidError");
			window.alert("모두 입력되어야합니다");
			return;
		}
		else {
			//서버로 데이터 전송
			//const reviseForm = document.reviseForm; //form에 name 저장되어 있으면 바로 가져올 수 있음.
			const result = window.confirm("저장을 완료하시겠습니까?");
			if(result){
				$("#productWrite").attr("action", "${root}/manager/write").submit();
			    
			    
			/*$(function(){
			        $.ajax({
			            url:"saveupdate",
			            method: "get"
			        })
			    }) */
			}
		}
	}
	</script>


</html>