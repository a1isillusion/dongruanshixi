<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js/kindeditor/themes/default/default.css"/>
<script charset="utf-8" src="js/kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="js/kindeditor/lang/zh-CN.js"></script>
<script>
        KindEditor.ready(function(K) {
                window.editor = K.create('#editor_id');
        });
</script>

</head>
<body>
<form action="comment_addComment" method="post">
<input type="hidden" name="comment.news" value=<%=id %>>
author:<input type="text" name="comment.author"><br>
content:<textarea id="editor_id" name="comment.content" style="width:700px;height:300px;"></textarea><br>
date:<input type="date" name="comment.date"><br>
<input type="submit" value="tijiao">
</form>
</body>
</html>