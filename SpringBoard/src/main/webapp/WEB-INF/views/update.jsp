<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수정</title>
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
<h2> 회원정보 수정 </h2>
<div class="container mt-5">
    <form action="/member/update" method="post" name="updateForm" class="needs-validation" novalidate>
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly>
        </div>
        <div class="mb-3">
            <label for="memberEmail" class="form-label">이메일:</label>
            <input type="text" class="form-control" id="memberEmail" name="memberEmail" value="${member.memberEmail}" readonly>
        </div>
        <div class="mb-3">
            <label for="memberPassword" class="form-label">비밀번호:</label>
            <input type="password" class="form-control" id="memberPassword" name="memberPassword">
        </div>
        <div class="mb-3">
            <label for="memberName" class="form-label">이름:</label>
            <input type="text" class="form-control" id="memberName" name="memberName" value="${member.memberName}" readonly>
        </div>
        <div class="mb-3">
            <label for="memberAge" class="form-label">나이:</label>
            <input type="text" class="form-control" id="memberAge" name="memberAge" value="${member.memberAge}">
        </div>
        <div class="mb-3">
            <label for="memberMobile" class="form-label">핸드폰번호:</label>
            <input type="text" class="form-control" id="memberMobile" name="memberMobile" value="${member.memberMobile}">
        </div>
        <button type="button" class="btn btn-primary" onclick="update()">수정</button>
    </form>
</div>

<script>
    const update = () => {
        const passwordDB = '${member.memberPassword}';
        const password = document.getElementById("memberPassword").value;
        if (passwordDB == password) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다");
        }
    }
</script>


</body>
</html>