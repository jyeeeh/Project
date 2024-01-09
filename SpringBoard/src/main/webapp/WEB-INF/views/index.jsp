<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>초기화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
		  rel="stylesheet"
		  integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
		  crossorigin="anonymous">
	<style>
		h2 {
			text-align: center;
		}
	</style>
</head>
<body>
	<h2> Spring Project</h2>
	<!-- 회원 관리 -->
	<a href="/member/regist">회원가입</a><br>
	<a href="/member/login">로그인</a><br>
	<a href="/member/">회원목록 조회</a><br>

	<!-- 게시판 -->
	<a href="/board/regist">글작성</a><br>
	<a href="/board/">글목록</a>

</body>
</html>
