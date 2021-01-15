<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>iloom: ìì </title>
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
			<a href="#">ì¹¨ì¤</a>
			<a href="#">ê±°ì¤</a>
			<a href="#">ì£¼ë°©</a>
			<a href="#">í¤ì¦ë£¸</a>
			<a href="#">íìë°©</a>
			<a href="#">ìì¬</a>
			<a href="#">í«</a>
			<a href="#">ìë¦¬ì¦</a>
			<a href="#">ìì¸ë </a>
		</div>
		<div id="center">
			<h1 style="color: red;"><a href="/team/homepage/home2.html">iloom</a></h1>
		</div>
		<div id="left_bar" style="font-size: 0.8rem;">
			<div>
				<a href="#">Login</a>
				<a href="#">íìê°ì</a>
				<a href="#">ì£¼ë¬¸</a>
				<a href="#">ë°°ì¡</a>
				<a href="#">ì´ë²¤í¸</a>
				<a href="#">ë´ì¤</a>
				<a href="#">ê³ ê°ì¼í°</a>
				<a href="#">ë§¤ì¥ìë´</a>
				<a href="#">íì¬ìê°</a>
			</div>
			<div id="left" style="margin-top: 15px;">
				<p style="display: inline-block; width: 150px; border: 1px solid red;">
					<a href="#">ê²ì</a>
				</p>
				<a href="#"><i class="fas fa-search"></i></a>
				<a href="/team/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
			</div>
		</div>
	</header>
	<section>
		<h1 style="text-align: center;">ì£¼ì ì ë³´</h1><br /><br />
		<article id="main">
			<div id="main_image">
				<label for="image" style="text-align:center;">ëí ì¬ì§</label><br />
				<img id="main_img" src="/team/resources/img/l10.jpg" height="400px" /><br />
				<div id="new_img"></div>
				<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg(event);"
					style="width:250px;" />

			</div>

			<div id="main_info">
				<form id="revise_form" name="revise_form" action="https://www.google.com">
					<ul id="reviseList">
						<li>
							<label for="brand"><b>ë¸ëëëª</b></label><br>
							<input type="text" id="brand" name="brand" style="width: 260px;" value="ì¿ ìë¸" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_name"><b>ì íëª</b></label><br />
							<input type="text" id="product_name" name="product_name" style="width: 250px;"
								value="ì ìí í¨ë°ë¦¬ì¹¨ë(ì¸ì¡°ê°ì£½)" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_price"><b>ê°ê²©(ì)</b></label><br />
							<input type="number" id="product_price" name="product_price" style="width: 250px;"
								value="1009000" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="delivery_date"><b>ë°°ì¡ê¸°ê°</b></label><br />
							<input type="text" id="delivery_date" name="delivery_date" style="width: 250px;"
								value=" ì½ 10ì¼" />
							<div id="uidError" class="error"></div><br />
						</li>

						<li>
							<label for="delivery_fee"><b>ë°°ì¡ë¹</b></label><br />
							<input type="text" id="delivery_fee" name="delivery_fee" style="width: 250px;"
								value="ë¬´ë£ë°°ì¡" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="delivery_method"><b>ë°°ì¡ë°©ë²</b></label><br />
							<input type="text" id="delivery_method" name="delivery_method" style="width: 250px;"
								value="ì¤ì¹ë°°ì¡" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_code"><b>ì íì½ë</b></label><br />
							<input type="text" id="product_code" name="product_code" style="width: 250px;"
								value="HB722501" />
							<div id="uidError" class="error"></div><br />
						</li>
						<li>
							<label for="product_color"><b>[íì]ì íìì</b></label><br />
							<input type="text" id="typeColor" name="product_color"
								style="width: 250px; display:inline-block; " />
							<input type="button" class="addBtn" onclick="addColor()" value="ì¶ê°" /><br />
							<div id="addColor" style=" margin-top:30px;">
								<select name="color_select" id="color_select" style="width:350px;">
									<option id="ë² ì´ì§" value="">ë² ì´ì§</option>
									<option id="ê·¸ë ì´" value="">ê·¸ë ì´</option>
								</select>
								<br />
								<!-- <input type="button" onclick="removeColor()" value="ì­ì " /> -->
							</div>
							<div id="uidError" class="error"></div> <br />
						</li>
						<li>
							<label for="product_option"><b>[ì í]ì íì¬ì</b></label><br />
							<input type="text" id="typeOption" name="product_option"
								style="width: 250px; display: inline-block;" />
							<input type="button" class="addBtn" onclick="addOption()" value="ì¶ê°" /><br />
							<div id="addColor" style=" margin-top:30px;">
								<select name="productOption" id="productOption" style="width: 350px;">
									<option value="">ì¿ ìë¸ ì¹¨ëê°ë 1000í­</option>
									<option value="">ì¿ ìë¸ ì¹¨ëíë³´ë 1000í­</option>
								</select>
							</div>
						</li>
					</ul>
				</form>
			</div>

		</article>
		<hr />
		<article id="detail">
			<h1 style="text-align: center; margin-bottom: 30px;">ì¸ë¶ ì ë³´</h1>
			<div id="list">
				<div id="img01" class="list_img">
					<img src="/team/resources/img/L1.jpg" alt="image01" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg1(event);"
						style="width:250px;" />
				</div>
				<div id="text01" class="list_txt">
					<label for="" style="background-color:"><b>íì¤í¸ ìë ¥</b></label><br />
					<textarea class="myText" rows="20" cols="75"> ì¿ ìë¸ ì ìí í¨ë°ë¦¬ ì¹¨ë(ì¸ì¡°ê°ì£½) ì í¼ììë¶í° ìëì ì±ì¥ì ë°ë¼ ë¤ìíê² ì¬ì©í  ì ìë ì¿ ìë¸ ìë¦¬ì¦ìëë¤. ì±ê¸ê³¼ í¸ ì¹¨ëë¡ êµ¬ì±ëì´ ìì¼ë©°, ê³µê°ì´ë íìì ë°ë¼ ê°ëë ì¡ì¸ìë¦¬ë¥¼ ì¶ê°í´ ì°ë¦¬ ê°ì¡±ë§ì í¨ë°ë¦¬ ì¹¨ëë¥¼ ìì±í´ë³´ì¸ì.
						</textarea>
				</div>


				<div id="img02" class="list_img">
					<img src="/team/resources/img/iloomimg.png" height="600px" />
					<img src="/team/resources/img/iloomimg2.png" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg2(event);"
						style="width:250px;" />

				</div>

				<div id="text02" class="list_txt">
					<label for=""><b>íì¤í¸ ìë ¥</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> ìì ì ìí ì¹¨ë ê°ë	ê³µê°ê³¼ íìì ë§ê² ì¹¨ë ê°ë/íë³´ëë¥¼ ì¶ê°ë¡ ì¤ì¹í´ ìì í í¨ë°ë¦¬ë² ëë¡ ì¬ì©í  ì ììµëë¤. *ì¶ê°êµ¬ë§¤ ìì´íì ê´ë ¨ìí ì°¸ì¡°</textarea>

				</div>

				<div id="img03" class="list_img">
					<img src="/team/resources/img/l4.jpg" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg3(event);"
						style="width:250px;" />

				</div>
				<div id="text03" class="list_txt">
					<label for=""><b>íì¤í¸ ìë ¥</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> ìì ì ìí ì¹¨ë ê°ë	ê³µê°ê³¼ íìì ë§ê² ì¹¨ë ê°ë/íë³´ëë¥¼ ì¶ê°ë¡ ì¤ì¹í´ ìì í í¨ë°ë¦¬ë² ëë¡ ì¬ì©í  ì ììµëë¤. *ì¶ê°êµ¬ë§¤ ìì´íì ê´ë ¨ìí ì°¸ì¡°</textarea>

				</div>

				<div id="img04" class="list_img">
					<img src="/team/resources/img/l5.jpg" height="600px" />
					<input type="file" class="btn btn-outline-light" accept="img/*" onchange="setImg4(event);"
						style="width:250px;" />

				</div>
				<div id="text04" class="list_txt">
					<label for=""><b>íì¤í¸ ìë ¥</b></label><br />
					<textarea class="myText" rows="20"
						cols="75"> ê°ë ì¡ì¸ìë¦¬ ê°ë ì¡ì¸ìë¦¬ë¥¼ ê±°ì¹í´ ìì ìíì ìë©í  ì ììµëë¤.*ì¶ê°êµ¬ë§¤ ìì´íì ê´ë ¨ìí ì°¸ì¡°</textarea>
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
				<input type="submit" onclick="validityTest()" id="save" value="ì ì¥" style="height:50px">
				<button onclick="location.href='product_list.html'" id="cancel" style="height:50px">ì·¨ì</button>
			</div>
		</article>
	</section>
	<footer id="footer">
		<div style="color: #adb5bd; font-size: 2.5rem; flex: 4;">
			<b>iloom</b>
		</div>
		<div style="font-size: 0.8rem; flex: 2;">
			<p>ABOUT</p>
			<p>íì¬ìê°</p>
			<p>ë§¤ì¥ìë´</p>
			<p>ì¸ì¬ì±ì©</p>
		</div>
		<div style="font-size: 0.8rem; flex: 2;">
			<p>SUPPORT</p>
			<p>ê³ ê°ìí°</p>
			<p>ëë¦¬ì  ê°ì¤ìë´</p>
		</div>
		<div style="font-size: 0.8rem; flex: 2;">
			<p>INFO</p>
			<p>ì´ì©ì½ê´</p>
			<p><b>ê°ì¸ì ë³´ ì²ë¦¬ë°©ì¹¨</b></p>
		</div>
		<div style="font-size: 0.8rem; flex: 2;">
			<p style="text-align: left;">ê³ ê°ì¼í°</p>
			<a href="#">
				<img src="/team/resources/img/a.JPG" width="100px" />
			</a>
			<a href="#">
				<img src="/team/resources/img/b.JPG" width="100px" />
			</a>
			<p style="text-align: left;">1577-5670</p>
			<p style="text-align: left;">íì¼ 09:30~17:30, ì íë¬¸ì, ë§¤ì¥ìë´, AS, ë¶í´ì¤ì¹</p>
		</div>
	</footer>
</body>

</html>