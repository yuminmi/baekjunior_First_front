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


	<!-- bookmark_star에 대한 SCRIPT -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
		    const bookmarkStars = document.querySelectorAll('.bookmark_star');
	
		    bookmarkStars.forEach(function(star) {
		        star.addEventListener('click', function() {
		            const currentSrc = this.getAttribute('src');
	
		            if (currentSrc === 'img/star_on.png') {
		                this.setAttribute('src', 'img/star_off.png');
		            } else {
		                this.setAttribute('src', 'img/star_on.png');
		            }
		        });
		    });
		});
	</script>


	<div style="margin-top: 20px;">
		<div style="width: 80%; margin: 0 auto;">
			<div>
				<div>
					<div
						style="font-size: 30px; font-weight: bold; margin-bottom: 40px;">Edit
						Mode</div>
					<div
						style="display: inline; width: 80%; font-size: 25px; font-weight: bold;">
						#<span>15654</span> : <span>N과 M (5)</span> <span><img
							class="bookmark_star" src="img/star_on.png" style="width: 18px;"></span>
					</div>
					<div style="float: right; font-size: 15px; padding: 10px;">
						Submit Date : <span>2024-07-16</span>
					</div>
				</div>

				<div
					style="font-weight: bold; font-size: 20px; margin-top: 15px; margin-left: 30px;">
					<div style="display: inline; width: 80%;">
						<span><img src="img/dot1.png" style="width: 15px;"></span> <span
							style="margin-right: 60px;">DFS</span> Friends who solved : <span
							style="background: lightgray; font-size: 15px; padding: 3px 20px; border-radius: 20px;"><a
							href="#">Dodam</a></span> <span
							style="background: lightgray; font-size: 15px; padding: 3px 20px; border-radius: 20px;"><a
							href="#">Dam</a></span>
					</div>
					<div style="float: right; font-size: 15px; padding: 10px;">
						<a href="#" style="color: black;">Delete</a>
					</div>
				</div>
			</div>

			<script>
			document.addEventListener('DOMContentLoaded', function() {
			    const addButton = document.getElementById('add_btn');
			    const container = document.getElementById('container');

			    addButton.addEventListener('click', function(event) {
			        event.preventDefault(); // 링크 기본 동작 방지
			        
			        // 새로운 div 요소 생성
			        const newDiv = document.createElement('div');
			        newDiv.className = 'container_div'; // CSS 클래스 추가
			        newDiv.style.padding = '5px';

			        // div 내부 HTML 설정
			        newDiv.innerHTML = `
			            <span><img src="img/star_red.png" style="width:13px;"></span>
			            <input type="text" style="width:90%; background-color:transparent; padding:5px; font-size:15px;" value="">
			            <a class="delete_btn" href="#">X</a>
			        `;

			        // X 버튼 클릭 이벤트 리스너 추가
			        newDiv.querySelector('.delete_btn').addEventListener('click', function(event) {
			            event.preventDefault(); // 링크 기본 동작 방지
			            container.removeChild(newDiv); // div 제거
			        });

			        // 컨테이너에 새로운 div 추가
			        container.appendChild(newDiv);
			    });

			    // 기존의 X 버튼 클릭 이벤트 리스너 추가
			    container.addEventListener('click', function(event) {
			        if (event.target.classList.contains('delete_btn')) {
			            event.preventDefault(); // 링크 기본 동작 방지
			            const divToRemove = event.target.closest('.container_div'); // 클릭한 X 버튼이 포함된 div 찾기
			            container.removeChild(divToRemove); // div 제거
			        }
			    });
			});
			</script>

			<div class="sub_note"
				style="font-weight: bold; font-size: 20px; border: 3px solid black; background: #5F99EB; padding: 30px; margin-top: 50px; vertical-align: middle;">
				<div id="container">
					<div class="container_div" style="padding: 5px;">
						<span><img src="img/star_red.png" style="width: 13px;"></span>
						<input type="text"
							style="width: 90%; background-color: transparent; padding: 5px; font-size: 15px;"
							value="재귀함수를 통해 문제를 풀이한다."> <a class="delete_btn"
							href="#">X</a>
					</div>
					<div class="container_div" style="padding: 5px;">
						<span><img src="img/star_red.png" style="width: 13px;"></span>
						<input type="text"
							style="width: 90%; background-color: transparent; padding: 5px; font-size: 15px;"
							value="그리고 안러 ㅣㄴㅇ러 ㅣ나얼 ㅣㅓ리아ㅓ라ㅣㅇ  ㅣ아러ㅣ얼"> <a
							class="delete_btn" href="#">X</a>
					</div>
				</div>

				<div style="padding: 5px; margin-bottom: 20px;">
					<a id="add_btn" href="#">+</a>
				</div>
			</div>

			<div
				style="display: grid; margin-top: 50px; grid-template-columns: 5fr 2fr; column-gap: 30px;">
				<div
					style="column-gap: 10px; border: 3px solid black; background: white; padding: 10px;">
					<div id="code-editor"
						style="display: grid; grid-template-columns: 1fr 17fr; border: none;">
						<textarea class="notes" id="lineNumbers" rows="10" wrap="off"
							style="font-size: 15px; overflow: auto; text-align: center; padding-bottom: 0px;"
							readonly></textarea>
						<textarea class="notes" id="cppCode" rows="10"
							placeholder="Enter your C++ code here..." wrap="off"
							style="font-size: 15px; overflow-x: auto; padding-bottom: 60px;">
// https://www.acmicpc.net/problem/5525
// 5525번
// IOIOI
// Silver 1
// 2024-08-03

#include <iostream>
#include <string>

using namespace std;

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int n, m;
    cin >> n >> m;

    string s;
    cin >> s;

    int ans = 0;
    for (int i = 0; i < m; i++) {
        int k = 0;
        if (s[i] == 'O') { continue; }

        else {
            while (s[i + 1] == 'O' && s[i + 2] == 'I') {
                k++;
                if (k == n) {
                    k--;
                    ans++;
                }
                i += 2;
            }
            k = 0;
        }
    }
    cout << ans;
}
                </textarea>
					</div>
				</div>


				<div
					style="column-gap: 10px; border: 3px solid black; background: white; padding: 10px;">
					<div id="code-editor" style="border: none;">
						<textarea class="notes" id="note_detail" rows="10"
							placeholder="Enter your C++ code here..." wrap="off"
							style="font-size: 15px; overflow-x: auto; padding-bottom: 60px;"></textarea>
					</div>
				</div>
			</div>


			<script>
        const textarea = document.getElementById('cppCode');
        const lineNumbers = document.getElementById('lineNumbers');
        const noteDetail = document.getElementById('note_detail');

        function updateLineNumbers() {
            const numberOfLines = textarea.value.split('\n').length;
            let lineNumberString = '';
            let noteDetailString = '';

            for (let i = 1; i <= numberOfLines; i++) {
                lineNumberString += i + '\n';
                noteDetailString += "_" + '\n';
            }

            lineNumbers.value = lineNumberString;
            noteDetail.value = noteDetailString;
        }

        function adjustHeight(element) {
            element.style.height = 'auto'; // Reset height to auto to measure scrollHeight
            element.style.height = element.scrollHeight + 'px'; // Adjust height to fit content
        }

        // Function to sync heights between textareas
        function syncHeights() {
            const maxScrollHeight = Math.max(textarea.scrollHeight, lineNumbers.scrollHeight, noteDetail.scrollHeight);
            textarea.style.height = maxScrollHeight + 'px';
            lineNumbers.style.height = maxScrollHeight + 'px';
            noteDetail.style.height = maxScrollHeight + 'px';
        }

        // 초기 라인 번호 및 높이 업데이트
        updateLineNumbers();
        syncHeights();

        // 사용자가 텍스트를 입력하거나 줄을 변경할 때 라인 번호 및 높이 업데이트
        textarea.addEventListener('input', () => {
            updateLineNumbers();
            syncHeights();
        });

        // Scroll the line numbers to match the code textarea
        textarea.addEventListener('scroll', () => {
            lineNumbers.scrollTop = textarea.scrollTop;
        });

        function submitCppCode() {
            const code = textarea.value;
            console.log("Submitted C++ Code:", code);

            // 서버에 코드를 전송하거나 WebAssembly로 처리하는 로직을 여기에 추가합니다.
        }
    	</script>

			<div style="float: right; margin-top: 50px">
				<button
					style="font-size: 15px; font-weight: bold; background: white; border: 3px solid black; padding: 5px 20px;">Save</button>
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
