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
		<h1 style="text-align: center;">주요정보 수정</h1>
				
		<article id="main" style="margin-left: 300px;">
			
			<div id="main_image" style="margin-right:100px;">
				<form action="photoupload" method="post">
					<label for="itemsAttach" id="mainPhotoLabel">대표 사진</label><br/>
					<img src="${root}/manager/itemsattach?no=${items.itemsNo}"/>
					<input type="file" name="itemsAttach" id="itemsAttach" />
				</form>
			</div>
			<div>
				<form enctype="multipart/form-data" method="post" id="saveMain">
					<table id="form" class="table align-middle">
						<tbody>
							<tr>
								<td class="list"><label for="itemsName;">제품명</label></td>
								<td class="input"><input type="text" id="itemsName" name="itemsName" value="${items.itemsName}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsPrice">가격</label></td>
								<td class="input"> <input type="text" id="itemsPrice" name="itemsPrice" value="${items.itemsPrice}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsModel">모델명</label></td>
								<td class="input"><input type="text" id="itemsModel" name="itemsModel" value="${items.itemsModel}"></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsCompany">브랜드</label></td>
								<td class="input"><input type="text" id="itemsCompany" name="itemsCompany" value="${items.itemsCompany}"/></td>
							</tr> 
							<tr>
								<td class="list"><label for="itemsContext">제품설명</label></td>
								<td class="input"><input type="text" id="itemsContext" name="itemsContext" value="${items.itemsContext}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsManufacture">제조사</label></td>
								<td class="input"><input type="text" id="itemsManufacture"name="itemsManufacture" value="${items.itemsManufacture}"></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsOrigin">원산지</label></td>
								<td class="input"><input type="text" id="itemsOrigin" name="itemsOrigin" value="${items.itemsOrigin}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsOption">옵션</label></td>
								<td class="input"><input type="text" id="itemsOption" name="itemsOption" value="${items.itemsOption}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsColor">색상</label></td>
								<td class="input"><input type="text" id="itemsColor" name="itemsColor" value="${items.itemsColor}"/></td>
							</tr>
							<tr>
								<td class="list"><label for="itemsStock">재고</label></td>
								<td class="input"><input type="text" id="itemsStock" name="itemsStock" value="${items.itemsStock}"/></td>
							</tr>
						</tbody>
					</table>
					<a href="javascript:savemain()" id="savebtn" class="btn btn-danger">다음</a> 
					<a href="javascript:history.back();" class="btn btn-secondary">취소</a>
				</form>
				<script>
					const savemain = function() {
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
						const result = window.confirm("저장하시겠습니까?");
						if(result){
							$("#saveMain").attr("action", "${root}/manager/updatedetail").submit();
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
			</div>

		</article>
		<hr />
	</section>
	<div class="footerwrap">
      	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>
	


</html>