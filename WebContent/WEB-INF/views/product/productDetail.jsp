<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>list</title>
		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="/team/resources/css/main.css">
		<link rel="stylesheet" href="/team/resources/css/list.css">
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
			<a href="#">ìì¬</a> .
			<a href="#">í«</a> .
			<a href="#">ìë¦¬ì¦</a> .
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
				<div id="left">
					<p style="display: inline-block; width: 150px; border: 1px solid red;">
					<a href="#">ê²ì</a>
					</p>
					<a href="#" ><i class="fas fa-search"></i></a>
					<a href="/team/homepage/package.html"><i class="fas fa-shopping-bag"></i></a>
				</div>
			</div>
		</header>
		<section>
			<nav>
				<img src="/team/resources/img/l10.jpg" height="650px"/>
				<div style="display: inline-block; margin-left: 50px; margin-bottom: 20px;">
					<p id="list_name">ì¿ ìë¸</p>
					<p id="list_detail"><b>ì ìí í¨ë°ë¦¬ì¹¨ë(ì¸ì¡°ê°ì£½)</b></p>
					<p id="list_price">1,009,000ì</p>
					<hr/>
					<p style="font-size: 0.8rem"><b>ë°°ì¡ê¸°ê°</b> ì½ 10ì¼ <b>ë°°ì¡ë¹</b> ë¬´ë£ë°°ì¡ 
					<b>ë°°ì¡ë°©ë²</b> ì¤ì¹ë°°ì¡ <b>ì íì½ë</b> HB722501</p>
					<br/>
					<div id="option">
						<select name="colorOption" id="colorOption">
							<option value="">[íì]ììì ì íí´ì£¼ì¸ì</option>
							<option value="">ë¸ë¼ì´</option>
							<option value="">ë² ì´ì§</option>
							<option value="">ê·¸ë ì´</option>
						</select>
						<select name="productOption" id="productOption">
							<option value="">[ì í] ì íì¬ì</option>
							<option value="">ì¿ ìë¸ ì¹¨ëê°ë 1000í­</option>
							<option value="">ì¿ ìë¸ ì¹¨ëíë³´ë 1000í­</option>
						</select>
					</div>
					<hr/>
					<p style="display: inline;"><b>ì´ êµ¬ë§¤ê°</b></p>
					<p style="display: inline; color: red; padding-left: 300px;"><b>0 ì</b></p>
					<br/>
					<button id="pay"> ê²°ì íê¸° </button>
					<button id="bag" onclick="location.href='package.html'"> ì¥ë°êµ¬ë </button>
					<br/>
					<a href="#" target="_black"><img src="/team/resources/img/l11.jpg" width="400px" style="margin-top: 20px; margin-bottom: 20px;"/></a><br/>
					<a href="#" target="_black"><img src="/team/resources/img/l12.jpg" width="400px" style="margin-bottom: 20px;"/></a><br/>
					<a href="#" target="_black"><img src="/team/resources/img/l13.jpg" width="400px" style="margin-bottom: 20px;"/></a><br/>
				</div>
			</nav>
			<article>
				<table>
					<tr style="color: #adb5bd; text-align: center;">
						<td style="color: red;">ìì¸ì ë³´</td>
						<td>ìµì</td>
						<td>ì¸íë¦¬ì´ í</td>
						<td>ìíí</td>
						<td>Q&A</td>
					</tr>
				</table>
				<div id="list" >
					
				</div>
				<div style="text-align: center; padding: 30px;">
					<p style="font-size: 2rem;">ì¿ ìë¸ ì ìí í¨ë°ë¦¬ ì¹¨ë(ì¸ì¡°ê°ì£½)</p>
					<p>ì í¼ììë¶í° ìëì ì±ì¥ì ë°ë¼ ë¤ìíê² ì¬ì©í  ì ìë ì¿ ìë¸ ìë¦¬ì¦ìëë¤.</p>
					<p>ì±ê¸ê³¼ í¸ ì¹¨ëë¡ êµ¬ì±ëì´ ìì¼ë©°, ê³µê°ì´ë íìì ë°ë¼ ê°ëë ì¡ì¸ìë¦¬ë¥¼ ì¶ê°í´ ì°ë¦¬ ê°ì¡±ë§ì í¨ë°ë¦¬ ì¹¨ëë¥¼ ìì±í´ë³´ì¸ì.</p>
				</div>
				<div id="list2">
					<img src="/team/resources/img/l3.jpg" height="600px"/>
					<img src="/team/resources/img/l2.jpg"  height="600px"/>
					<img src="/team/resources/img/l4.jpg"  height="600px"/>
					<p><b>ìì ì ìí ì¹¨ë ê°ë</b></p>
					<p>ê³µê°ê³¼ íìì ë§ê² ì¹¨ë ê°ë/íë³´ëë¥¼ ì¶ê°ë¡ ì¤ì¹í´ ìì í í¨ë°ë¦¬ë² ëë¡ ì¬ì©í  ì ììµëë¤.</p>
					<p style="font-size: 0.6rem; color: red;">*ì¶ê°êµ¬ë§¤ ìì´íì ê´ë ¨ìí ì°¸ì¡°</p>
					<img src="/team/resources/img/l5.jpg"  height="600px"/>
					<p><b>ê°ë ì¡ì¸ìë¦¬</b></p>
					<p>ê°ë ì¡ì¸ìë¦¬ë¥¼ ê±°ì¹í´ ìì ìíì ìë©í  ì ììµëë¤.</p>
					<p style="font-size: 0.6rem; color: red;">*ì¶ê°êµ¬ë§¤ ìì´íì ê´ë ¨ìí ì°¸ì¡°</p>
				</div>
				<hr style="color: grey"/>
				<div id="list2">
					<h1>Color</h1>
					<img src="/team/resources/img/l7.jpg" height="300px"/>
					<img src="/team/resources/img/l6.jpg"  height="300px"/>
					
				</div>
			</article>
		</section>
		<footer>
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
					<img src="/team/resources/img/a.JPG" width= "100px"/>
					</a>
					<a href="#">
					<img src="/team/resources/img/b.JPG" width= "100px"/>
					</a>
				<p style="text-align: left;">1577-5670</p>
				<p style="text-align: left;">íì¼ 09:30~17:30, ì íë¬¸ì, ë§¤ì¥ìë´, AS, ë¶í´ì¤ì¹</p>
			</div>
		</footer>

	</body>
</html>