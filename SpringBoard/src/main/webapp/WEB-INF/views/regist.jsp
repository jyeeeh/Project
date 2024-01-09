<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 화면</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
            crossorigin="anonymous"></script>
    <style>
        h2 {
            text-align: center;
        }
    </style>
</head>
<body class="bg-light">
<h2> 회원가입 화면 </h2>
<div class="container mt-5">
    <form action="/member/regist" method="post">
        <div class="mb-3">
            <label for="memberEmail" class="form-label">이메일:</label>
            <input type="text" class="form-control" name="memberEmail" id="memberEmail" placeholder="이메일" onblur="emailCheck()">
            <p id="check-result"></p>
        </div>
        <div class="mb-3">
            <label for="memberPassword" class="form-label">비밀번호:</label>
            <input type="text" class="form-control" name="memberPassword" placeholder="비밀번호">
        </div>
        <div class="mb-3">
            <label for="memberName" class="form-label">이름:</label>
            <input type="text" class="form-control" name="memberName" placeholder="이름">
        </div>
        <div class="mb-3">
            <label for="memberAge" class="form-label">나이:</label>
            <input type="text" class="form-control" name="memberAge" placeholder="나이">
        </div>
        <div class="mb-3">
            <label for="memberMobile" class="form-label">전화번호:</label>
            <input type="text" class="form-control" name="memberMobile" placeholder="전화번호">
        </div>
        <input type="submit" class="btn btn-primary" value="회원가입">
    </form>
</div>

<script>
    const emailCheck = () => {
        const email = document.getElementById("memberEmail").value;
        const checkResult = document.getElementById("check-result");

        $.ajax({
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function(res) {
                if (res == "ok") {
                    checkResult.style.color = "green";
                    checkResult.innerHTML = "사용가능한 이메일";
                } else {
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "이미 사용중인 이메일";
                }
            },
            error: function(err) {
                console.log("에러발생", err);
            }
        });
    }
</script>
</body>
</html>