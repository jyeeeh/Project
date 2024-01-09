<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
<h2> 게시물 수정 </h2>
<div class="container mt-5">
    <form action="/board/update" method="post" name="updateForm" class="mb-3">
        <input type="hidden" name="id" value="${board.id}" readonly><br>
        <input type="text" class="form-control" name="boardWriter" value="${board.boardWriter}" readonly><br>
        <input type="password" class="form-control" name="boardPass" id="boardPass" placeholder="비밀번호"><br>
        <input type="text" class="form-control" name="boardTitle" value="${board.boardTitle}"><br>
        <textarea class="form-control" name="boardContents" cols="30" rows="10">${board.boardContents}</textarea><br>
        <button type="button" class="btn btn-primary" onclick="updateReqFn()">수정</button>
    </form>
</div>

<script>
    const updateReqFn = () => {
        const passInput = document.getElementById("boardPass").value;
        const passDB = '${board.boardPass}';
        if (passInput == passDB) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다");
        }
    }
</script>

</body>
</html>