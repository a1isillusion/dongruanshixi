<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
<title>新闻搜索</title> 
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#search").change(function(){
	$(".table").html("<tr class=\"table_header\">\n" +
            "    <td>\n" +
            "        新闻ID\n" +
            "    </td>\n" +
            "    <td>\n" +
            "        新闻标题\n" +
            "    </td>\n" +
            "    <td>\n" +
            "        新闻内容\n" +
            "    </td>\n" +
            "    <td>\n" +
            "        新闻作者\n" +
            "    </td>\n" +
            "</tr>")
	if(this.value!=""){
    $.ajax({
            url: "search_search",
            type: "POST",
            datatype:"JSON",
            data: {param:this.value},
            success: function (data) {
            	$.each(data.newsList, function (i, item) {  
                    var tablehtml="<tr class=\"row1\">\n" +
                    "    <td>\n" +
                    "        "+item.id+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.title+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.content+"\n" +
                    "    </td>\n" +
                    "    <td>\n" +
                    "        "+item.author+"\n" +
                    "    </td>\n" +
                    "</tr>"
            		$(".table").append(tablehtml)
                });  
            },
            error: function () {
                alert("提交失败！");
            }
        });
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
						新闻搜索:<input id="search" type="text" > 
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