<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create_note</title>
<link rel="stylesheet" href="Baekjunior_css.css">
</head>

<body>
	<header>
		<a href="0_Baekjunior.jsp" class="logo">Baekjunior</a>
		<div id="main_menu">
			<ul>
				<li class="main_menu_Storage"><a href="#">Storage</a>
					<ul>
						<li><a href="#">storage1</a></li>
						<li><a href="#">storage2</a></li>
						<li><a href="#">storage3</a></li>
						<li><a href="#">storage4</a></li>
					</ul></li>
				<li class="main_menu_Friend"><a href="#">Friend</a>
					<ul>
						<li><a href="#">friend1</a></li>
						<li><a href="#">friend2</a></li>
						<li><a href="#">friend3</a></li>
					</ul></li>
				<li class="main_menu_Group"><a href="#">Group</a>
					<ul>
						<li><a href="#">group1</a></li>
						<li><a href="#">group2</a></li>
					</ul></li>
				<li class="main_menu_MyPage"><a href="#">MyPage</a>
					<ul>
						<li><a href="#">mypage1</a></li>
						<li><a href="#">mypage2</a></li>
						<li><a href="#">mypage3</a></li>
						<li><a href="#">mypage4</a></li>
					</ul></li>
				<li class="main_menu_Setting"><a href="#">Setting</a>
					<ul>
						<li><a href="#">setting1</a></li>
						<li><a href="#">setting2</a></li>
						<li><a href="#">setting3</a></li>
					</ul></li>
			</ul>
		</div>
		<ul>
			<li><img src="img/user.png" style="width: 30px;"></li>
			<li><a href="#">User</a></li>
		</ul>
	</header>

	<script type="text/javascript">
		window.addEventListener("scroll", function(){
			var header= document.querySelector("header");
			header.classList.toggle("sticky", window.scrollY > 0);
		});
	</script>

	<section class="banner">
		<a href="#" class="logo"></a>
	</section>

	<div style="display: grid; grid-template-columns: 1fr 1fr;">
		<div style="margin-top: 20px;">
			<div style="width: 80%; margin: 0 auto;margin-right:50px;">
				<div class="algorithm_name" style="display: flex;align-items: center;">
					<img src="img/dot1.png" style="width: 20px;height:20px;">
					<h1 style="display: inline;font-size: 40px;margin-left: 15px;">BFS</h1>
				</div>
				<div class="memo" style="margin-top:20px;">
					<div class="memo_box" contenteditable="true" id="editablememo" style="min-height:600px;padding:60px;background:white;border-radius:10px;border:3px solid black;">
						
					</div>
					<!-- editablememo 내용 수정할때마다 받아오기 -->
					<script>
						const editablememo = document.getElementById('editablememo');
						
						// 텍스트가 수정될 때마다 발생하는 이벤트 리스너 추가
						editablememo.addEventListener('input', function() {
							//변경된 텍스트 받아오기
							const editedtext = this.innerText;
							console.log('변경된 텍스트: ', editedtext);
						})
						editableDiv.addEventListener('blur', function() {
					    	console.log('포커스를 잃었습니다.');
					    	// 사용자가 메모box를 벗어나면 db에 저장
					    	location.href="algorithm_note_modify.jsp"; //이렇게 하는거 맞나...??
					  	});
						
					</script>
				</div>
			</div>
		</div>		
		<div style="float: right;margin-top:70px;">
			<div id="list_group" style="padding-left:0px;">
				<ul class="list">
					<li class="item">
						<div class="content_number">
							<a href="note_detail.jsp">1# 2557</a>
						</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="splitscreen3.jsp">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">
							<a href="note_detail.jsp">Hello World</a>
						</div>
					</li>
					<li class="item">
						<div class="content_number">2# 1000</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">A+B</div>
					</li>
					<li class="item">
						<div class="content_number">6# 10831</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">오늘은 코딩하고 싶은 날</div>
					</li>
					<li class="item">
						<div class="content_number">7# 1541</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">잃어버린 괄호</div>
					</li>
					<li class="item">
						<div class="content_number">8# 1011</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">Fly me to the Alpha Centauri</div>
					</li>
					<li class="item">
						<div class="content_number">9# 1022</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">소용돌이 예쁘게 출력하기</div>
					</li>
					<li class="item">
						<div class="content_number"># 15803</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">PLAYERJINAH’S BOTTLEGROUNDS</div>
					</li>
					<li class="item">
						<div class="content_number"># 10831</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">오늘은 코딩하고 싶은 날</div>
					</li>
					<li class="item">
						<div class="content_number"># 1541</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">잃어버린 괄호</div>
					</li>
					<li class="item">
						<div class="content_number"># 1011</div>
						<div class="content_set">
							<img class="content_set_a" src="img/pin.png">
							<button class="content_set_b">
								<img src="img/....png">
							</button>
							<ul>
								<li><a href="#">Unpin / Pin to top</a></li>
								<li><a href="#">Split screen</a></li>
								<li><a href="#">Setting</a></li>
								<li><a href="#">Delete</a></li>
							</ul>
						</div>
						<div class="content_title">Fly me to the Alpha Centauri</div>
					</li>
				</ul>
			</div>
		</div>
	</div>



	<br>
	<br>
	<br>
	<br>

	<footer></footer>

</body>
</html>
