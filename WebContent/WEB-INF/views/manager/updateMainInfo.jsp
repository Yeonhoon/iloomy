<%@ page  contentType="text/html; charset=UTF-8"%>

	<div id="main_image" style="margin-right:100px;">
		<label for="image" id="mainPhotoLabel">대표 사진</label><br/>
		<form action="photoupload" method="post" enctype="mulipart/form-data">
			<img id="main_img" src="<%=application.getContextPath()%>/resources/img/l10.jpg" height="400px" /><br />
			<input type="file" class="btn btn-outline-light" name="uphoto" style="width:250px;" />
			<input type="submit" class="btn btn-primary btn-sm" value="사진 저장"/>
		</form>
	</div>

	<ul id="reviseList" style="margin-left:100px;">
		<li>
			<label for="num"><b>게시물번호</b></label><br>
			<input type="number" id="num" name="num" style="width: 260px;" value="${dto.no}"/>
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_name"><b>제품명</b></label><br />
			<input type="text" id="product_name" name="product_name" style="width: 250px;"
				value="${dto.pName}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="brand"><b>브랜드명</b></label><br>
			<input type="text" id="brand" name="brand" style="width: 260px;" value="${dto.pCompany}"/>
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_price"><b>가격(원)</b></label><br />
			<input type="number" id="product_price" name="product_price" style="width: 250px;"
				value="${dto.pPrice}" />
			<div id="uidError" class="error"></div><br />
		</li>
<%-- 		<li>
			<label for="delivery_date"><b>배송기간</b></label><br />
			<input type="text" id="delivery_date" name="delivery_date" style="width: 250px;"
				value="${dto.deliveryDate}" />
			<div id="uidError" class="error"></div><br />
		</li>
	
		<li>
			<label for="delivery_fee"><b>배송비</b></label><br />
			<input type="text" id="delivery_fee" name="delivery_fee" style="width: 250px;"
				value="${dto.deliveryFee}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="delivery_method"><b>배송방법</b></label><br />
			<input type="text" id="delivery_method" name="delivery_method" style="width: 250px;"
				value="${dto.deliveryMethod}" />
			<div id="uidError" class="error"></div><br />
		</li> --%>
		<li>
			<label for="product_code"><b>제품코드</b></label><br />
			<input type="text" id="product_code" name="product_code" style="width: 250px;"
				value="${dto.pContext}" />
			<div id="uidError" class="error"></div><br />
		</li>
		<li>
			<label for="product_color"><b>[필수]제품색상</b></label><br />
			<input type="text" id="typeColor" name="product_color"
				style="width: 250px; display:inline-block; " value="${dto.pColor}"/>
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
				style="width: 250px; display: inline-block;"  value="${dto.pOption}"/>
			<input type="button" class="addBtn" onclick="addOption()" value="추가" /><br />
			<div id="addColor" style=" margin-top:30px;">
				<select name="productOption" id="productOption" style="width: 350px;">
					<option value="">쿠시노 침대가드 1000폭</option>
					<option value="">쿠시노 침대풋보드 1000폭</option>
				</select>
			</div>
		</li>
	</ul>
