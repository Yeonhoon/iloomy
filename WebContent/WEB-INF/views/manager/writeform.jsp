<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
 *{
            margin: 0px;
            padding: 0px;
            text-decoration: none;
         }
         
         #right_bar a {
         	color: black;
         }
         #left_bar a {
         	color: black;
         }
         a:hover {
				text-decoration: none;
			}
		
         a:visited, a:link {
            color: black;
         }
         h1 > a:visited, a:link {
            color: red;
         }
         h1 {
            color: red;
         }
         header {

            display: flex;
            padding: 30px;
            justify-content: space-between;
            position: relative;
         }
         header >div {
            word-spacing: 10px;
            
         }

         #right_bar {
            flex:4;
         }
         #center {
            flex:1;
            text-align: center;
         }
         #left_bar {
            flex: 4;
            display: flex;
            flex-direction: column;
            align-items:flex-end;
         }
         footer {
            /* margin: 0 auto; */
            display: flex;
            /* justify-content: space-around; */
            justify-content: center;
            width: 100%;
         }
         footer > div {
            padding: 50px;
            text-align: center;
         }
         a:hover {
    	cursor: pointer;
    } 

li {
margin: 50px;
}
#buttonBox{
display:flex;
align-item:center;
}

</style>
</head>


	<body>
	 <header>
         <div id="right_bar">
         <!-- 2021/01/07 product Listë§í¬ -->
         <a href="/team/homepage/product_list.html"><i class="fas fa-bars"></i></a>
         
         </div>
         <div id="center">
         <h1><a href="/team/homepage/home2.html">iloom</a></h1>
         </div>
         <div id="left_bar" style="font-size: 0.8rem;">
            
            
         </div>
      </header>
		

<h1 style="text-align: center; color: black;">ìíë±ë¡ íì´ì§</h1>
<Br>
<Br>
<hr/>
<div style="padding-left: 350px;">
	<h3>ìí ì£¼ìì ë³´</h3>
	<Br>
	<Br>
			<form action="A">
	  <label for="uproduct">íëª:</label><br>
	  <input type="text" id="uproduct" name="uproduct"><br/>
	  <label for="uprice">ê°ê²©:</label><br>
	  <input type="text" id="uprice" name="uprice"><br/>
	  <label for="umodel"> ëª¨ë¸ëª:</label><br>
	  <input type="text" id="umodel" name="umodel"><br/>
	  <label for="ubrand"> ë¸ëë:</label><br>
	  <input type="text" id="ubrand" name="ubrand"><br/>
	  <label for="umnc"> ì ì¡°ì¬:</label><br>
	  <input type="text" id="umnc" name="umnc"><br/> 
	  <br/>
	  <label for="uorigin">ìì°ì§:</label>
	  <input type="radio" id="udomes" name="uorigin">êµ­ì°
	  <input type="radio" id="uimp" name="uorigin"/>ìì<br/>
	  <br/>
	  ì´ë¯¸ì§ ì²¨ë¶
	  <input type="file" id="main_image" name="main_image" value="ì´ë¯¸ì§ ì²¨ë¶"/><br />
	 	
	  <br/>
	  <br/>
	  <br/>
	  <h3>ë°°ì¡ì¤ì </h3>
	  <Br>
	  <Br>
	  
	  <label for="ufrm">íí:</label>
		  <input type="radio" id="ufx" name="ufrm"> ìì í
		  <input type="radio" id="uasb" name="ufrm"/>ì¡°ë¦½í<br/><br>
	  <label for="ucomment">ì í ì¤ëª:</label><br>
	  <textarea id="ucomment" name="ucomment" rows="5" cols="50"></textarea>
	  <br/>
	  <label for="ushp">ë°°ì¡ì¬ë¶:</label><br>
		  <input type="radio" id="ushp" name="ushp">ë°°ì¡
		  <input type="radio" id="uvst" name="ushp"/>ë°©ë¬¸ìë ¹<br>
	  <br/>
	   <label for="ushprp">ë°°ì¡ìì±:</label><br>
		  <input type="radio" id="unorshp" name="ushprp">ì¼ë°ë°°ì¡
		  <input type="radio" id="uchkshp" name="ushprp"/>ì£¼ë¬¸íì¸ í ì ì<br>
	  <br/>
	   <label for="upckshp">ë¬¶ìë°°ì¡:</label><br>
		  <input type="radio" id="uok" name="upckshp"/>ê°ë¥
		  <input type="radio" id="uno" name="upckshp"/>ë¶ê°<br>
	  <br/>
	   <label for="upossible">ë°°ì¡ê°ë¥ ì§ì­:</label><br>
		  <input type="checkbox" id="choices" name="uurbans">ìì¸,ì¸ì²,ê²½ê¸°,ì§ë°©
		  <input type="checkbox" id="choices" name="ujeju"/>ì ì£¼ë
		  <input type="checkbox" id="choices" name="uilnd"/>ì ì£¼ëì¸ ì¬ì§ì­
		  <input type="checkbox" id="choices" name="uentire">ì ì§ì­
	  <br>
	  <br/>
	  <label for="ushprice">ìíë³ ë°°ì¡ë¹:</label><br>
	  <select id="ushprice" name="ushprice">
	  <option value="conditional">ì¡°ê±´ë¶ ë¬´ë£</option>
	  <option value="less">1ì¡°ì ë¯¸ë§ 2ë§ì</option>
	  <option value="more">1ì¡°ì ì´ì ë¬´ë£</option>
	  </select>
	  <br>
	  <br/>
	   
	  
	  <label for="uexp">ë°°ì¡ ìì¸ìë´:</label><br>
	  <textarea id="uexp" name="uexp" rows="5" cols="50"></textarea>
	  <br/>
	  <Br>
	  
	<div style="margin-bottom: 50px;">
		<input type="submit" onclick="validityTest()" class="btn btn-danger btn-sm" value="ìíë±ë¡ ìë£">
		<button onclick="location.href='product_list'">ì·¨ì</button>
	</div>
	
	<script>
		const validityTest = () => {
			console.log(event.target);
			event.preventDefault();
			const product = $("#uproduct");
			const price = $("#uprice");
			const model = $("#umodel");
			const brand = $("#ubrand");
			const mnc = $("#umnc");

			if(product.val()==="" | price.val()==="" | model.val()==="" | 
					brand.val()==="" | mnc.val()===""){
				const uidError = $("#uidError");
				uidError.html("íììë ¥").css("color","red");
				console.log("ìë ¥ëì§ ììì.");
				return;
				}
			 else{
				//ìë²ë¡ ë°ì´í° ì ì¡
				const reviseForm = $("#reviseForm");
				//const reviseForm = document.reviseForm; //formì name ì ì¥ëì´ ìì¼ë©´ ë°ë¡ ê°ì ¸ì¬ ì ìì.
				reviseForm.submit();
				document.location.href="product_list.html";
			 
				}
		}
		</script>
	
	  
	
</form>
</div>
<footer style="background-color: #f1f3f5;">
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
               <a href="#" target="_blank">
               <img src="/team/resources/img/a.JPG" width= "100px"/>
               </a>
               <a href="#" target="_blank">
               <img src="/team/resources/img/b.JPG" width= "100px"/>
               </a>
            <p style="text-align: left;">1577-5670</p>
            <p style="text-align: left;">íì¼ 09:30~17:30, ì íë¬¸ì, ë§¤ì¥ìë´, AS, ë¶í´ì¤ì¹</p>
         </div>
      </footer>
	</body>
	
	
	</html>