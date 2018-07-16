<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String id=request.getParameter("id");
%>
<html>
	<head>
		<title>新闻列表</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
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
							<a href="#">新闻列表</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						新闻:
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								新闻ID
							</td>
							<td>
								新闻标题
							</td>
							<td>
								新闻内容
							</td>
							<td>
								新闻作者
							</td>
							<td>
								新闻操作
							</td>
						</tr>
						<s:iterator id="news" status="st" value="newsList">
						<tr class="row1">
						<td>
						<s:property value="#news.id" />
						</td>
						<td>
						<s:property value="#news.title" />
						</td>
						<td>
						<s:property value="#news.content" escape="false"/>
						</td>
						<td>
						<s:property value="#news.author" />
						</td>
						<td>
						<s:a href="commentlist.jsp?id=%{#news.id}"> 新闻查看</s:a>
						<s:a href="addcomment.jsp?id=%{#news.id}"> 添加评论</s:a>
						<s:a href="changenews.jsp?id=%{#news.id}"> 修改新闻</s:a>
						<s:a href="news_deleteNews?news.id=%{#news.id}"> 删除新闻</s:a>
						</td>
						</tr>
						</s:iterator>
					</table>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				<a href="addnews.jsp">添加新闻</a>
				nullguo@gmail.com 
				</div>
			</div>
		</div>
	</body>
</html>
