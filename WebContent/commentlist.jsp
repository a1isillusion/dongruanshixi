<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String id=request.getParameter("id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻评论</title>
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
	 var reg = new RegExp("(^|&)"+"id"+"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
     var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    $.ajax({
            url: "news_getNewsById?news.id="+r[2],
            type: "POST",
            datatype:"JSON",
            data: {},
            success: function (data) {
            	$.each(data.news.comments, function (i, item) {  
                    var tablehtml="<tr class=\"row1\">\n" +
                    "    <td>\n" +
                    "        "+item.id+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.author+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.content+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.date+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        <a href=\"comment_deleteComment?id="+item.id+"\">删除评论</a>\n" +
                    "    </td>\n" +
                    "</tr>"
            		$(".table").append(tablehtml)
                });  
            },
            error: function () {
                alert("提交失败！");
            }
        });

});
</script>
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
							<a href="#">新闻评论</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						新闻评论
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								评论ID
							</td>
							<td>
								评论作者
							</td>
							<td>
								评论内容
							</td>
							<td>
								评论时间
							</td>
							<td>
							             评论操作
							</td>
						</tr>
					</table>
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