<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Board regist</title>
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
<h2> 게시물 등록 </h2>
<div class="container mt-5">
    <form action="/board/regist" method="post" class="mb-3">
        <div class="mb-3">
            <input type="text" class="form-control" name="boardWriter" placeholder="작성자">
        </div>
        <div class="mb-3">
            <input type="password" class="form-control" name="boardPass" placeholder="비밀번호">
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" name="boardTitle" placeholder="제목">
        </div>
        <div class="mb-3">
            <textarea class="form-control" name="boardContents" cols="30" rows="10" placeholder="내용을 입력하세요"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>

</body>
</html>