<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
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
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/mainhome.css">
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/revise_main.css">
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/revise_detail.css">
	<script src="${root}/resources/js/revise.js"></script>
</head>

<body rightmargin="0">
      <div class="headerwrap">
      	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
      </div>
      
	<section id="sec" style="padding-right: 200px; padding-left:200px;">
		<h1 style="text-align: center;">주요 정보</h1>
			<a href="javascript:mainInfoDto()" class="btn btn-danger btn-sm" style="color:white">수정</a>
				
		<article id="main" style="margin-left: 300px;">
				<%-- <script>
					function mainInfoDto(){
					    $.ajax({
					        url:"mainInfoDto",
					        method:"get",

					        success:function(data){
				            	console.log("양식 불러오기 성공");
					            $("#main_infoForm").html(data);
					        }
					    });
					};
				</script> --%>
				<%-- <div id="main_infoForm"></div> --%>
			
			<div id="main_image" style="margin-right:100px;">
				<form action="photoupload" method="post">
					<label for="itemsAttach" id="mainPhotoLabel">대표 사진</label><br/>
					<img id="main_img" src="" height="400px" /><br />
					<input type="file" class="btn btn-outline-light" name="uphoto" style="width:250px;" />
				</form>
			</div>

	<ul id="reviseList" style="margin-left:100px;">
		<li>
			<label for="itemsAttachSname"><b>게시물 사진</b></label>
				<img src="${items.itemsAttachSname}" />
				<input type="file" name="itemsAttach" value="이미지 변경"/>
		</li>
	
		<li>
			<label for="num"><b>게시물번호</b></label><br>
				<input type="hidden" name="itemsNo" style="width: 260px;" value="${items.itemsNo}"/>
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_name"><b>제품명</b></label><br />
			<input type="text" id="product_name" name="product_name" style="width: 250px;"
				value="${items.itemsName}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_price"><b>가격(원)</b></label><br />
			<input type="number" id="product_price" name="items" style="width: 250px;"value="${items.itemsPrice}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="brand"><b>브랜드명</b></label><br>
			<input type="text" id="brand" name="brand" style="width: 260px;" value="${items.itemsCompany}"/>
			<div id="uidError" class="error"></div><br />
		</li>
 		<li>
			<label for="product_context"><b>제품설명</b></label><br />
			<input type="text" id="delivery_date" name="delivery_date" style="width: 250px;" value="${items.itemsContext}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_manufacture"><b>제조사</b></label><br />
			<input type="text" id="delivery_method" name="delivery_method" style="width: 250px;" value="${items.itemsManufacture}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_madein"><b>원산지</b></label><br />
			<input type="text" id="delivery_fee" name="delivery_fee" style="width: 250px;"	value="${items.itemsOrigin}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_color"><b>[필수]제품색상</b></label><br />
			<input type="text" id="typeColor" name="product_color"
				style="width: 250px; display:inline-block; " value="${items.itemsColor}"/>
			<input type="button" class="addBtn" onclick="addColor()" value="추가" /><br />
			<div id="addColor" style=" margin-top:30px;">
				<select name="color_select" id="color_select" style="width:350px;">
					<option id="베이지" value="">베이지</option>
					<option id="그레이" value="">그레이</option>
				</select>
				<br />
			</div>
			<div id="uidError" class="error"></div> <br />
		</li>
		<li>
			<label for="product_option"><b>[선택]제품사양</b></label><br />
			<input type="text" id="typeOption" name="product_option"
				style="width: 250px; display: inline-block;"  value="${items.itemsOption}"/>
			<input type="button" class="addBtn" onclick="addOption()" value="추가" /><br />
		</li>
		<li>
			<div id="addColor" style=" margin-top:30px;">
				<select name="productOption" id="productOption" style="width: 350px;">
					<option value="">쿠시노 침대가드 1000폭</option>
					<option value="">쿠시노 침대풋보드 1000폭</option>
				</select>
			</div>
		
		</li>
	</ul>
				
				

		</article>
		<hr />
		<article id="detail">
			<h1 style="text-align: center; margin-bottom: 30px;">세부 정보</h1>
			<div class="detailList">
				<div class="textButton">
					<a href="javascript:detailText()" class="btn btn-success">상품 세부정보 수정</a>				
				</div>
				<br />
				<script>
					const detailText = function(){
					    $.ajax({
					        url:"detailText",
					        method:"get",
					        success: function(data){
					            $(".textDiv").html(data);
					        }
					    })
					}
				</script>
				<div class="textDiv"></div>
			</div>
			<div class="detailList">
					<div class="textDiv"></div>
			</div>
			<div class="detailList">
				<div class="textDiv"></div>
			</div>
			
			<div class="detailList">
				<div class="textDiv"></div>
			</div>
			
			<div class="detailList">
				<div class="textDiv"></div>
			</div>	
			<div class="detailList">
				<div class="textDiv"></div>
			</div>
			<%--  <script>
					$(function(){
					    $.ajax({
					        url:"photolist",
					        success: function(data){
					            $("#photoList").html(data);
					        }
					    });
					})
				</script>
			<div id="photoList"><h5>첨부 이미지 리스트</h5></div> --%>
			

			<div id="btn">
				<form action="" method="post" id="buttonForm">
					<button onclick="javascript:saveConfirm();" id="savebtn" class="btn btn-danger">저장</button> 
					<a href="javascript:history.back();" class="btn btn-secondary">취소</a>
				</form>
			</div>
		</article>
	</section>
	

	
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
			const result = window.confirm("수정을 완료하시겠습니까?");
			if(result){
			    $("#buttonForm").attr("action","${root}/manager/itemupdate");
			    $("#buttonForm").submit();
				}
			}
		}
	</script>


</html>