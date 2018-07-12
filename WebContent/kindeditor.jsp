<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<textarea id="editor_id" name="content" style="width:700px;height:300px;">

</textarea>

</body>
</html>