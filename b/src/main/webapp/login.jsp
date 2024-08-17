<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/c9057320ee.js" crossorigin="anonymous"></script>
<script>
	function openmenu() {
		document.getElementById("menub").style.display = "none";
		document.getElementById("x").style.display = "block";
		document.getElementById("menu").style.display = "block";
	}
	function closemenu() {
		document.getElementById("menub").style.display = "block";
		document.getElementById("x").style.display = "none";
		document.getElementById("menu").style.display = "none";
	}	
</script>
<link rel="stylesheet" type="text/css" href="loginst.css?v=1.2">
</head>
<body>
<div>
	<header>
		<i class="fa-solid fa-bars fa-2xl" id="menub" style="color: #000000;" onclick="openmenu()"></i>
		<i class="fa-solid fa-xmark fa-2xl" id="x" onclick="closemenu()"></i>
	</header>
	<div class="menu" id="menu">
		<div class="menu_box">
			<ul>
				<li><a href="information.jsp">INFORMATION</a></li>
				<li><a href="login.jsp">LOG IN</a></li>
				<li><a href="signup.jsp">SIGN UP</a></li>
			</ul>
		</div>
	</div>
	<div class="login_pg">
		<img src="images/blue.png" class="blue" alt="blue">
		<div class="logbox">
			<form name="loginf" action="login_do.jsp" method="POST">
				<div>
					<label for="id">ID</label>
					<br>
					<input type="text" id="id" name="id">
				</div>
				<div>
					<label for="pw">PASSWORD</label>
					<br>
					<input type="password" id="pw" name="pw">
				</div>
				<div>
					<input type="submit" value="LOG IN">
					<br>
					<a href="signup.jsp" class="tosign">SIGN UP
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>