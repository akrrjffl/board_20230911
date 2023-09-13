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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <style>
        #section {
            margin: auto;
        }
    </style>
</head>
<body>
<div id="section">
    <form action="/board/save" method="post"></form>
    <input type="text" name="boardWriter" placeholder="작성자"> <br>
    <input type="text" name="boardPass" placeholder="글 비밀번호"> <br>
    <input type="text" name="boardTitle" placeholder="제목"> <br>
    <textarea name="boardContents" cols="30" rows="10"></textarea>  <br>
    <input type="submit" value="글 작성">
</div>
</body>
</html>
