<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<link rel="stylesheet" href= "<%=application.getContextPath()%>/resources/js/revise.js">
	
</head>

<body rightmargin="0">
      <div class="headerwrap">
      	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
      </div>
      
	<section>
		<h1 style="text-align: center;">주요 정보</h1><br /><br />
		<article id="main">
			<div id="main_image">
				<form action="photoupload" method="post" enctype="mulipart/form-data">
					<label for="image" style="text-align:center;">대표 사진</label><br />
					<img id="main_img" src="<%=application.getContextPath()%>/resources/img/l10.jpg" height="400px" /><br />
					<input type="file" class="btn btn-outline-light" name="uphoto" style="width:250px;" />
					<input type="submit" class="btn btn-primary btn-sm" value="사진 저장"/>
				</form>

			</div>

			<div id="main_info">
				<a href="javascript:mainInfoDto()" class="btn btn-danger btn-sm" style="color:white">세부사항 수정</a>
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
				<form id="revise_form" name="revise_form" action="">
					
				</form>
			</div>

		</article>
		<hr />
		<article id="detail">
			<h1 style="text-align: center; margin-bottom: 30px;">세부 정보</h1>
			<div class="detailList">
				<div id="img01" class="list_img">
					<img src="/team/resources/img/L1.jpg" alt="image01" />
					<input type="file" class="btn btn-outline-light" accept="img/*" style="width:250px;" />
				</div>
				<div id="text01" class="list_txt">
					<label for="" style="background-color:"><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="15" cols="200"> 쿠시노 저상형 패밀리 침대(인조가죽) 신혼에서부터 자녀의 성장에 따라 다양하게 사용할 수 있는 쿠시노 시리즈입니다. 싱글과 퀸 침대로 구성되어 있으며, 공간이나 필요에 따라 가드나 액세서리를 추가해 우리 가족만의 패밀리 침대를 완성해보세요.
						</textarea>
				</div>
			</div>

			<div class="detailList">
				<div id="img02" class="list_img">
					<img src="/team/resources/img/iloomimg.png" height="600px" />
					<img src="/team/resources/img/iloomimg2.png" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" style="width:250px;" />

				</div>

				<div id="text02" class="list_txt">
					<label for=""><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="15" cols="200"> 안전을 위한 침대 가드	공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다. *추가구매 아이템은 관련상품 참조</textarea>

				</div>
			</div>
			
			<div class="detailList">
				<div id="img03" class="list_img">
					<img src="/team/resources/img/l4.jpg" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" style="width:250px;" />

				</div>
				<div id="text03" class="list_txt">
					<label for=""><b>텍스트 입력</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> 안전을 위한 침대 가드	공간과 필요에 맞게 침대 가드/풋보드를 추가로 설치해 안전한 패밀리베드로 사용할 수 있습니다. *추가구매 아이템은 관련상품 참조</textarea>

				</div>
			</div>
			
			<div class="detailList">
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
						style="width:250px;"/>
				</div>
			</div>
				<h5>첨부 이미지 리스트</h5>
				<script>
					$(()=>{
					    $.ajax({
					        url:"photolist",
					        success: (data)=>{
					            $("#photoList").html(data);
					        }
					    });
					})
				</script>
			<div id="photoList"></div>
			
			<hr style="color: grey" />

			<div id="btn">
				<a href="saveupdate" type="submit" class="btn btn-danger" onclick="validityTest()">저장</a>
				<a href="cancelupdate" class="btn btn-secondary">취소</a>
			</div>
		</article>
	</section>
	
	<div class="footerwrap">
      	<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </div>
</body>

</html>