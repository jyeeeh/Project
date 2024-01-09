<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
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
<h2> 로그인 </h2>
<div class="container mt-5">
    <form action="/member/login" method="post" class="mb-3">
        <div class="mb-3">
            <input type="text" class="form-control" name="memberEmail" placeholder="이메일">
        </div>
        <div class="mb-3">
            <input type="password" class="form-control" name="memberPassword" placeholder="비밀번호">
        </div>
        <button type="submit" class="btn btn-primary">로그인</button>
    </form>
</div>
</body>
</html>
