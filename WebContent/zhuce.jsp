<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<form action="user_zhuce" method="post">
username:<input type="text" name="user.username">
password:<input type="text" name="user.password">
<input type="submit" value="tijiao">
</form>
</body>
</html> -->

<html>
	<head>
		<title>注册</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
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
								<a href="#">注册</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						注册:
					</h1>
					<form action="user_zhuce" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									用户:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="user.username" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									密码:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="user.password" />
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="注册" />
						
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