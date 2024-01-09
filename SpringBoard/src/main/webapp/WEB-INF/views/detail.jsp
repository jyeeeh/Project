<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 정보 상세조회</title>
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
<h2> 회원 정보 상세조회 </h2>
<div class="container mt-5">
    <table class="table">
        <tr>
            <th scope="col">이메일</th>
            <td>${member.memberEmail}</td>
        </tr>
        <tr>
            <th scope="col">비밀번호</th>
            <td>${member.memberPassword}</td>
        </tr>
        <tr>
            <th scope="col">이름</th>
            <td>${member.memberName}</td>
        </tr>
        <tr>
            <th scope="col">나이</th>
            <td>${member.memberAge}</td>
        </tr>
        <tr>
            <th scope="col">핸드폰번호</th>
            <td>${member.memberMobile}</td>
        </tr>
    </table>
</div>
</body>
</html>