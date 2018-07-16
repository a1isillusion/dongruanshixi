<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String id=request.getParameter("id");
%>

<html>
	<head>
		<title>修改新闻</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
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
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								2018/7/16
								<br />
							</p>
						</div>
						<div id="topheader">
							<h1 id="title">
								<a href="#">修改新闻</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						修改新闻:
					</h1>
					<form action="news_changeNews" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									title:
								</td>
								<td valign="middle" align="left">
								    <input type="hidden" name="news.id" value=<%=id %>><br>
									<input type="text" name="news.title">
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									content:
								</td>
								<td valign="middle" align="left">
									<textarea id="editor_id" name="news.content" style="width:700px;height:300px;"></textarea>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									author:
								</td>
								<td valign="middle" align="left">
									<input type="text" name="news.author">
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="确认修改" />
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					nullguo@gmail.com
				</div>
			</div>
		</div>
	</body>
</html>
