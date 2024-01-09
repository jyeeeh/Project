<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상세보기</title>
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
<h2> 게시물 상세보기 </h2>
<div class="container mt-5">
    <table class="table">
        <tr>
            <th scope="col">작성자</th>
            <td>${board.boardWriter}</td>
        </tr>
        <tr>
            <th scope="col">작성일</th>
            <td>${board.boardCreatedTime}</td>
        </tr>
        <tr>
            <th scope="col">조회수</th>
            <td>${board.boardHits}</td>
        </tr>
        <tr>
            <th scope="col">제목</th>
            <td>${board.boardTitle}</td>
        </tr>
        <tr>
            <th scope="col">내용</th>
            <td>${board.boardContents}</td>
        </tr>
    </table>
    <button onclick="listFn()" class="btn btn-outline-primary">목록</button>
    <button onclick="updateFn()" class="btn btn-outline-success">수정</button>
    <button onclick="deleteFn()" class="btn btn-outline-danger">삭제</button>
</div>

<script>
    const listFn = () => {
        location.href = "/board/";
    }

    const updateFn = () => {
        const id = '${board.id}';
        location.href = "/board/update?id=" + id;
    }

    const deleteFn = () => {
        const id = '${board.id}';
        location.href = "/board/delete?id=" + id;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-zEnveEFaAzlIh8I6+OGhqOOnYZi9TKy7MnGa94vPwwWhGozC6UJynWrWzL0cHKMU"
        crossorigin="anonymous"></script>

</body>
</html>