<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-11
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        table {
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="component/header.jsp" %>
<%@include file="component/nav.jsp" %>
<div class="container">
    <div id="board-list">
        <table class="table table-bordered">
            <tr>
                <td>id</td>
                <td>boardWriter</td>
                <td>boardPass</td>
                <td>boardTitle</td>
                <td>boardContents</td>
                <td>조회</td>
                <td>삭제</td>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td>${board.boardWriter}</td>
                    <td>${board.boardPass}</td>
                    <td>${board.boardTitle}</td>
                    <td>${board.boardContents}</td>
                    <td>
                        <button class="btn btn-info" onclick="detail_fn('${board.id}')">조회</button>
                        <a href="/board?id=${board.id}">조회</a>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delete_fn('${board.id}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<%@include file="component/footer.jsp" %>
</body>
<script>
    const detail_fn = (id) => {
        location.href = "/board?id=" + id;
    }

    const delete_fn = (id) => {
        location.href = "/delete?id=" + id;
    }
</script>
</html>


















