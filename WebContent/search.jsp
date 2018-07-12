<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title> 
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("#search").change(function(){
	$("#newslist").html("")
	if(this.value!=""){
    $.ajax({
            url: "search_search",
            type: "POST",
            datatype:"JSON",
            data: {param:this.value},
            success: function (data) {
            	$.each(data.newsList, function (i, item) {  
            		var html="<p>author:"+item.author+";content:"+item.content+"</p><br>"
            		$("#newslist").append(html)
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
</head>
<body>
<input id="search" type="text" > 
<div id="newslist">
</div>
</body>
</html>