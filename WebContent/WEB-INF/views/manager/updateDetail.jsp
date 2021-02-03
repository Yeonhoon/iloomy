<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>list</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${root}/resources/css/mainhome.css"> <!-- footer, header css -->
      	<link rel="stylesheet" href="${root}/resources/css/revise_detail.css">
	</head>
	<body>
		<div class="headerwrap">
      		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
   	  	</div>
	<div id="detail">
		<form id="saveform" action="" method="post" enctype="multipart/form-data">
			<div class="divTitle"><h2><b>상세 정보 수정</b></h2></div>
			<div class="list">
				<div class="imgArea">
					<img class="img-thumbnail" src="${root}/manager/imageattach?no=${detail.itemsItemsNo}&num=1"/><br />
					<input type="file" id="image1" name="imageAttach1" value="이미지 변경" />
				</div>
				<textarea  class="form-control" name="detail1" id="detail1" cols="50" rows="10">${detail.detail1}</textarea>
			</div>
			<div class="list">
				<div class="imgArea">
					<img class="img-thumbnail" src="${root}/manager/imageattach?no=${detail.itemsItemsNo}&num=2"/><br />
					<input  type="file" id="image2" name="imageAttach2" value="이미지 변경" />
				</div>
				<textarea class="form-control" name="detail2" id="detail2" cols="50" rows="10">${detail.detail2}</textarea>
			</div>
			<div class="list" >
				<div class="imgArea">
					<img class="img-thumbnail"  src="${root}/manager/imageattach?no=${detail.itemsItemsNo}&num=3"/><br />
					<input type="file" id="image3" name="imageAttach3" value="이미지 변경" />
				</div>
				<textarea class="form-control" name="detail3" id="detail3" cols="50" rows="10">${detail.detail3}</textarea>
			</div>
			
			<div id="btns">
				<a href="javascript:savedetail()" id="savebtn" class="btn btn-danger">저장</a> 
				<a href="javascript:history.back();" class="btn btn-secondary">취소</a>
			</div>
		</form>
	</div>
		<script>
		    const savedetail = function() {
		        console.log(event);
			
		        const description1 = $("#detail1");
	
		        if (description1.val() === "" )
		               { window.alert("상세 설명은 반드시 입력되어야 합니다.");
		            return;
		        } else {
		            const result = window.confirm("저장을 완료하시겠습니까?");
		            if (result) {
		                $("#saveform").attr("action", "${root}/manager/saveupdate?no=${detail.itemsItemsNo}").submit();
		            }
		        }
		    }
		</script>
		
		<div class="footerwrap">
      		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    	</div>
	</body>

	