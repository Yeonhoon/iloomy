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
				<script>
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
				</script>
				<div id="main_infoForm"></div>

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
			    $("#buttonForm").attr("action","${root}/manager/saveupdate");
			    $("#buttonForm").submit();
				}
			}
		}
	</script>


</html>