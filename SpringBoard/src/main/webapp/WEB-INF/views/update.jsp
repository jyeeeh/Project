<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수정</title>
</head>
<body>
    <form action="/member/update" method="post" name="updateForm">
        id:       <input type="text" name="id"           value="${member.id}"         readonly><br>
        email:    <input type="text" name="memberEmail"  value="${member.memberEmail}"readonly><br>
        password: <input type="text" name="memberPassword" id="memberPassword"><br>
        name:     <input type="text" name="memberName"   value="${member.memberName}" readonly><br>
        age:      <input type="text" name="memberAge"    value="${member.memberAge}"><br>
        mobile:   <input type="text" name="memberMobile" value="${member.memberMobile}">
        <input type="button" value="수정" onclick=
                "update()">
    </form>

</body>
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
</html>
