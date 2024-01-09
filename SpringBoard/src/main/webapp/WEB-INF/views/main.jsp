<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
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
<body class="bg-light">
<h2> Main </h2>
<div class="container mt-5">
    <p class="text-center">${sessionScope.loginEmail} 님 환영합니다.</p>
    <button onclick="update()" class="btn btn-primary btn-sm">내정보 수정</button>
    <button onclick="logout()" class="btn btn-secondary btn-sm">로그아웃</button><br>
</div>

<script>
    const update = () => {
        location.href = "/member/update";
    }

    const logout = () => {
        location.href = "/member/logout";
    }
</script>
</body>
</html>
