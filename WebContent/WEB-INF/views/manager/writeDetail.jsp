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
	<link rel="stylesheet" href="${root}/resources/css/write.css">
	
	</head>
			<body>
				<div class="headerwrap">
	      			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
				</div>
				<div class="body">
					<div id="title">
						<h2 style="text-align: center; color: black;">상품등록 페이지</h2>
					</div>
						<div id="imageinput">
							 <form enctype="multipart/form-data" action="detail" method="post">
									<label for="detail1">상세설명1</label><br />
										<textarea name="itemsimages.detail1" id="detail1" cols="50" rows="10"></textarea><br/>
										<input type="file" id="image1" name="image1"/><br /><br />
									<label for="detail2">상세설명2</label><br />
										<textarea name="itemsimages.detail2" id="detail2" cols="50" rows="10"></textarea><br/>
										<input type="file" id="image2" name="image2" /><br /><br />
									<label for="detail3">상세설명3</label><br />
										<textarea name="itemsimages.detail3" id="detail3" cols="50" rows="10"></textarea><br />
										<input type="file" id="image3" name="image3" /><br />
								</form>
							</div>
							<script>
							$(function() {
							    $.ajax({
							        url:"imagepreview",
							        success:function(data){
							        	 $("#imagePreview").html(data); 
							        }
							    })
							});
							</script>
							<div id="imagePreview"></div>
							
							
					
					</div>
					<div class="d-flex justify-content-center ml-3">
						<a href="javascript:saveConfirm()" id="savebtn" type="submit" class="btn btn-primary" style="color: white">저장</a>
						<a href="javascript:history.back()" class="btn btn-danger">취소</a>
					</div>
				
														
			<div class="footerwrap">
	      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			</div>
		</body>
		
		<script>
			const saveConfirm = function() {
			    console.log(event);
					
			const name = $("#itemsName");
			const price = $("#itemsPrice");
			const company = $("#itemsCompany");
			const context = $("#itemsContext");
			const model = $("#itemsModel");
			const mnc = $("#itemsManufacture");
			const origin = $("#itemsOrigin");
			const options = $("#itemsOption");
			const stock = $("#itemsStock");
			const attach = $("#itemsAttach");
	
			if (name.val() === "" | price.val() === "" | company.val() === "" |
				context.val() === "" | model.val() === "" | mnc.val() === "" | origin.val() === "" | options.val()=="" | stock.val()=="" | attach.val()=="") {
				window.alert("모두 입력되어야합니다");
				return;
			}
			else {
				//서버로 데이터 전송
				//const reviseForm = document.reviseForm; //form에 name 저장되어 있으면 바로 가져올 수 있음.
				const result = window.confirm("저장을 완료하시겠습니까?");
				if(result){
					$("#itemsWrite").attr("action", "${root}/manager/write").submit();
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