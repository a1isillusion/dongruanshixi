<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<s:iterator id="news" status="st" value="newsList">
新闻编号：<s:property value="#news.id" />
<li>
title:<s:property value="#news.title" />
</li>
<li>
content:<s:property value="#news.content" />
</li>
<li>
author:<s:property value="#news.author" />
</li>
</s:iterator>
</ul>
</body>
</html>