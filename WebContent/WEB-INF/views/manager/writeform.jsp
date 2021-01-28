<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
	<!DOCTYPE html>
	<html>
	<head>
	
	
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${root}/resources/css/mainhome.css">
	<style type="text/css">
		#buttonBox {
			display: flex;
			align-item: center;
		}
		.blend{
		height:20px;
		border:5px;
		background-color:red ;
		background-size:cover;
		background-blend-mode:lighten;
		transition:background-color 10s;
		}
		.blendhover{
		background-color:rgba(255,0,01);};
		transition:background-color 2s;
		}		
			</style>
	</head>
			<body>
				<div class="headerwrap">
	      			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
				</div>

				<h2 style="text-align: center; color: black;">상품등록 페이지</h2>
				<Br>
				<hr />	
				
				<div align="center" style="">
					<h3>상품 주요정보</h3>
					<div class="blend" style="height:20px;
						border:5px;
						background-color:#f1f3f5;
						background-size:cover;
						background-blend-mode:difference;
						transition:background-color 2s;">
					</div>
					<br />
					<form enctype="multipart-form/data" action="write" method="post" id="productWrite">
						<label for="items_Name;">품명:</label><br> 
							<input type="text"id="items_Name" name="items_Name"/><br /> 
						<label for="items_Price">가격:</label><br> 
							<input type="text" id="items_Price" name="items_Price"/><br /> 
						<label for="items_Model"> 모델명:</label><br> 
							<input type="text" id="items_Model" name="items_Model"><br /> 
						<label for="items_Company"> 브랜드:</label><br> 
							<input type="text" id="items_Company" name="items_Company"/><br />
						<label for="items_Context">제품 설명: </label><br />
							<input type="text" id="items_Context" name="items_Context"/><br />
						<label for="items_Manufacture"> 제조사:</label><br> 
							<input type="text" id="items_Manufacture"name="items_Manufacture"><br /> <br /> 
						<label for="items_Origin">원산지:</label> 
							<input type="radio" id="udomes" name="items_Origin">국산 
							<input type="radio" id="uimp" name="items_Origin" />수입<br /> <br /> 
						<label for="items_Option">제품 옵션:</label><br />
							<input type="text" id="items_Option" name="items_Option"/><br />
						<label for="items_Color">제품 색상:</label>	
							<input type="text" id="items_Color" name="items_Color"/>
						<label for="items_Mainphoto">이미지 첨부 </label>
							<input type="file" id="items_Mainphoto" name="items_Mainphoto" value="이미지 첨부" /><br /> <br />
						<div style="margin-bottom: 50px;">
							<a href="javascript:saveConfirm()" id="savebtn" type="submit" class="btn btn-primary" style="color: white">저장</a>
							<button class="btn btn-danger" onclick="location.href='${root}/product/productList'">취소</button>
						</div>
					</form>
							</div>
														
			<div class="footerwrap">
	      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			</div>
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