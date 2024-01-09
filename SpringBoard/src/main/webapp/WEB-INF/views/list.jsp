<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원목록리스트</title>
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
<h2> 회원목록리스트 </h2>
<div class="container mt-5">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">이메일</th>
            <th scope="col">비밀번호</th>
            <th scope="col">이름</th>
            <th scope="col">나이</th>
            <th scope="col">핸드폰번호</th>
            <th scope="col">조회</th>
            <th scope="col">삭제</th>
        </tr>
        </thead>
        <tbody>
        <!--email이나 조회버튼 누르면 상세조회로 이동-->
        <!--Controller에 findMemberList 에서 attributeName을 "memberList"로 받아옴-->
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>
                    <a href="/member?id=${member.id}">${member.memberEmail}</a>
                </td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberAge}</td>
                <td>${member.memberMobile}</td>
                <td>
                    <a href="/member?id=${member.id}" class="btn btn-primary btn-sm">조회</a>
                </td>
                <td>
                    <button class="btn btn-outline-danger btn-sm" onclick="deleteMember('${member.id}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script>
    const deleteMember = (id) => {
        console.log(id);
        location.href = "/member/delete?id=" + id;
    }
</script>

</body>
</html>