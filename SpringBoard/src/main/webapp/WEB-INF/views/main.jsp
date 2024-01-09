<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
</head>
<body>
<h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
    <button onclick="update()">내정보 수정</button>
    <button onclick="logout()">로그아웃</button><br>

    <!-- 게시판 -->
    <a href="/board/regist">글작성</a><br>
    <a href="/board">글목록</a>

</body>

<script>
    const update = () => {
        location.href = "/member/update";
    }
    const logout = () => {
        location.href = "/member/logout";
    }
</script>
</html>
